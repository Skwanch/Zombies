Overview of algorthms used:
(Open in fullscreen for convenient reading experience)

Printing the maze: 
- The maze .ascii array is stored in a register $s0. 
- A loop is used to iterate through the array (by adding 1 to $s0), and whenever 'x' is encountered (the hex value being 0x78), a yellow LED is printed to the display simulator.
- Two registers ($a0 and $a1) are allocated to store the x and y coordinates, respectively.
- Since the array is run through line by line, the x coordinate is constantly incremented until it reaches the value 63.
- An x value of 63 marks the end of the line; as a result an "incrementY" method is used.
- The method first checks if the array is finished printing, by checking if y coordinate == 63 once x coordinate == 63. If so it proceeds to a loop that waits for player to press 'b'
- If not then it increments the y coordinate, resets the x coordinate address to zero, and moves to the next array element($s0 plus 1) to read the next line.
- A modified setLED method (renamed mazeLED) prints the maze, and includes lines that also increment the x coordinate and the maze array address, as well as go to "incrementY" if x == 63.

Waiting for 'b':
- A simple polling loop is implemented to wait for user to press 'b.'
- If key is pressed and loaded word is 0x42 (hex value for b), go to "initialize" method
- Otherwise loop back and wait for key press 

Drawing zombies and player:
(Zombies)
- Utilizes the MIPS random number generator (with upper bound), syscall 42.
- syscall 42 is called twice for each zombie (one to get random x coordinate, one to get random y coordinate)
- Since $a1 stores the (exclusive) upper bound, each $a1 varies between zombies.
- For example, the zombie in quadrant 1 expects an x coordinate less than 32, and a y coordinate less than 32. 
- Therefore, prior to invoking syscall 42 the upper bound of 32 is loaded into $a1.
- getLED is called to ensure that zombie does not spawn into a wall(yellow) or at the player's position(green)
- getLED returns LED color value in $v0: $v0 != 2(yellow) && $v0 != 3(green) otherwise loop back and get new random coordinates
- Once valid coordinates are obtained they are processed in 4 directional loops (up, down, left, right) to check if coordinates are within a box (squares on maze map)
- Each loop runs either once or twice (once if wall is right next to coordinate, twice if wall is two moves away), since each box is 4x4.
- Once coordinates are found to not be in a box (most loops have run twice without finding a wall) then zombie is printed on display. Otherwise, return to get new coordinates. 
(Player)
- x and y are initialized to (0,0) and sent to setLED so that player is printed at top left
- Color is given value 3, which corresponds to green
- A saved register ($s3) is initialized to 0. This will serve as the move counter

Main:
- The main game component of the program has 4 parts: 
	1. A getTime method that uses syscall 30 to retrieve system time, which is stored in a temporary register
	2. A line that checks if player has won the game (if x coordinate == 63, jump to gameWon)
		- gameWon is a method that checks if y coordinate == 63; if so, print out victory messages and retrieve # of moves from $s3, the move counter
		- if y != 63, return to mainLoop
	3. A mainLoop method that is a polling loop which waits for user to press navigation keys (either WASD or arrays on display)
	4. checkTime method that calls syscall 30 again, and subtracts the previous time in the temporary register from the new time, stored in $a0.
		- If difference > 500 ms, go to moveZombies method (which moves all 4 zombies)
		- Otherwise jump back to mainLoop

Player Movement:
- mainLoop processes key press into a register,
- register is beq'd to 4 values:
	1. 0xe2 = left button
	2. 0xe3 = right button
	3. 0xe0 = up button
	4. 0xe1 = down button
- Once register is found to match one, program goes to corresponding label (lKey, rKey, uKey, or dKey)
- Each label modifies the coordinates accordingly (for instance, lKey will subtract 1 from register containing x coordinate to move left)
- getLED is called to check if wall is present(does $v0 == 2?), if so then revert changed coordinates back to original values and move the zombies. 
- getLEd is also called to check if move results in player being captured by zombie (does $v0 == 1?); if so go to gameLost method, which prints out "you lost" message and ends program
- If move is valid (no wall found and not captured) at new coordinates turn off LED at previous position (by reverting coordinate to previous value and setting LED) 
- New coordinates are stored at x and y registers.
- Finally increment move counter and move zombies

Zombie Movement:
- Zombies move either when 500ms has passed or right after player moves
- First a checkPlayer method is present for each zombie to see if player is in same quadrant
- If so chase player (more details in "Chasing")
- If not then move zombie randomly
- Random movement utilizes the zombie array, z_Array.
- z_Array stores 12 elements, broken down like so:
	[0] => zombie1's x coordinate
	[1] => zombie1's y coordinate
	[2] => zombie1's current direction
	[3] => zombie2's x coordinate
	[4] => zombie2's y coordinate
	[5] => zombie2's current direction
	... etc. 
- Movement also utilizes a direction array, containing elements 0, 1, 2, and 3. 
	0 - up
	1 - left
	2 - right
	3 - down
- Current direction of all zombies is initialized to 4, a placeholder value

*** Explanation of movement process will center around zombie 1, since the other zombies are moved in a similar manner ***
- z_Array's address is loaded into a saved register (in my case $s7) 
- First, zombie 1's direction, located at 2($s7), is loaded into a temporary register. 
- If this register is found to contain the value 4 (the placeholder), program heads to firstMove method
- In zombie 1's case, the original unedited direction array is fine since it should move up or left to pursue the player. firstMove therefore just goes to the move method (explained later)
- For other zombies, firstMove permutes the direction array thrice to jumble up all elements, then proceeds to their move methods
- If register is found to contain value other than 4, the reverse direction is calculated by subtracting that value from 3. 
- The elements are then checked against the reverse direction to ensure that the reverse direction is the last element in the array prior to permuting
- Array is permuted by sorting the first three elements randomly with syscall 42 ($a1 holds the upper bound, either 3 or 2, and $a0 is the resulting random value below the upper bound)
- Zombie 1's move method (called "move1") checks if a random direction that is valid
- Validity is tested by going through various "check" methods (checkUp, checkDown, etc.) that go through the directions to see if there are walls or if the player is captured
- If player is captured, gameLost message prints and program ends
- If wall is present, a "next1" method is called to add 1 to register containing permuted direction array, which essentially moves to the next element in the array and jumps back to move1.
- If move is valid, direction and new coordinates are stored in z_Array and zombie is moved through setLED 
- For zombie 1, z_Array[0] receives new x coordinate, z_Array[1] receives new y coordinate, z_Array[2] receives new valid direction


Chasing:
*** Explanation of chasing process will center around zombie 1, since the other zombies chase in a similar manner ***
- Aforementioned checkPlayer checks x and y coordinates of player to see if they are within quadrant
- For zombie 1, if player's x coordinate <= 31 && player's y coordinate <= 31 then proceed to chasePlayer1 method
- chasePlayer1 first determines the reverse direction (same as in movement, subtracting current direction from 3)
- Distances for all 4 direction are then calculated and stored in 4 different ; distance = (player x - zombie x)^2 + (player y - zombie y)^2
- A chooseDir method is used to find all possible orderings of 3 of the 4 directions (reverse direction is always the last) by comparing the values of their corresponding distances
- bleu instruction used to compare directions
- The direction array is shuffled, the direction with smallest distance from player is first.
- Once a specific ordered is found, with directions ordered in ascending distance from player, method jumps to "move1" (see above) to move the zombie towards the player. 


Bugs:
- Every so often, getLED encounters an address out of range error at the line "lbu $t2, 0($t0)" during runtime. By resetting the program this error goes away and the game works fine.  
- Zombie sometimes moves in opposite direction of player, but chases it for most part


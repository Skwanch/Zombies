.data

direction: .byte 0,1,2,3

z_Array: .byte 0, 0, 4, 0, 0, 4, 0, 0, 4, 0, 0, 4	#stores (x, y, current direction) for each zombie

maze:	.ascii
	 "  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",    # 0
	 "       xx      xx      xx      xx      xx      xx      xx      x",    # 1
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 2
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 3
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 4
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 5
	 "x                                                              x",    # 6
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 7
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 8
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 9
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 10
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 11
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 12
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 13
	 "x                                                              x",    # 14
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 15
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 16
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 17
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 18
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 19
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 20
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 21
	 "x                                                              x",    # 22
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 23
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 24
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 25
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 26
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 27
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 28
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 29
	 "x                                                              x",    # 30
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 32
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 32
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 33
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 34
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 35
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 36
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 37
	 "x                                                              x",    # 38
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 39
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 40
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 41
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 42
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 43
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 44
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 45
	 "x                                                              x",    # 46
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 47
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 48
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 49
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 50
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 51
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 52
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 53
	 "x                                                              x",    # 54
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 55
	 "x xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxxx xxxxxx",    # 56
	 "x      xx      xx      xx      xx      xx      xx      xx      x",    # 57
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 58
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 59
	 "x x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x xx x  x x",    # 60
	 "x xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx xx xxxx x",    # 61
	 "x                                                               ",    # 62
	 "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  "     # 63
won_1: .asciiz "Success! You won! Your score is "
won_2: .asciiz " moves."
lost: .asciiz "Sorry. You were captured."

.text
drawMaze: 
	la 	$s0, maze
	li 	$a0, 0 # x
	li 	$a1, 0 # y
	li 	$a2, 2 # $a2 = yellow
	jal loopMaze
	
loopMaze:
	 # Loops through maze ascii to find 'x'
	lbu	$t7, 0($s0)
	beq	$t7, 0x78, mazeLED 	# If 'x' is found, set LED to yellow 
	beq	$a0, 63, incrementY 	# Else if x-coordinate == 63, go to incrementY
	addi 	$a0, $a0, 1 		# Else increment x-coordinate and $s0 
	addi 	$s0, $s0, 1
	j loopMaze
	
mazeLED: 
	#$a0 is x, $a1 is y, $a2 is color
	# byte offset into display = y * 16 bytes + (x / 4)
	sll	$t0, $a1, 4	# y * 16 bytes
	srl	$t1, $a0, 2	# x / 4
	add	$t0, $t0, $t1   # byte offset into display
	li	$t2, 0xffff0008 # base address of LED display
	add	$t0, $t2, $t0   # address of byte with the LED
	# now, compute led position in the byte and the mask for it
	andi	$t1, $a0, 0x3   # remainder is led position in byte
	neg	$t1, $t1        # negate position for subtraction
	addi	$t1, $t1, 3     # bit positions in reverse order
	sll	$t1, $t1, 1     # led is 2 bits
	# compute two masks: one to clear field, one to set new color
	li	$t2, 3		
	sllv	$t2, $t2, $t1
	not	$t2, $t2        # bit mask for clearing current color
	sllv	$t1, $a2, $t1   # bit mask for setting color
	# get current LED value, set the new field, store it back to LED
	lbu	$t3, 0($t0)     # read current LED value	
	and	$t3, $t3, $t2   # clear the field for the color
	or	$t3, $t3, $t1   # set color field
	sb	$t3, 0($t0)     # update display
	beq	$a0, 63, incrementY  
	addi 	$a0, $a0, 1
	addi 	$s0, $s0, 1
	jr	$ra

incrementY: # Increments y-coordinate, resets x-coordinate to zero
	beq 	$a1, 63, bLoop	# If (x,y) == (61,63), go to bLoop
	addi	$a1, $a1, 1	# Otherwise increment y, reset x to 0 and increment maze addres
	addi	$a0, $a0, -63
	addi	$s0, $s0, 1
	j loopMaze
	
bLoop: # Loop that waits for user to start game by pressing center ('b') button
	la	$v0, 0xffff0000		# address for reading key press status
	lw	$t0, 0($v0)		# read the key press status
	andi	$t0, $t0, 1
	beq	$t0, $0, bLoop		# no key pressed
	lw	$t0, 4($v0)
	beq 	$t0, 0x42, initialize
	j bLoop

initialize: 
	la 	$s7, z_Array
	drawZombies: # Draws zombies at random coordinate in their quadrants
	
	# *Comments added for zombie 1 only, since the other zombies are drawn in the same exact way
	
		# Quadrant 1
		drawZombie1: 
			li	$a1, 32		# y upper bound 
			li 	$v0, 42
			syscall			# Obtains random y-coordinate 
			move 	$t8, $a0
			li	$a1, 32		# x upper bound 
			li 	$v0, 42
			syscall			# Obtains random x-coordinate
			move	$a1, $a0	# $a1 = random x-coordinate
			move	$a2, $t8	# $a2 = random y-coordinate
			jal 	getLED
			beq 	$v0, 2, drawZombie1	# If random (x,y) coordinate is a wall, loop back and get new random coordinates
			beq	$v0, 3, drawZombie1	# If random (x,y) coordinate is at player's position, loop back and get new random coordinates
			move	$t7, $a1		# Move x-coordinate to $t7 for use in leftLoop1 ($t7 holds original x-coordinate while $a1 gets modified)
			move	$t8, $a2		# Likewise with y-coordinate
			j leftLoop1	
		printZombie1: # Prints zombie 1 on board
			move 	$a1, $t7		# moves coordinates to argument registers
			move 	$a2, $t8
			sb	$a1, 0($s7)		# Stores zombie 1 x-coordinate at z_Array[0]
			sb	$a2, 1($s7)		# Stores zombie 1 y-coordinate at z_Array[1]
			li	$a3, 1			# color = red
			jal setLED
			
		# Quadrant 2	
		drawZombie2: 
			li	$a1, 32			# y upper bound 
			li 	$v0, 42
			syscall		
			move 	$t8, $a0
			li	$a1, 32			# x upper bound 
			li 	$v0, 42
			syscall
			addi	$a0, $a0, 32
			move	$a1, $a0
			move	$a2, $t8
			jal 	getLED
			beq 	$v0, 2, drawZombie2
			beq	$v0, 3, drawZombie2
			move	$t7, $a1
			move	$t8, $a2
			j leftLoop2	
		printZombie2:
			move 	$a1, $t7
			move 	$a2, $t8
			sb	$a1, 3($s7)
			sb	$a2, 4($s7)
			li	$a3, 1 # color = red
			jal setLED
			
		# Quadrant 3
		drawZombie3:
			li	$a1, 32	# y upper bound 
			li 	$v0, 42
			syscall		
			addi 	$a0, $a0, 32
			move 	$t8, $a0
			li	$a1, 32	# x upper bound 
			li 	$v0, 42
			syscall
			move	$a1, $a0
			move	$a2, $t8
			jal 	getLED
			beq 	$v0, 2, drawZombie3
			beq	$v0, 3, drawZombie3
			move	$t7, $a1
			j leftLoop3
		printZombie3:
			move 	$a1, $t7
			move 	$a2, $t8
			sb	$a1, 6($s7)
			sb	$a2, 7($s7)
			li	$a3, 1 # color = red
			jal setLED
			
		# Quadrant 4		
		drawZombie4:
			li	$a1, 32	# y upper bound 
			li 	$v0, 42
			syscall		
			addi	$a0, $a0, 32
			move 	$t8, $a0
			li	$a1, 32	# x upper bound 
			li 	$v0, 42
			syscall
			addi 	$a0, $a0, 32
			move	$a1, $a0
			move	$a2, $t8
			jal 	getLED
			beq 	$v0, 2, drawZombie4
			beq	$v0, 3, drawZombie4
			move	$t7, $a1
			j leftLoop4	
		printZombie4:
			move 	$a1, $t7
			move 	$a2, $t8
			sb	$a1, 9($s7)
			sb	$a2, 10($s7)
			li	$a3, 1 # color = red
			jal setLED
			j drawPlayer
				
 # Makes sure zombies do not spawn in box						
		leftLoop1: 
			addi 	$a1, $a1, -1		# Checks for wall at left
			jal getLED
			beq 	$v0, 2, prepRight1	# If wall found prepare to check right
			addi 	$t9, $t9, 1		# $t9 keeps track of number of loop iterations
			beq 	$t9, 2, prepRight1	# If loop has iterated twice prepare to check right
			j leftLoop1
		prepRight1: # Restores $a1 to original x-coordinate form $t7, $t9 reset to 0
			move 	$a1, $t7
			move 	$t9, $0
		rightLoop1: # Checks right for wall
			addi	$a1, $a1, 1
			jal getLED
			beq 	$v0, 2, prepUp1
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepUp1
			j rightLoop1
		prepUp1:
			move 	$t9, $0
		upLoop1: # Checks up for wall
			addi 	$a2, $a2, -1
			jal getLED
			beq 	$v0, 2, prepDown1
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepDown1
			j upLoop1
		prepDown1:
			move 	$a2, $t8
			move 	$t9, $0
		downLoop1: # Checks down for wall
			addi 	$a2, $a2, 1
			jal getLED
			beq 	$v0, 2, drawZombie1	# If coordinates are completely surroundeed by wall, go back to drawZombie1 and get new coordinates
			addi 	$t9, $t9, 1
			beq 	$t9, 2, printZombie1	# Zombie 1 is printed if all loops succeed, coordinates are not in a box
			j downLoop1
	
		leftLoop2: 
			addi 	$a1, $a1, -1
			jal getLED
			beq 	$v0, 2, prepRight2
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepRight2
			j leftLoop2
		prepRight2:
			move 	$a1, $t7
			move 	$t9, $0
		rightLoop2:
			addi 	$a1, $a1, 1
			jal getLED
			beq 	$v0, 2, prepUp2
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepUp2
			j rightLoop2
		prepUp2:
			move 	$t9, $0
		upLoop2: 
			addi 	$a2, $a2, -1
			jal getLED
			beq 	$v0, 2, prepDown2
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepDown2
			j upLoop2
		prepDown2:
			move 	$a2, $t8
			move 	$t9, $0
		downLoop2: 
			addi 	$a2, $a2, 1
			jal getLED
			beq 	$v0, 2, drawZombie2
			addi 	$t9, $t9, 1
			beq 	$t9, 2, printZombie2
			j downLoop2
		leftLoop3: 
			addi 	$a1, $a1, -1
			jal getLED
			beq 	$v0, 2, prepRight3
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepRight3
			j leftLoop3
		prepRight3:
			move 	$a1, $t7
			move 	$t9, $0
		rightLoop3:
			addi 	$a1, $a1, 1
			jal getLED
			beq 	$v0, 2, prepUp3
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepUp3
			j rightLoop3
		prepUp3:
			move 	$t9, $0
		upLoop3: 
			addi 	$a2, $a2, -1
			jal getLED
			beq 	$v0, 2, prepDown3
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepDown3
			j upLoop3
		prepDown3:
			move 	$a2, $t8
			move 	$t9, $0
		downLoop3: 
			addi 	$a2, $a2, 1
			jal getLED
			beq 	$v0, 2, drawZombie3
			addi 	$t9, $t9, 1
			beq 	$t9, 2, printZombie3
			j downLoop3
		
		leftLoop4: 
			addi 	$a1, $a1, -1
			jal getLED
			beq 	$v0, 2, prepRight4
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepRight4
			j leftLoop4
		prepRight4:
			move 	$a1, $t7
			move 	$t9, $0
		rightLoop4:
			addi 	$a1, $a1, 1
			jal getLED
			beq 	$v0, 2, prepUp4
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepUp4
			j rightLoop4
		prepUp4:
			move 	$t9, $0
		upLoop4: 
			addi 	$a2, $a2, -1
			jal getLED
			beq 	$v0, 2, prepDown4
			addi 	$t9, $t9, 1
			beq 	$t9, 2, prepDown4
			j upLoop4
		prepDown4:
			move 	$a2, $t8
			move 	$t9, $0
		downLoop4: 
			addi 	$a2, $a2, 1
			jal getLED
			beq 	$v0, 2, drawZombie4
			addi 	$t9, $t9, 1
			beq 	$t9, 2, printZombie4
			j downLoop4
			
	drawPlayer: # Draws player at (0,0)
		li	$s0, 0 # $s0 = x
		li 	$s1, 0 # $s1 = y
		li 	$s2, 3 # $s2 = color (green)
		li	$s3, 0 # $s3 = move counter
		move	$a1, $s0
		move	$a2, $s1
		move	$a3, $s2
		jal setLED
		
getTime:
	li 	$v0, 30
	syscall
	move	$t9, $a0	# $t9 = time_step
main:			
	beq 	$s0, 63, gameWon 		# If x == 63, check if game should end	
	mainLoop: # poll
		la 	$v0, 0xffff0000		# Address for reading key press status
		lw 	$t0, 0($v0)		# Read the key press status
		andi 	$t0, $t0, 1
		beq 	$t0, $0, checkTime	# No key pressed
		# Key pressed 
		lw 	$t0, 4($v0)		# $t0 = key value
		move	$a1, $s0		# Move x and y to argument registers $a1 and $a2, respectively
		move	$a2, $s1 
		beq 	$t0, 0xe2, lKey		# left button
		beq 	$t0, 0xe3, rKey		# right button
		beq 	$t0, 0xe0, uKey		# up button
		beq 	$t0, 0xe1, dKey		# down button
	checkTime:
		li	$v0, 30
		syscall		
		sub	$t8, $a0, $t9		# $t8 = current_time - time_step
		bge	$t8, 500, moveZombies	# Move zombies if 500 ms have passed
		j 	mainLoop		# If not then jump back to main
		
	moveZombies: # Zombie 1 has most detailed comments, since other zombies move in similar manner
	# 0 - Up
 	# 1 - Left 
 	# 2 - Right 
 	# 3 - Down
 		checkPlayer1: # Checks if player is in same quadrant
			ble	$s0, 31, check_y1 	# first checks if player's x coordinate is within quadrant, then goes to check y coordinate
			j moveZombie1 			# if not then move randomly
		check_y1: # Checks if player's y coordinate is within quadrant
			ble 	$s1, 31, chasePlayer1 	# if so then chase the player
			
		moveZombie1:
			la	$s6, direction	# $s6 contains direction array
		# $s7 = z_Array (contains x, y, and direction of each zombie)
			lbu	$t9, 2($s7)		# $t9 = current direction of zombie 1
			beq	$t9, 4, firstMove1	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t7, $t8, $t9		# $t7 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t7, replace0_0	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t7, replace1_0	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t7, replace2_0	# If direction of third element is equal to reverse, go to replace2
			j permute1
			
			replace0_0: # swaps direction[0] and direction[3] 
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 0($s6)
				j permute1
			replace1_0: # swaps direction[1] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 1($s6)
				j permute1
			replace2_0: # swaps direction[2] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 2($s6)
				j permute1
		move1:
			lbu	$t7, 0($s6)			# $t7 = first element of direction array
			lbu	$a1, 0($s7)			# $a1 = x-coordinate of zombie 1
			lbu	$a2, 1($s7)			# $a2 = y-coordinate of zombie 1
			checkUp1:
				bne	$t7, 0, checkLeft1	
				addi	$a2, $a2, -1		# Subtracts 1 from y-coordinate to move up
				blt	$a2, 0, next1		# Checks if quadrant is exited, if so then move on to next element in direction array and try another direction 	
				jal getLED
				beq 	$v0, 2, next1 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 2($s7)		# Stores direction into zombie 1's direction (located in z_Array[2])
				sb	$a2, 1($s7)		# Stores new y-coordinate into zombie 1's y-coordinate (located in z_Array[1])
				li 	$a3, 1			# Color = red
				jal setLED			# Draws zombie at new position
				addi	$a2, $a2, 1		
				li	$a3, 0
				jal setLED			# Turns off LED at previous position
				j checkPlayer2			# moves next zombie
			checkLeft1:
				bne	$t7, 1, checkRight1
				addi	$a1, $a1, -1	
				blt	$a1, 0, next1		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next1 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 2($s7)
				sb	$a1, 0($s7)		# Stores new x-coordinate into zombie 1's x-coordinate (located in z_Array[0])
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, 1
				li	$a3, 0
				jal setLED			
				j checkPlayer2
			checkRight1:
				bne	$t7, 2, checkDown1
				addi	$a1, $a1, 1	
				bgt	$a1, 31, next1		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next1 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 2($s7)
				sb	$a1, 0($s7)
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, -1
				li	$a3, 0
				jal setLED
				j checkPlayer2
			checkDown1:
				addi	$a2, $a2, 1	
				bgt	$a2, 31, next1 		# Checks if quadrant is exited
				jal getLED
				beq 	$v0, 2, next1 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 2($s7)
				sb	$a2, 1($s7)
				li 	$a3, 1
				jal setLED
				addi	$a2, $a2, -1
				li	$a3, 0
				jal setLED
				j checkPlayer2
		
		firstMove1: 
		# since zombie 1 and player start out in same quadrant, zombie 1 can start by moving either up or left (getting closer to player)
		# since the unchanged direction array starts with up and left, it can be used as is.	
			j move1
			
		permute1: # Permutes direction array 
		# Follows pseudocode from instructions
		
		# for(int i = 3)
			li	$a1, 3
			li	$v0, 42
			syscall
			la 	$s6, direction
			add	$s6, $s6, $a0		# Adds offset (random number)
			lbu	$t8, 0($s6)		# $t8 = element at random number address (direction[r]) 
			sub	$s6, $s6, $a0		# Restores direction array to previous state 
			lbu	$t9, 2($s6)		# $t9 = third element of direction array (direction[i-1])
			sb	$t8, 2($s6)		# Store element of direction[r] at direction[i-1]
			add	$s6, $s6, $a0		
			sb	$t9, 0($s6)		# Store element of direction[i-1] at direction[r]
		# for{int i = 2)
			li	$a1, 2
			li	$v0, 42
			syscall		
			la 	$s6, direction
			add	$s6, $s6, $a0
			lbu	$t8, 0($s6)
			sub	$s6, $s6, $a0
			lbu	$t9, 1($s6)
			sb	$t8, 1($s6)
			add	$s6, $s6, $a0
			sb	$t9, 0($s6)
			sub	$s6, $s6, $a0 
			j move1
			
		next1: # Goes to next element in direction array
			addi 	$s6, $s6, 1
			j move1			
			
		chasePlayer1:
		# Player's x and y are at $s0 and $s1, respectively
			la	$s6, direction
			lbu	$t9, 2($s7)		# $t9 = current direction of zombie 1
			beq	$t9, 4, firstMove1	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t8, $t8, $t9		# $t8 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t8, replace0_1	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t8, replace1_1	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t8, replace2_1	# If direction of third element is equal to reverse, go to replace2
			j if_Up1
			
				replace0_1: # swaps direction[0] and direction[3] 
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 0($s6)
					j if_Up1
				replace1_1: # swaps direction[1] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 1($s6)
					j if_Up1
				replace2_1: # swaps direction[2] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 2($s6)
					j if_Up1
			# direction formulas
			if_Up1:
				la	$s7, z_Array
				lbu	$a1, 0($s7)	# zombie 1 x-coordinate
				lbu	$a2, 1($s7) 	# zombie 1 y-coordinate
				addi	$a2, $a2, -1
				sub	$t2, $s0, $a1	# $t2 = x(player) - x(zombie1)
				sub	$t3, $s1, $a2	# $t3 = y(player) - y(zombie1)
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t4, $t2, $t3	# $t4 = distance from player if zombie1 moves up
			if_Left1:
				lbu	$a1, 0($s7)	# zombie 1 x-coordinate
				lbu	$a2, 1($s7) 	# zombie 1 y-coordinate
				addi	$a1, $a1, -1
				sub	$t2, $s0, $a1	# $t2 = x(player) - x(zombie1)
				sub	$t3, $s1, $a2	# $t3 = y(player) - y(zombie1)
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t5, $t2, $t3	# $t5 = distance from player if zombie1 moves left
			if_Right1:
				lbu	$a1, 0($s7)	# zombie 1 x-coordinate
				lbu	$a2, 1($s7) 	# zombie 1 y-coordinate
				addi	$a1, $a1, 1
				sub	$t2, $s0, $a1	# $t2 = x(player) - x(zombie1)
				sub	$t3, $s1, $a2	# $t3 = y(player) - y(zombie1)
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t6, $t2, $t3	# $t6 = distance from player if zombie1 moves right
			if_Down1:
				lbu	$a1, 0($s7)	# zombie 1 x-coordinate
				lbu	$a2, 1($s7) 	# zombie 1 y-coordinate
				addi	$a2, $a2, 1
				sub	$t2, $s0, $a1	# $t2 = x(player) - x(zombie1)
				sub	$t3, $s1, $a2	# $t3 = y(player) - y(zombie1)
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t7, $t2, $t3	# $t7 = distance from player if zombie1 moves down
				j chooseDir1
				
			chooseDir1: # picks direction based on shortest distance
				# Effectively runs through all possible combinations of first three directions depending on value of reverse direction
				# Compares distances, orders corresponding directions from least to greatest 
				# $t8 = reverse
				la 	$s6, direction
				lbu	$t8, 3($s6)
				beq	$t8, 0, sort1_1
				beq	$t8, 1, sort2_1
				beq	$t8, 2, sort3_1
				beq	$t8, 3, sort4_1
				# $t4 = up distance, $t5 = left distance, $t6 = right distance, $t7 = down distance
				
				sort1_1: # $t4 will always be last option
					
					bleu	$t6, $t7, firstSort1_1
					bleu	$t5, $t6, firstSort2_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move1
				sort2_1: # t5 will always be last option
				
					bleu	$t6, $t7, firstSort3_1
					bleu	$t4, $t6, firstSort4_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move1
					
				sort3_1: # $t6 will always be last option
					
					bleu	$t5, $t7, firstSort5_1
					bleu	$t4, $t5, firstSort6_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move1
				sort4_1: # $t7 will always be last option
					
					bleu	$t5, $t6, firstSort7_1
					bleu	$t4, $t5, firstSort8_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move1	
					
				firstSort1_1:
					bleu	$t6, $t5, secondSort1_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move1
					
				firstSort2_1:
					bleu	$t7, $t5, secondSort2_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move1	
					
				firstSort3_1:
					bleu	$t4, $t7, secondSort3_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move1
				
				firstSort4_1:
					bleu	$t7, $t4, secondSort4_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move1
					
				firstSort5_1:
					bleu	$t5, $t4, secondSort5_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move1
					
				firstSort6_1:
					bleu	$t7, $t4, secondSort6_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move1
					
				firstSort7_1:
					bleu	$t4, $t6, secondSort7_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move1
				
				firstSort8_1:
					bleu	$t6, $t4, secondSort8_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move1
				secondSort1_1:
					bleu	$t7, $t5, thirdSort1_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move1
					
				secondSort2_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t4, 3($s6)
					j move1
					
				secondSort3_1:
					bleu	$t6, $t4, thirdSort2_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move1
					
				secondSort4_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move1
					
				secondSort5_1:
					bleu	$t7, $t4, thirdSort3_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move1
					
				secondSort6_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move1
					
				secondSort7_1:
					bleu	$t5, $t4, thirdSort4_1
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move1
				
				secondSort8_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move1
					
				thirdSort1_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move1
					
				thirdSort2_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move1
					
				thirdSort3_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move1
					
				thirdSort4_1:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move1
		
		
		checkPlayer2: # Checks if player is in same quadrant
			bge	$s0, 32, check_y2 	# first checks if player's x coordinate is within quadrant, then goes to check y coordinate
			j moveZombie2 			# if not then move randomly
		check_y2: # Checks if player's y coordinate is within quadrant
			ble 	$s1, 31, chasePlayer2 	# if so then chase the player
			
		moveZombie2:
			la	$s6, direction	# $s6 contains direction array
		# $s7 = z_Array (contains x, y, and direction of each zombie)
			lbu	$t9, 5($s7)		# $t9 = current direction of zombie 2
			beq	$t9, 4, firstMove2	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t7, $t8, $t9		# $t7 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t7, replace0_2	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t7, replace1_2	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t7, replace2_2	# If direction of third element is equal to reverse, go to replace2
			j permute2
			
			replace0_2: # swaps direction[0] and direction[3] 
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 0($s6)
				j permute2
			replace1_2: # swaps direction[1] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 1($s6)
				j permute2
			replace2_2: # swaps direction[2] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 2($s6)
				j permute2
		move2:
			lbu	$t7, 0($s6)			# $t7 = first element of direction array
			lbu	$a1, 3($s7)			# $a1 = x-coordinate of zombie 1
			lbu	$a2, 4($s7)			# $a2 = y-coordinate of zombie 1
			checkUp2:
				bne	$t7, 0, checkLeft2	
				addi	$a2, $a2, -1		# Subtracts 1 from y-coordinate to move up
				blt	$a2, 0, next2		# Checks if quadrant is exited, if so then move on to next element in direction array and try another direction 	
				jal getLED
				beq 	$v0, 2, next2 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 5($s7)		# Stores direction into zombie 1's direction (located in z_Array[2])
				sb	$a2, 4($s7)		# Stores new y-coordinate into zombie 1's y-coordinate (located in z_Array[1])
				li 	$a3, 1			# Color = red
				jal setLED			# Draws zombie at new position
				addi	$a2, $a2, 1		
				li	$a3, 0
				jal setLED			# Turns off LED at previous position
				j checkPlayer3			# moves next zombie
			checkLeft2:
				bne	$t7, 1, checkRight2
				addi	$a1, $a1, -1	
				blt	$a1, 32, next2		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next2 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 5($s7)
				sb	$a1, 3($s7)		# Stores new x-coordinate into zombie 1's x-coordinate (located in z_Array[0])
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, 1
				li	$a3, 0
				jal setLED
				j checkPlayer3
			checkRight2:
				bne	$t7, 2, checkDown2
				addi	$a1, $a1, 1	
				bgt	$a1, 63, next2		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next2 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 5($s7)
				sb	$a1, 3($s7)
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, -1
				li	$a3, 0
				jal setLED
				j checkPlayer3
			checkDown2:
				addi	$a2, $a2, 1	
				bgt	$a2, 31, next2 		# Checks if quadrant is exited
				jal getLED
				beq 	$v0, 2, next2 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 5($s7)
				sb	$a2, 4($s7)
				li 	$a3, 1
				jal setLED
				addi	$a2, $a2, -1
				li	$a3, 0
				jal setLED
				j checkPlayer3
			
			firstMove2: # permutes array 3 times to obtain random first direction at start of game
				li	$a1, 4
				li	$v0, 42
				syscall
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 3($s6)
				sb	$t8, 3($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				
				li	$a1, 3
				li	$v0, 42
				syscall		
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 2($s6)
				sb	$t8, 2($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				
				li	$a1, 2
				li	$v0, 42
				syscall		
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 1($s6)
				sb	$t8, 1($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				j move2
			
		permute2: # Permutes direction array 
		# Follows pseudocode from instructions
		
		# for(int i = 3)
			li	$a1, 3
			li	$v0, 42
			syscall
			la 	$s6, direction
			add	$s6, $s6, $a0		# Adds offset (random number)
			lbu	$t8, 0($s6)		# $t8 = element at random number address (direction[r]) 
			sub	$s6, $s6, $a0		# Restores direction array to previous state 
			lbu	$t9, 2($s6)		# $t9 = third element of direction array (direction[i-1])
			sb	$t8, 2($s6)		# Store element of direction[r] at direction[i-1]
			add	$s6, $s6, $a0		
			sb	$t9, 0($s6)		# Store element of direction[i-1] at direction[r]
		# for{int i = 2)
			li	$a1, 2
			li	$v0, 42
			syscall		
			la 	$s6, direction
			add	$s6, $s6, $a0
			lbu	$t8, 0($s6)
			sub	$s6, $s6, $a0
			lbu	$t9, 1($s6)
			sb	$t8, 1($s6)
			add	$s6, $s6, $a0
			sb	$t9, 0($s6)
			sub	$s6, $s6, $a0 #
			j move2
			
		next2: # Goes to next element in direction array
			addi 	$s6, $s6, 1
			j move2			
			
		chasePlayer2:
		# Player's x and y are at $s0 and $s1, respectively
			la	$s6, direction
			lbu	$t9, 5($s7)		# $t9 = current direction of zombie 2
			beq	$t9, 4, firstMove2	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t8, $t8, $t9		# $t8 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t8, replace0_3	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t8, replace1_3	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t8, replace2_3	# If direction of third element is equal to reverse, go to replace2
			j if_Up2
			
				replace0_3: # swaps direction[0] and direction[3] 
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 0($s6)
					j if_Up2
				replace1_3: # swaps direction[1] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 1($s6)
					j if_Up2
				replace2_3: # swaps direction[2] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 2($s6)
					j if_Up2
			# direction formula
			if_Up2:
				lbu	$a1, 3($s7)	# zombie 2 x-coordinate
				lbu	$a2, 4($s7) 	# zombie 2 y-coordinate
				addi	$a2, $a2, -1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t4, $t2, $t3	
			if_Left2:
				lbu	$a1, 3($s7)	
				lbu	$a2, 4($s7) 	
				addi	$a1, $a1, -1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t5, $t2, $t3	
			if_Right2:
				lbu	$a1, 3($s7)	
				lbu	$a2, 4($s7) 	
				addi	$a1, $a1, 1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t6, $t2, $t3	
			if_Down2:
				lbu	$a1, 3($s7)	
				lbu	$a2, 4($s7) 	
				addi	$a2, $a2, 1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t7, $t2, $t3	
				j chooseDir2
				
			chooseDir2: # picks direction based on shortest distance
				# $t8 = reverse
				lbu	$t8, 3($s6)
				beq	$t8, 0, sort1_2
				beq	$t8, 1, sort2_2
				beq	$t8, 2, sort3_2
				beq	$t8, 3, sort4_2
				# $t4 = up distance, $t5 = left distance, $t6 = right distance, $t7 = down distance
				
				sort1_2: # $t4 will always be last option
					
					bleu	$t6, $t7, firstSort1_2
					bleu	$t5, $t6, firstSort2_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move2
					
				sort2_2: # t5 will always be last option
				
					bleu	$t6, $t7, firstSort3_2
					bleu	$t4, $t6, firstSort4_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move2
					
				sort3_2: # $t6 will always be last option
					
					bleu	$t5, $t7, firstSort5_2
					bleu	$t4, $t5, firstSort6_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move2
				sort4_2: # $t7 will always be last option
					
					bleu	$t5, $t6, firstSort7_2
					bleu	$t4, $t5, firstSort8_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move2
					
				firstSort1_2:
					bleu	$t6, $t5, secondSort1_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move2
					
				firstSort2_2:
					bleu	$t7, $t5, secondSort2_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move2	
					
				firstSort3_2:
					bleu	$t4, $t7, secondSort3_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move2
				
				firstSort4_2:
					bleu	$t7, $t4, secondSort4_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move2
					
				firstSort5_2:
					bleu	$t5, $t4, secondSort5_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move2
					
				firstSort6_2:
					bleu	$t7, $t4, secondSort6_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move2
					
				firstSort7_2:
					bleu	$t4, $t6, secondSort7_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move2
				
				firstSort8_2:
					bleu	$t6, $t4, secondSort8_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move2
				secondSort1_2:
					bleu	$t7, $t5, thirdSort1_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move2
					
				secondSort2_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t4, 3($s6)
					j move2
					
				secondSort3_2:
					bleu	$t6, $t4, thirdSort2_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move2
					
				secondSort4_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move2
					
				secondSort5_2:
					bleu	$t7, $t4, thirdSort3_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move2
					
				secondSort6_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move2
					
				secondSort7_2:
					bleu	$t5, $t4, thirdSort4_2
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move2
				
				secondSort8_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move2
					
				thirdSort1_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move2
					
				thirdSort2_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move2
					
				thirdSort3_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move2
					
				thirdSort4_2:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move2
		
		checkPlayer3: # Checks if player is in same quadrant
			ble	$s0, 31, check_y3 	# first checks if player's x coordinate is within quadrant, then goes to check y coordinate
			j moveZombie3 			# if not then move randomly
		check_y3: # Checks if player's y coordinate is within quadrant
			bge 	$s1, 32, chasePlayer3 	# if so then chase the player
			
		moveZombie3:
			la	$s6, direction	# $s6 contains direction array
		# $s7 = z_Array (contains x, y, and direction of each zombie)
			lbu	$t9, 8($s7)		# $t9 = current direction of zombie 3
			beq	$t9, 4, firstMove3	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t7, $t8, $t9		# $t7 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t7, replace0_4	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t7, replace1_4	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t7, replace2_4	# If direction of third element is equal to reverse, go to replace2
			j permute3
			
			replace0_4: # swaps direction[0] and direction[3] 
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 0($s6)
				j permute3
			replace1_4: # swaps direction[1] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 1($s6)
				j permute3
			replace2_4: # swaps direction[2] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 2($s6)
				j permute3
		move3:
			lbu	$t7, 0($s6)			# $t7 = first element of direction array
			lbu	$a1, 6($s7)			# $a1 = x-coordinate of zombie 3
			lbu	$a2, 7($s7)			# $a2 = y-coordinate of zombie 3
			checkUp3:
				bne	$t7, 0, checkLeft3	
				addi	$a2, $a2, -1		# Subtracts 1 from y-coordinate to move up
				blt	$a2, 32, next3		# Checks if quadrant is exited, if so then move on to next element in direction array and try another direction 	
				jal getLED
				beq 	$v0, 2, next3 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 8($s7)		
				sb	$a2, 7($s7)		
				li 	$a3, 1			# Color = red
				jal setLED			# Draws zombie at new position
				addi	$a2, $a2, 1		
				li	$a3, 0
				jal setLED			# Turns off LED at previous position
				j checkPlayer4			# moves next zombie
			checkLeft3:
				bne	$t7, 1, checkRight3
				addi	$a1, $a1, -1	
				blt	$a1, 0, next3		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next3 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 8($s7)
				sb	$a1, 6($s7)		
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, 1
				li	$a3, 0
				jal setLED
				j checkPlayer4
			checkRight3:
				bne	$t7, 2, checkDown3
				addi	$a1, $a1, 1	
				bgt	$a1, 31, next3		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next3		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 8($s7)
				sb	$a1, 6($s7)
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, -1
				li	$a3, 0
				jal setLED
				j checkPlayer4
			checkDown3:
				addi	$a2, $a2, 1	
				bgt	$a2, 63, next3 		# Checks if quadrant is exited
				jal getLED
				beq 	$v0, 2, next3		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 8($s7)
				sb	$a2, 7($s7)
				li 	$a3, 1
				jal setLED
				addi	$a2, $a2, -1
				li	$a3, 0
				jal setLED
				j checkPlayer4
			
			firstMove3: # permutes array 3 times to obtain random first direction at start of game
				li	$a1, 4
				li	$v0, 42
				syscall
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 3($s6)
				sb	$t8, 3($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				
				li	$a1, 3
				li	$v0, 42
				syscall		
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 2($s6)
				sb	$t8, 2($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				
				li	$a1, 2
				li	$v0, 42
				syscall		
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 1($s6)
				sb	$t8, 1($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				j move3
			
		permute3: # Permutes direction array 
		# Follows pseudocode from instructions
		
		# for(int i = 3)
			li	$a1, 3
			li	$v0, 42
			syscall
			la 	$s6, direction
			add	$s6, $s6, $a0		# Adds offset (random number)
			lbu	$t8, 0($s6)		# $t8 = element at random number address (direction[r]) 
			sub	$s6, $s6, $a0		# Restores direction array to previous state 
			lbu	$t9, 2($s6)		# $t9 = third element of direction array (direction[i-1])
			sb	$t8, 2($s6)		# Store element of direction[r] at direction[i-1]
			add	$s6, $s6, $a0		
			sb	$t9, 0($s6)		# Store element of direction[i-1] at direction[r]
		# for{int i = 2)
			li	$a1, 2
			li	$v0, 42
			syscall		
			la 	$s6, direction
			add	$s6, $s6, $a0
			lbu	$t8, 0($s6)
			sub	$s6, $s6, $a0
			lbu	$t9, 1($s6)
			sb	$t8, 1($s6)
			add	$s6, $s6, $a0
			sb	$t9, 0($s6)
			sub	$s6, $s6, $a0 #
			j move3
			
		next3: # Goes to next element in direction array
			addi 	$s6, $s6, 1
			j move3			
			
		chasePlayer3:
		# Player's x and y are at $s0 and $s1, respectively
			la	$s6, direction
			lbu	$t9, 8($s7)		# $t9 = current direction of zombie 3
			beq	$t9, 4, firstMove3	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t8, $t8, $t9		# $t8 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t8, replace0_5	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t8, replace1_5	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t8, replace2_5	# If direction of third element is equal to reverse, go to replace2
			j if_Up3
			
				replace0_5: # swaps direction[0] and direction[3] 
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 0($s6)
					j if_Up3
				replace1_5: # swaps direction[1] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 1($s6)
					j if_Up3
				replace2_5: # swaps direction[2] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 2($s6)
					j if_Up3
			# direction formula
			if_Up3:
				lbu	$a1, 6($s7)	# zombie 3 x-coordinate
				lbu	$a2, 7($s7) 	# zombie 3 y-coordinate
				addi	$a2, $a2, -1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t4, $t2, $t3	
			if_Left3:
				lbu	$a1, 6($s7)	
				lbu	$a2, 7($s7) 	
				addi	$a1, $a1, -1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t5, $t2, $t3	
			if_Right3:
				lbu	$a1, 6($s7)	
				lbu	$a2, 7($s7) 	
				addi	$a1, $a1, 1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t6, $t2, $t3	
			if_Down3:
				lbu	$a1, 6($s7)	
				lbu	$a2, 7($s7) 	
				addi	$a2, $a2, 1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t7, $t2, $t3	
				j chooseDir3
				
			chooseDir3: # picks direction based on shortest distance
				# $t8 = reverse
				lbu	$t8, 3($s6)
				beq	$t8, 0, sort1_3
				beq	$t8, 1, sort2_3
				beq	$t8, 2, sort3_3
				beq	$t8, 3, sort4_3
				# $t4 = up, $t5 = left distance, $t6 = right distance, $t7 = down distance
				
				sort1_3: # $t4 will always be last option
					
					bleu	$t6, $t7, firstSort1_3
					bleu	$t5, $t6, firstSort2_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move3
					
				sort2_3: # t5 will always be last option
				
					bleu	$t6, $t7, firstSort3_3
					bleu	$t4, $t6, firstSort4_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move3
					
				sort3_3: # $t6 will always be last option
					
					bleu	$t5, $t7, firstSort5_3
					bleu	$t4, $t5, firstSort6_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move3
				sort4_3: # $t7 will always be last option
					
					bleu	$t5, $t6, firstSort7_3
					bleu	$t4, $t5, firstSort8_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move3	
					
				firstSort1_3:
					bleu	$t6, $t5, secondSort1_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move3
					
				firstSort2_3:
					bleu	$t7, $t5, secondSort2_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move3	
					
				firstSort3_3:
					bleu	$t4, $t7, secondSort3_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move3
				
				firstSort4_3:
					bleu	$t7, $t4, secondSort4_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move3
					
				firstSort5_3:
					bleu	$t5, $t4, secondSort5_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move3
					
				firstSort6_3:
					bleu	$t7, $t4, secondSort6_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move3
					
				firstSort7_3:
					bleu	$t4, $t6, secondSort7_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move3
				
				firstSort8_3:
					bleu	$t6, $t4, secondSort8_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move3
				secondSort1_3:
					bleu	$t7, $t5, thirdSort1_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move3
					
				secondSort2_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t4, 3($s6)
					j move3
					
				secondSort3_3:
					bleu	$t6, $t4, thirdSort2_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move3
					
				secondSort4_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move3
					
				secondSort5_3:
					bleu	$t7, $t4, thirdSort3_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move3
					
				secondSort6_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move3
					
				secondSort7_3:
					bleu	$t5, $t4, thirdSort4_3
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move3
				
				secondSort8_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move3
					
				thirdSort1_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move3
					
				thirdSort2_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move3
					
				thirdSort3_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move3
					
				thirdSort4_3:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move3
		
			
		checkPlayer4: # Checks if player is in same quadrant
			bge	$s0, 32, check_y4 	# first checks if player's x coordinate is within quadrant, then goes to check y coordinate
			j moveZombie4 			# if not then move randomly
		check_y4: # Checks if player's y coordinate is within quadrant
			bge 	$s1, 32, chasePlayer4 	# if so then chase the player
			
		moveZombie4:
			la	$s6, direction	# $s6 contains direction array
		# $s7 = z_Array (contains x, y, and direction of each zombie)
			lbu	$t9, 11($s7)		# $t9 = current direction of zombie 4
			beq	$t9, 4, firstMove4	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t7, $t8, $t9		# $t7 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t7, replace0_6	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t7, replace1_6	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t7, replace2_6	# If direction of third element is equal to reverse, go to replace2
			j permute4
			
			replace0_6: # swaps direction[0] and direction[3] 
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 0($s6)
				j permute4
			replace1_6: # swaps direction[1] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 1($s6)
				j permute4
			replace2_6: # swaps direction[2] and direction[3]
				lbu	$t5, 3($s6)
				sb	$t7, 3($s6)
				sb	$t5, 2($s6)
				j permute4
		move4:
			lbu	$t7, 0($s6)			# $t7 = first element of direction array
			lbu	$a1, 9($s7)			# $a1 = x-coordinate of zombie 4
			lbu	$a2, 10($s7)			# $a2 = y-coordinate of zombie 4
			checkUp4:
				bne	$t7, 0, checkLeft4	
				addi	$a2, $a2, -1		# Subtracts 1 from y-coordinate to move up
				blt	$a2, 32, next4		# Checks if quadrant is exited, if so then move on to next element in direction array and try another direction 	
				jal getLED
				beq 	$v0, 2, next4		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 11($s7)		
				sb	$a2, 10($s7)		
				li 	$a3, 1			# Color = red
				jal setLED			# Draws zombie at new position
				addi	$a2, $a2, 1		
				li	$a3, 0
				jal setLED			# Turns off LED at previous position
				j getTime			# moves next zombie
			checkLeft4:
				bne	$t7, 1, checkRight4
				addi	$a1, $a1, -1	
				blt	$a1, 32, next4		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next4		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 11($s7)
				sb	$a1, 9($s7)		
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, 1
				li	$a3, 0
				jal setLED
				j getTime
			checkRight4:
				bne	$t7, 2, checkDown4
				addi	$a1, $a1, 1	
				bgt	$a1, 63, next4		# Checks if quadrant is exited 
				jal getLED
				beq 	$v0, 2, next4 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 11($s7)
				sb	$a1, 9($s7)
				li	$a3, 1
				jal setLED
				addi	$a1, $a1, -1
				li	$a3, 0
				jal setLED
				j getTime
			checkDown4:
				addi	$a2, $a2, 1	
				bgt	$a2, 63, next4 		# Checks if quadrant is exited
				jal getLED
				beq 	$v0, 2, next4 		# Checks for wall
				beq	$v0, 3, gameLost 	# Checks if player captured
				sb	$t7, 11($s7)
				sb	$a2, 10($s7)
				li 	$a3, 1
				jal setLED
				addi	$a2, $a2, -1
				li	$a3, 0
				jal setLED
				j getTime
			
			firstMove4: # permutes array 3 times to obtain random first direction at start of game
				li	$a1, 4
				li	$v0, 42
				syscall
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 3($s6)
				sb	$t8, 3($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				
				li	$a1, 3
				li	$v0, 42
				syscall		
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 2($s6)
				sb	$t8, 2($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				
				li	$a1, 2
				li	$v0, 42
				syscall		
				la 	$s6, direction
				add	$s6, $s6, $a0
				lbu	$t8, 0($s6)
				sub	$s6, $s6, $a0
				lbu	$t9, 1($s6)
				sb	$t8, 1($s6)
				add	$s6, $s6, $a0
				sb	$t9, 0($s6)
				j move4
			
		permute4: # Permutes direction array 
		# Follows pseudocode from instructions
		
		# for(int i = 3)
			li	$a1, 3
			li	$v0, 42
			syscall
			la 	$s6, direction
			add	$s6, $s6, $a0		# Adds offset (random number)
			lbu	$t8, 0($s6)		# $t8 = element at random number address (direction[r]) 
			sub	$s6, $s6, $a0		# Restores direction array to previous state 
			lbu	$t9, 2($s6)		# $t9 = third element of direction array (direction[i-1])
			sb	$t8, 2($s6)		# Store element of direction[r] at direction[i-1]
			add	$s6, $s6, $a0		
			sb	$t9, 0($s6)		# Store element of direction[i-1] at direction[r]
		# for{int i = 2)
			li	$a1, 2
			li	$v0, 42
			syscall		
			la 	$s6, direction
			add	$s6, $s6, $a0
			lbu	$t8, 0($s6)
			sub	$s6, $s6, $a0
			lbu	$t9, 1($s6)
			sb	$t8, 1($s6)
			add	$s6, $s6, $a0
			sb	$t9, 0($s6)
			sub	$s6, $s6, $a0 #
			j move4
			
		next4: # Goes to next element in direction array
			addi 	$s6, $s6, 1
			j move4			
			
		chasePlayer4:
		# Player's x and y are at $s0 and $s1, respectively
			la	$s6, direction
			lbu	$t9, 11($s7)		# $t9 = current direction of zombie 4
			beq	$t9, 4, firstMove4	# if $t9 == 4, then zombie is moving for first time and has no direction yet
			li	$t8, 3			# $t8 = constant value 3
			sub	$t8, $t8, $t9		# $t8 = $t8 - $t9 = reverse direction
			lbu	$t6, 0($s6)		# $t6 = first element of direction array
			beq	$t6, $t8, replace0_7	# If direction of first element is equal to reverse, go to replace0
			lbu	$t6, 1($s6)		# $t6 = second element of direction array
			beq	$t6, $t8, replace1_7	# If direction of second element is equal to reverse, go to replace1 
			lbu	$t6, 2($s6)		# $t6 = third element of direction array
			beq	$t6, $t8, replace2_7	# If direction of third element is equal to reverse, go to replace2
			j if_Up4
			
				replace0_7: # swaps direction[0] and direction[3] 
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 0($s6)
					j if_Up4
				replace1_7: # swaps direction[1] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 1($s6)
					j if_Up4
				replace2_7: # swaps direction[2] and direction[3]
					lbu	$t5, 3($s6)
					sb	$t8, 3($s6)
					sb	$t5, 2($s6)
					j if_Up4
			# direction formula
			if_Up4:
				lbu	$a1, 9($s7)	# zombie 4 x-coordinate
				lbu	$a2, 10($s7) 	# zombie 4 y-coordinate
				addi	$a2, $a2, -1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	
				mflo	$t2
				mult	$t3, $t3	
				mflo	$t3
				add	$t4, $t2, $t3	# $t4 = distance from player if zombie1 moves up
			if_Left4:
				lbu	$a1, 9($s7)	
				lbu	$a2, 10($s7) 	
				addi	$a1, $a1, -1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t5, $t2, $t3	
			if_Right4:
				lbu	$a1, 9($s7)	
				lbu	$a2, 10($s7) 	
				addi	$a1, $a1, 1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	# $t2^2
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t6, $t2, $t3	
			if_Down4:
				lbu	$a1, 9($s7)	
				lbu	$a2, 10($s7) 	
				addi	$a2, $a2, 1
				sub	$t2, $s0, $a1	
				sub	$t3, $s1, $a2	
				mult	$t2, $t2	
				mflo	$t2
				mult	$t3, $t3	# $t3^2
				mflo	$t3
				add	$t7, $t2, $t3	
				j chooseDir4
				
			chooseDir4: # picks direction based on shortest distance
				# $t8 = reverse
				lbu	$t8, 3($s6)
				beq	$t8, 0, sort1_4
				beq	$t8, 1, sort2_4
				beq	$t8, 2, sort3_4
				beq	$t8, 3, sort4_4
				# $t4 = up distance, $t5 = left distance, $t6 = right distance, $t7 = down distance
				
				sort1_4: # $t4 will always be last option
					
					bleu	$t6, $t7, firstSort1_4
					bleu	$t5, $t6, firstSort2_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move4
				sort2_4: # t5 will always be last option
				
					bleu	$t6, $t7, firstSort3_4
					bleu	$t4, $t6, firstSort4_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move4
					
				sort3_4: # $t6 will always be last option
					
					bleu	$t5, $t7, firstSort5_4
					bleu	$t4, $t5, firstSort6_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move4
				sort4_4: # $t7 will always be last option
					
					bleu	$t5, $t6, firstSort7_4
					bleu	$t4, $t5, firstSort8_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move4	
					
				firstSort1_4:
					bleu	$t6, $t5, secondSort1_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move4
					
				firstSort2_4:
					bleu	$t7, $t5, secondSort2_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move4	
					
				firstSort3_4:
					bleu	$t4, $t7, secondSort3_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t5, 3($s6)
					j move4
				
				firstSort4_4:
					bleu	$t7, $t4, secondSort4_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move4
					
				firstSort5_4:
					bleu	$t5, $t4, secondSort5_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move4
					
				firstSort6_4:
					bleu	$t7, $t4, secondSort6_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move4
					
				firstSort7_4:
					bleu	$t4, $t6, secondSort7_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t6, 1($s6)
					sb	$t4, 2($s6)
					sb	$t7, 3($s6)
					j move4
				
				firstSort8_4:
					bleu	$t6, $t4, secondSort8_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move4
				secondSort1_4:
					bleu	$t7, $t5, thirdSort1_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t5, 1($s6)
					sb	$t7, 2($s6)
					sb	$t4, 3($s6)
					j move4
					
				secondSort2_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t4, 3($s6)
					j move4
					
				secondSort3_4:
					bleu	$t6, $t4, thirdSort2_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t6, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move4
					
				secondSort4_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t5, 3($s6)
					j move4
					
				secondSort5_4:
					bleu	$t7, $t4, thirdSort3_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t6, 3($s6)
					j move4
					
				secondSort6_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t7, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t6, 3($s6)
					j move4
					
				secondSort7_4:
					bleu	$t5, $t4, thirdSort4_4
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t4, 0($s6)
					sb	$t5, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move4
				
				secondSort8_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t5, 2($s6)
					sb	$t7, 3($s6)
					j move4
					
				thirdSort1_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t7, 1($s6)
					sb	$t5, 2($s6)
					sb	$t4, 3($s6)
					j move4
					
				thirdSort2_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t6, 0($s6)
					sb	$t4, 1($s6)
					sb	$t7, 2($s6)
					sb	$t5, 3($s6)
					j move4
					
				thirdSort3_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t7, 1($s6)
					sb	$t4, 2($s6)
					sb	$t6, 3($s6)
					j move4
					
				thirdSort4_4:
					li	$t4, 0
					li	$t5, 1
					li	$t6, 2
					li	$t7, 3
					sb	$t5, 0($s6)
					sb	$t4, 1($s6)
					sb	$t6, 2($s6)
					sb	$t7, 3($s6)
					j move4
		
gameWon: # Player reaches end and wins
	bne 	$s1, 63, mainLoop 		# If (x,y) != (63,63) return to mainLoop
	li 	$v0, 4 				# Else end the game by printing messages
	la	$a0, won_1
	syscall
	move 	$a0, $s3			# Loads counter into $a0 to print number of moves
	li 	$v0, 1
	syscall
	li 	$v0, 4
	la	$a0, won_2
	syscall
	li 	$v0, 10 			
	syscall

gameLost: # Player is captured and loses
	li 	$v0, 4
	la 	$a0, lost
	syscall 
	li 	$v0, 10
	syscall

lKey: # Left
	addi 	$a1, $a1, -1 		# x-coordinate minus 1
	beq 	$a1, -1, lReset		# Invalid move if x < 0
	jal getLED
	beq	$v0, 1, gameLost	# Chechs if player is captured
	beq 	$v0, 2, lReset		# Checks for walls/barriers
	li	$a3, 3
	jal setLED
	# Turns off LED at previous position
	addi 	$a1, $a1, 1
	li	$a3, 0
	jal setLED
	addi	$a1, $a1, -1 		# Sets x-coordinate to new value
	move	$s0, $a1		# Moves new coordinate back to $s0
	addi	$s3, $s3, 1		# Increments move counter
	j moveZombies
	
rKey: # Right
	addi 	$a1, $a1, 1 		# x-coordinate plus 1
	beq 	$a1, 64, rReset		# Invalid move if x > 63
	jal getLED
	beq	$v0, 1, gameLost	# Chechs if player is captured
	beq 	$v0, 2, rReset		# Checks for wall/barrier
	li	$a3, 3
	jal setLED
	# Turns off LED at previous position
	addi 	$a1, $a1, -1
	li	$a3, 0
	jal setLED 
	addi 	$a1, $a1, 1		# Sets x-coordinate to new value
	move	$s0, $a1		# Saves new coordinate back to $s0
	addi	$s3, $s3, 1		# Increments move counter
	j moveZombies
	
uKey: # Up
	addi 	$a2, $a2, -1 		# y-coordinate minus 1
	beq 	$a2, -1, uReset		# Invalid move if y < 0
	jal getLED
	beq	$v0, 1, gameLost	# Chechs if player is captured
	beq 	$v0, 2, uReset		# Checks for wall/barrier
	li	$a3, 3
	jal setLED
	# Turns off LED at previous position
	addi 	$a2, $a2, 1
	li	$a3, 0
	jal setLED
	addi 	$a2, $a2, -1		# Sets y-coordinate to new value
	move	$s1, $a2		# Saves new coordinate back to $s1
	addi	$s3, $s3, 1		# Increments move counter
	j moveZombies
	
dKey: # Down
	addi 	$a2, $a2, 1 		# y-coordinate plus 1
	beq 	$a2, 64, dReset		# Invalid move if y > 63
	jal getLED
	beq	$v0, 1, gameLost	# Chechs if player is captured
	beq 	$v0, 2, dReset		# Checks for wall/barrier
	li	$a3, 3
	jal setLED
	# Turns off LED at previous position
	addi 	$a2, $a2, -1
	li	$a3, 0
	jal setLED
	addi 	$a2, $a2, 1		# Sets y-coordinate to new value
	move	$s1, $a2		# Saves new coordinate back to $s1
	addi	$s3, $s3, 1		# Increments move counter
	j moveZombies
	
lReset: # Resets x-coordinate to previous value if barrier found || move is invalid
	addi 	$a1, $a1, 1
	move	$s0, $a1
	j moveZombies
rReset: # Resets x-coordinate to previous value if barrier found || move is invalid
	addi 	$a1, $a1, -1
	move	$s0, $a1
	j moveZombies
uReset: # Resets y-coordinate to previous value if barrier found || move is invalid
	addi 	$a2, $a2, 1
	move	$s1, $a2
	j moveZombies
dReset: # Resets y-coordinate to previous value if barrier found || move is invalid
	addi 	$a2, $a2, -1
	move	$s1, $a2
	j moveZombies
	
setLED:
	# $a1 = x, $a2 = y, $a3 = color
	# byte offset into display = y * 16 bytes + (x / 4)
	sll	$t0, $a2, 4      # y * 16 bytes
	srl	$t1, $a1, 2      # x / 4
	add	$t0, $t0, $t1    # byte offset into display
	li	$t2, 0xffff0008  # base address of LED display
	add	$t0, $t2, $t0    # address of byte with the LED
	# now, compute led position in the byte and the mask for it
	andi	$t1, $a1, 0x3    # remainder is led position in byte
	neg	$t1, $t1		 # negate position for subtraction
	addi	$t1, $t1, 3      # bit positions in reverse order
	sll	$t1, $t1, 1      # led is 2 bits
	# compute two masks: one to clear field, one to set new color
	li	$t2, 3		
	sllv	$t2, $t2, $t1
	not	$t2, $t2         # bit mask for clearing current color
	sllv	$t1, $a3, $t1    # bit mask for setting color
	# get current LED value, set the new field, store it back to LED
	lbu	$t3, 0($t0)      # read current LED value	
	and	$t3, $t3, $t2    # clear the field for the color
	or	$t3, $t3, $t1    # set color field
	sb	$t3, 0($t0)      # update display
	jr	$ra
	
getLED:
	#  $a1 = x, $a2 = y
	#  trashes:   $t0-$t2
	#  returns:   $v0 = value of the LED (0, 1, 2 or 3)
	# byte offset into display = y * 16 bytes + (x / 4)
	sll  	$t0, $a2, 4      # y * 16 bytes
	srl  	$t1, $a1, 2      # x / 4
	add  	$t0, $t0, $t1    # byte offset into display
	la   	$t2, 0xffff0008
	add  	$t0, $t2, $t0    # address of byte with the LED
	# now, compute bit position in the byte and the mask for it
	andi 	$t1, $a1, 0x3    # remainder is bit position in byte
	neg  	$t1, $t1         # negate position for subtraction
	addi 	$t1, $t1, 3      # bit positions in reverse order
    	sll  	$t1, $t1, 1      # led is 2 bits
	# load LED value, get the desired bit in the loaded byte
	lbu  	$t2, 0($t0)
	srlv 	$t2, $t2, $t1    # shift LED value to lsb position
	andi 	$v0, $t2, 0x3    # mask off any remaining upper bits
	jr   	$ra	

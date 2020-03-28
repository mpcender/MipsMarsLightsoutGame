# Bitmap Display SETTINGS
# Pixel width/height: 16x16
# Display width/height: 512x512
# base address for disp: 0x10000000 (global data)

###########################################################################################
#			LIGHTS OUT GAME
# 
# 	Controll the lights with the num pad to turn off all the lights!
#		 	------------
#		  	| 7 | 8 | 9 |
#		  	| 4 | 5 | 6 |
#		  	| 1 | 2 | 3 |
#		  	------------
#
###########################################################################################

.data
  BaseAddress: .word 0x10000000
  playAgainMsg: .asciiz "Would you like to play again?"
  # LightOn variable store light On/Off State as 1=on, 0=off
  lightOn1: .word 1
  lightOn2: .word 1 
  lightOn3: .word 1
  lightOn4: .word 1
  lightOn5: .word 1
  lightOn6: .word 1
  lightOn7: .word 1
  lightOn8: .word 1
  lightOn9: .word 1

###########################################################################################
#			MAIN GAME METHOD

# $v0 - stores the key entered and uses to determine which lights to check ( checkState: )
# $t8 - Selector for which sub-method to run
# $t9 - counter for intro loop (draw board and cycle all light states)
###########################################################################################
    
.text
  li $t9, 0 	# $t9 counts intro loop (draw all lights animation)
  # start with intro loop animation
  li $t8, 0 	# $t8 selects main method (toggleLights, introLoop, exit) 
  
  main:
      beq $t7, 1, endLoop
      bgt $v0, 0, checkState
      beq $t8, 0, introLoop
      bgt $t8, 0, gameLoop

      introLoop:
         # sleep
         li $v0, 32 #sleep
         la $a0, 100 #sleep duration (ms)
         syscall #do the 
         li $v0, 0 # reset
         li $a0, 0 # reset
         addi $t9, $t9, 1	# add to t9 which loops through all light states to draw stage
         beq $t9, 20, gameLoop	# after drawing board go to game loop
         jal select
         
      gameLoop:
         # reset values
         li $s2, 0
         # get user input
         li $v0, 12
         syscall
         la $t8, ($v0)
         
         # update board state
         beq $v0, '7', lightToggle1
         beq $v0, '8', lightToggle2
         beq $v0, '9', lightToggle3
         beq $v0, '4', lightToggle4
         beq $v0, '5', lightToggle5
         beq $v0, '6', lightToggle6
         beq $v0, '1', lightToggle7
         beq $v0, '2', lightToggle8
         beq $v0, '3', lightToggle9
         beq $v0, '0', exitMain
         
       b gameLoop                     

      exitMain:
         li $t9, 20
         b select  

###########################################################################################
#			CHECK STATE
#       This label checks adjacent lights and toggles their value on or off

# $v0 - stores the key entered and uses to determine which lights to check
# $v1 - stores the counter indicating which adjacent lamp has already been checked
###########################################################################################
                    
checkState:
         add $v1, $v1, 1		# Counter for number of check states completed
         # update board state
         beq $v0, '7', checkAdjacent1
         beq $v0, '8', checkAdjacent2
         beq $v0, '9', checkAdjacent3
         beq $v0, '4', checkAdjacent4
         beq $v0, '5', checkAdjacent5
         beq $v0, '6', checkAdjacent6
         beq $v0, '1', checkAdjacent7
         beq $v0, '2', checkAdjacent8
         beq $v0, '3', checkAdjacent9
         
checkAdjacent1:
   beq $v1, 1, lightToggle2
   beq $v1, 2, lightToggle4
   b checkComp
   
checkAdjacent2:
   beq $v1, 1, lightToggle1
   beq $v1, 2, lightToggle5
   beq $v1, 3, lightToggle3
   b checkComp
   
checkAdjacent3:
   beq $v1, 1, lightToggle2
   beq $v1, 2, lightToggle6
   b checkComp
   
checkAdjacent4:
   beq $v1, 1, lightToggle1
   beq $v1, 2, lightToggle5
   beq $v1, 3, lightToggle7
   b checkComp
   
checkAdjacent5:
   beq $v1, 1, lightToggle2
   beq $v1, 2, lightToggle4
   beq $v1, 3, lightToggle6
   beq $v1, 4, lightToggle8
   b checkComp
   
checkAdjacent6:
   beq $v1, 1, lightToggle3
   beq $v1, 2, lightToggle5
   beq $v1, 3, lightToggle9
   b checkComp
   
checkAdjacent7:
   beq $v1, 1, lightToggle4
   beq $v1, 2, lightToggle8
   b checkComp
   
checkAdjacent8:
   beq $v1, 1, lightToggle7
   beq $v1, 2, lightToggle5
   beq $v1, 3, lightToggle9
   b checkComp
   
checkAdjacent9:
   beq $v1, 1, lightToggle6
   beq $v1, 2, lightToggle8
   b checkComp
   
###########################################################################################
#			CHECK GAME COMPLETE
#       This label checks all light values and ends the game if all lights are OFF
###########################################################################################
checkComp:
   li $v0, 0 		# Reset light checker and counter
   li $v1, 0 
   
   # Add up light state values
   lw $v0, lightOn1 
   add $v1, $v1, $v0
   lw $v0, lightOn2
   add $v1, $v1, $v0  
   lw $v0, lightOn3
   add $v1, $v1, $v0
   lw $v0, lightOn4
   add $v1, $v1, $v0
   lw $v0, lightOn5
   add $v1, $v1, $v0
   lw $v0, lightOn6
   add $v1, $v1, $v0
   lw $v0, lightOn7
   add $v1, $v1, $v0
   lw $v0, lightOn8
   add $v1, $v1, $v0
   lw $v0, lightOn9
   add $v1, $v1, $v0
   
   # if all lights are off or 0, play again
   beq $v1, 0, playAgain
   
   # else reset $v reg and continue
   li $v0, 0 
   li $v1, 0 
   b main
  
###########################################################################################
#			PLAY AGAIN
#       This label checks all light values and ends the game if all lights are OFF
#                 Then asks the user if they want to play again
###########################################################################################   
playAgain:
   # display console message to user
   li $v0, 4
   la $a0, playAgainMsg
   syscall
   
   
    # Accept user char input for yes/no continue
      #li $v0, 12
      #syscall
      #add $s4, $v0, 0
      #bne $s4, 0, restartGame
   
   # Infinite end loop cycles lights when complete      
   li $t7, 1
   endLoop:
   # sleep
    li $v0, 32 #sleep
    la $a0, 100 #sleep duration (ms)
    syscall #do the 
      beq $t9, 9, darkEnd
      beq $t9, 19, lightEnd
      contLight:
      add $t9, $t9, 1
      beq $s4, 0, select
      lightEnd:
         li $t9, 0
         b contLight
      darkEnd:
         li $t9, 10
         b contLight
      
   
   restartGame:
   # Reset all light states to original state
   li $t8, 1
   sw $t8, lightOn1 
   sw $t8, lightOn2 
   sw $t8, lightOn3
   sw $t8, lightOn4
   sw $t8, lightOn5
   sw $t8, lightOn6
   sw $t8, lightOn7
   sw $t8, lightOn8
   sw $t8, lightOn9
   
   # Reset values for new game
   li $t7, 0
   li $t8, 0
   li $t9, 0
   li $v0, 0
   beq $s4, 'y', main
   b exit    

#---------------------------------------------------------------------------------- 

.include "drawLightBulb.asm"  
.include "drawDarkBulb.asm"  
.include "selectAction.asm"
.include "lightToggle.asm"

     

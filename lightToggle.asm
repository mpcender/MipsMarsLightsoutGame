###########################################################################################
#			TOGGLE EXECUTE MACRO
#  This macro accepts three arguments which are used to invert the lights current state

# $t0 - Saves and stores the new state of the bulb
# $t9 - Stores the 'select' action code (see selectAction.asm)
###########################################################################################
.macro toggleExecute (%newState)(%saveStateLoc)(%actionCode)
.text
   li $t0, %newState		# set light state value to off
   sw $t0, %saveStateLoc	# save state to memory
   li $t9, %actionCode		# select action
   jal select 		# execute
.end_macro

#-----------------------------------------------------------------------------------------

.data
 
.text
###########################################################################################
#			LIGHT TOGGLE METHODS
#  Each label checks current state and toggles the light, saving the new state

# $t0 - Gets the current state and uses it to determine the new state
###########################################################################################
lightToggle1:
   lw $t0, lightOn1		# Get current state (on/off)  
   beq $t0, 1, toggleOff1	# if on then turn off
   beq $t0, 0, toggleOn1	# if off then turn on
   toggleOff1:
      toggleExecute (0, lightOn1, 1)
   toggleOn1:
      toggleExecute (1, lightOn1, 11)

      
lightToggle2:
   lw $t0, lightOn2
   beq $t0, 1, toggleOff2
   beq $t0, 0, toggleOn2
   toggleOff2:
      toggleExecute (0, lightOn2, 2) 
   toggleOn2:
      toggleExecute (1, lightOn2, 12)

lightToggle3:
   lw $t0, lightOn3
   beq $t0, 1, toggleOff3
   beq $t0, 0, toggleOn3
   toggleOff3:
      toggleExecute (0, lightOn3, 3)
   toggleOn3:
      toggleExecute (1, lightOn3, 13)

lightToggle4:
   lw $t0, lightOn4
   beq $t0, 1, toggleOff4
   beq $t0, 0, toggleOn4
   toggleOff4:
      toggleExecute (0, lightOn4, 4)
   toggleOn4:
      toggleExecute (1, lightOn4, 14)

lightToggle5:
   lw $t0, lightOn5
   beq $t0, 1, toggleOff5
   beq $t0, 0, toggleOn5
   toggleOff5:
      toggleExecute (0, lightOn5, 5)
   toggleOn5:
      toggleExecute (1, lightOn5, 15)
      
lightToggle6:
   lw $t0, lightOn6
   beq $t0, 1, toggleOff6
   beq $t0, 0, toggleOn6
   toggleOff6:
      toggleExecute (0, lightOn6, 6) 
   toggleOn6:
      toggleExecute (1, lightOn6, 16)

lightToggle7:
   lw $t0, lightOn7
   beq $t0, 1, toggleOff7
   beq $t0, 0, toggleOn7
   toggleOff7:
      toggleExecute (0, lightOn7, 7)
   toggleOn7:
      toggleExecute (1, lightOn7, 17)

lightToggle8:
   lw $t0, lightOn8
   beq $t0, 1, toggleOff8
   beq $t0, 0, toggleOn8
   toggleOff8:
      toggleExecute (0, lightOn8, 8)
   toggleOn8:
      toggleExecute (1, lightOn8, 18)
      
      
lightToggle9:
   lw $t0, lightOn9
   beq $t0, 1, toggleOff9
   beq $t0, 0, toggleOn9
   toggleOff9:
      toggleExecute (0, lightOn9, 9) 
   toggleOn9:
      toggleExecute (1, lightOn9, 19)
###########################################################################################
#			DRAW LIGHT PIXEL MACRO
#              This macro takes two arguments for pixel and color and draws the 
# 	            specified number of pixels in the color given

# $s1 - Stores the number of pixels to be drawn
# $t0 - Stores the color of the pixel
###########################################################################################

   
###########################################################################################
#			DRAW PIXEL
#       This label accepts the macro values and draws the specifed number of pixels
###########################################################################################   
.text
  clearScreen:
  #loop draw
  li $s1, 1024		# number of pixels printed
  la $t0, 0x00000000		# color

  startLoopClearScreen: 
    sub $s1, $s1, 1		# decrement coutner
    addi $s0, $s0, 4		# increment address
    sw $t0, 0($s0)		# Draw color to address location

    bgt $s1, 0, startLoopClearScreen
    li $s2, 0		# reset number of pixels printed
    li $a0, 0		# reset base address		
    jr $ra



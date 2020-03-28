###########################################################################################
#			DRAW LIGHT PIXEL MACRO
#              This macro takes two arguments for pixel and color and draws the 
# 	            specified number of pixels in the color given

# $s1 - Stores the number of pixels to be drawn
# $t0 - Stores the color of the pixel
###########################################################################################
.macro drawLightPx (%px)(%col)
.text
     li $s1, %px		# number of pixels printed
     la $t0, %col		# color
     jal drawLightBulbPixel
.end_macro	

#-----------------------------------------------------------------------------------------

.data
 
.text
###########################################################################################
#			DRAW LIGHT BULB
#       This label draws all pixels to the screen required to draw the light bulb
###########################################################################################
drawLightBulb:
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff) 
   drawLightPx (3, 0x00fcec03)
   drawLightPx (3, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (2, 0x00ffffff) 
   drawLightPx (5, 0x00fcec03) 
   drawLightPx (2, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (1, 0x00ffffff) 
   drawLightPx (7, 0x00fcec03)
   drawLightPx (1, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (1, 0x00ffffff) 
   drawLightPx (7, 0x00fcec03)
   drawLightPx (1, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (1, 0x00ffffff) 
   drawLightPx (2, 0x00fcec03)
   drawLightPx (1, 0x00000000)
   drawLightPx (1, 0x00fcec03)
   drawLightPx (1, 0x00000000)
   drawLightPx (2, 0x00fcec03)
   drawLightPx (1, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (2, 0x00ffffff)
   drawLightPx (2, 0x00fcec03)
   drawLightPx (1, 0x00000000)
   drawLightPx (2, 0x00fcec03)
   drawLightPx (2, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff)
   drawLightPx (1, 0x00fcec03)
   drawLightPx (1, 0x00000000)
   drawLightPx (1, 0x00fcec03)
   drawLightPx (3, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff)
   drawLightPx (3, 0x00fcb103)
   drawLightPx (3, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff)
   drawLightPx (3, 0x00fcb103)
   drawLightPx (3, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff)
   drawLightPx (1, 0x00fcb103)
   drawLightPx (1, 0x0000000)
   drawLightPx (1, 0x00fcb103)
   drawLightPx (3, 0x00ffffff)
   jal newLineSprite
   
   li $s2, 0		# reset number of pixels printed
   li $a0, 0		# reset base address		
   jal main
   
###########################################################################################
#			DRAW PIXEL
#       This label accepts the macro values and draws the specifed number of pixels
###########################################################################################   
drawLightBulbPixel:
  #loop draw
  startLoopSprite: 
    sub $s1, $s1, 1		# decrement coutner
    addi $s0, $s0, 4		# increment address
    sw $t0, 0($s0)		# Draw color to address location

    bgt $s1, 0, startLoopSprite
    beq $t1, 1, newLineSprite
    beq $s1, 0, returnToMainSprite
  
  # updates address to move drawing to the next line     
  newLineSprite:
    li $t3, 0
    addi $s2, $s2, 1	# Increment pixel counter
    # 128 determine size, 256 for 8x8, 512 for 4x4
    mulo $t3, $s2, 128	# Increment by 128 (next line)
    la $s0, ($a0)	# Load back base address
    add $s0, $s0, $t3	# add increment value to base
    b returnToMainSprite

  # return to the next draw instruction in main procedure
  returnToMainSprite:
     jr $ra

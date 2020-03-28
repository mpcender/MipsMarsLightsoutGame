###########################################################################################
#			DRAW DARK PIXEL MACRO
#              This macro takes two arguments for pixel and color and draws the 
# 	            specified number of pixels in the color given

# $s1 - Stores the number of pixels to be drawn
# $t0 - Stores the color of the pixel
###########################################################################################
.macro drawDarkPx (%px)(%col)
.text
     li $s1, %px		# number of pixels printed
     la $t0, %col		# color
     jal drawLightBulbPixel
.end_macro

#-----------------------------------------------------------------------------------------

.data
 
.text
###########################################################################################
#			DRAW DARK BULB
#       This label draws all pixels to the screen required to draw the dark bulb
###########################################################################################
drawDarkBulb:
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff) 
   drawLightPx (3, 0x00a6a6a6)
   drawLightPx (3, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (2, 0x00ffffff) 
   drawLightPx (5, 0x00a6a6a6) 
   drawLightPx (2, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (1, 0x00ffffff) 
   drawLightPx (7, 0x00a6a6a6)
   drawLightPx (1, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (1, 0x00ffffff) 
   drawLightPx (7, 0x00a6a6a6)
   drawLightPx (1, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (1, 0x00ffffff) 
   drawLightPx (2, 0x00a6a6a6)
   drawLightPx (1, 0x00000000)
   drawLightPx (1, 0x00a6a6a6)
   drawLightPx (1, 0x00000000)
   drawLightPx (2, 0x00a6a6a6)
   drawLightPx (1, 0x00ffffff) 
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (2, 0x00ffffff)
   drawLightPx (2, 0x00a6a6a6)
   drawLightPx (1, 0x00000000)
   drawLightPx (2, 0x00a6a6a6)
   drawLightPx (2, 0x00ffffff)
   jal newLineSprite
   #------------------------------------------------------------
   drawLightPx (3, 0x00ffffff)
   drawLightPx (1, 0x00a6a6a6)
   drawLightPx (1, 0x00000000)
   drawLightPx (1, 0x00a6a6a6)
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
   li $a0, 0
   jal main
   
###########################################################################################
#			DRAW PIXEL
#       This label accepts the macro values and draws the specifed number of pixels
###########################################################################################   
drawDarkBulbPixel:
  #loop draw
  startLoopSpriteDark: 
    sub $s1, $s1, 1		# decrement coutner
    addi $s0, $s0, 4		# increment address
    sw $t0, 0($s0)		# Draw color to address location

    bgt $s1, 0, startLoopSpriteDark
    beq $t1, 1, newLineSpriteDark
    beq $s1, 0, returnToMainSprite
  
  # updates address to move drawing to the next line      
  newLineSpriteDark:
    li $t3, 0
    addi $s2, $s2, 1	# Increment pixel counter
    mulo $t3, $s2, 128	# Increment by 128 (next line)
    la $s0, ($a0)	# Load back base address
    add $s0, $s0, $t3	# add increment value to base
    b returnToMainSprite

   # returnToMainSprite is already defined in drawLightBulb.asm

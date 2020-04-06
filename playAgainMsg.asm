###########################################################################################
#			DRAW Play Again Screen MACRO
#              This macro takes two arguments for pixel and color and draws the 
# 	            specified number of pixels in the color given

# $s1 - Stores the number of pixels to be drawn
# $t0 - Stores the color of the pixel
###########################################################################################
.macro drawPlayAgainPx (%px)(%col)
.text
     li $s1, %px		# number of pixels printed
     la $t0, %col		# color
     jal drawMsgPixel
.end_macro	

#-----------------------------------------------------------------------------------------

.data
 
.text
###########################################################################################
#			DRAW PLAY AGAIN
#       This label draws all pixels to the screen required to draw the play again message
###########################################################################################
playAgainMsg:
   #------------------------------------------------------------
   # Top BORDER
   drawPlayAgainPx (27, 0x00ffffff) 
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (3, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (5, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (3, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (3, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (5, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (5, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (4, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (3, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (5, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   
   
   
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (25, 0x00ffffff) 
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   drawPlayAgainPx (25, 0x00ffffff) 
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   
   
   
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (4, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (2, 0x00000000)
   drawPlayAgainPx (3, 0x00ffffff)
   
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (5, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (3, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (2, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (3, 0x00000000)  
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (2, 0x00ffffff)
   
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (1, 0x00000000)  # border left
   
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (4, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (3, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   
   drawPlayAgainPx (1, 0x00000000)  # border right
   jal newLineMsg
   #------------------------------------------------------------
   # BOTTOM BORDER
   drawPlayAgainPx (27, 0x00ffffff) 
   jal newLineMsg
   jal newLineMsg
   
   #------------------------------------------------------------
   #-------------------------   Y / N   ------------------------
   #------------------------------------------------------------
   drawPlayAgainPx (6, 0x00000000) 
   drawPlayAgainPx (14, 0x00ffffff)
   drawPlayAgainPx (6, 0x00000000) 
   jal newLineMsg
   #------------------------------------------------------------
   
   drawPlayAgainPx (7, 0x00000000) 
   
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (2, 0x00000000)  
   drawPlayAgainPx (2, 0x00ffffff)
   
   drawPlayAgainPx (7, 0x00000000) 
   jal newLineMsg
   #------------------------------------------------------------
   drawPlayAgainPx (7, 0x00000000) 
   
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)
   drawPlayAgainPx (1, 0x00ffffff)
   
   drawPlayAgainPx (7, 0x00000000) 
   jal newLineMsg
   
   #------------------------------------------------------------
   drawPlayAgainPx (7, 0x00000000) 
   
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   
   drawPlayAgainPx (7, 0x00000000) 
   jal newLineMsg
   
   #------------------------------------------------------------
   drawPlayAgainPx (7, 0x00000000) 
   
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (2, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000) 
   drawPlayAgainPx (1, 0x00ffffff)
   drawPlayAgainPx (1, 0x00000000)  
   drawPlayAgainPx (1, 0x00ffffff)
   
   drawPlayAgainPx (7, 0x00000000) 
   jal newLineMsg
   
   #------------------------------------------------------------
   drawPlayAgainPx (6, 0x00000000) 
   drawPlayAgainPx (14, 0x00ffffff)
   drawPlayAgainPx (6, 0x00000000) 
   jal newLineMsg
   
   li $s2, 0		# reset number of pixels printed
   li $a0, 0		# reset base address		
   jal checkUserContinue
   
###########################################################################################
#			DRAW PIXEL
#       This label accepts the macro values and draws the specifed number of pixels
###########################################################################################   
drawMsgPixel:
  #loop draw
  startLoopMsgSprite: 
    sub $s1, $s1, 1		# decrement coutner
    addi $s0, $s0, 4		# increment address
    sw $t0, 0($s0)		# Draw color to address location

    bgt $s1, 0, startLoopMsgSprite
    beq $t1, 1, newLineMsg
    beq $s1, 0, returnToMainMsgSprite
  
  # updates address to move drawing to the next line     
  newLineMsg:
    li $t3, 0
    addi $s2, $s2, 1	# Increment pixel counter
    # 128 determine size, 256 for 8x8, 512 for 4x4
    mulo $t3, $s2, 128	# Increment by 128 (next line)
    la $s0, ($a0)	# Load back base address
    add $s0, $s0, $t3	# add increment value to base
    b returnToMainSprite

  # return to the next draw instruction in main procedure
  returnToMainMsgSprite:
     jr $ra

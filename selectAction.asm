.macro loadAndDraw (%baseAddress)(%offset)(%modBase)(%sprite)
.text
   lw $a0, %baseAddress		# Load Base address
   add $a0, $a0, %offset	# $a0 keeps base address pure
   add $s0, $a0, %modBase	# $s0 modifiable base address
   jal %sprite
.end_macro

#-----------------------------------------------------------------------------------------

.data
   
.text

select:
   beq $t9, 1, dark1
   beq $t9, 2, dark2
   beq $t9, 3, dark3
   beq $t9, 4, dark4
   beq $t9, 5, dark5
   beq $t9, 6, dark6
   beq $t9, 7, dark7
   beq $t9, 8, dark8
   beq $t9, 9, dark9
   beq $t9, 11, light1
   beq $t9, 12, light2
   beq $t9, 13, light3
   beq $t9, 14, light4
   beq $t9, 15, light5
   beq $t9, 16, light6
   beq $t9, 17, light7
   beq $t9, 18, light8
   beq $t9, 19, light9
   
   bgt $t9, 19, exit
   
   light1:
      loadAndDraw (BaseAddress, 0, 0, drawLightBulb)
   
   light2:
      loadAndDraw (BaseAddress, 40, 0, drawLightBulb)
   
   light3:
      loadAndDraw (BaseAddress, 80, 0, drawLightBulb)
   
   light4:
      loadAndDraw (BaseAddress, 1408, 0, drawLightBulb)
   
   light5:
      loadAndDraw (BaseAddress, 1448, 0, drawLightBulb)
   
   light6:
      loadAndDraw (BaseAddress, 1488, 0, drawLightBulb)
   
   light7:
      loadAndDraw (BaseAddress, 2816, 0, drawLightBulb)
   
   light8:
      loadAndDraw (BaseAddress, 2856, 0, drawLightBulb)
   
   light9:
      loadAndDraw (BaseAddress, 2896, 0, drawLightBulb)
   
  dark1:
     loadAndDraw (BaseAddress, 0, 0, drawDarkBulb)
   
   dark2:
      loadAndDraw (BaseAddress, 40, 0, drawDarkBulb)
   
   dark3:
      loadAndDraw (BaseAddress, 80, 0, drawDarkBulb)
   
   dark4:
      loadAndDraw (BaseAddress, 1408, 0, drawDarkBulb)
   
   dark5:
      loadAndDraw (BaseAddress, 1448, 0, drawDarkBulb)
   
   dark6:
      loadAndDraw (BaseAddress, 1488, 0, drawDarkBulb)
   
   dark7:
      loadAndDraw (BaseAddress, 2816, 0, drawDarkBulb)
   
   dark8:
      loadAndDraw (BaseAddress, 2856, 0, drawDarkBulb)
   
   dark9:
      loadAndDraw (BaseAddress, 2896, 0, drawDarkBulb)
   
   exit: 
    li $v0, 10
    syscall

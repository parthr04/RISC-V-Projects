
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#since this is leaf function, no need to preserve ra 
	
	#Enter code below!
	#make sure to return to calling function after putting correct value in a0!
	



  addi sp, sp, -4   # Adjust stack pointer

  sw ra, 0(sp)     

  # Calculate address
  slli a3, a0, 2    # Multiply x by 4 
  add a2, a2, a3   
  slli a3, a1, 7    # Multiply y by 128 
  add a2, a2, a3   

  mv a0, a2         

  lw ra, 0(sp)    
  addi sp, sp, 4    

  jr ra            


					

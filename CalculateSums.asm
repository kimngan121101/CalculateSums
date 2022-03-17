.data 
m0: .asciiz "\nValue of N to try? "
m1: .asciiz "\nIterative Sum: "
m2: .asciiz "\nFormuala Sum: "

.text
li $v0, 4 	
la $a0, m0	# print m0
syscall

li $v0, 5
syscall
move $t0, $v0	# load int

li $v0, 4
la $a0, m1	# print m1
syscall

li $t1, 0	# i($t1) = 0
li $t2, 0 	# Sum($t2) = 0

loop:
add $t2, $t2, $t1	# $t2 = $t2 + $t1
addi $t1, $t1, 1	# $t1 ++

ble $t1, $t0, loop	# if $t1 <= $t0, repeat the loop

move $a0, $t2	# print int
la $v0, 1
syscall

li $v0, 4
la $a0, m2	# print formula sum
syscall

mul $t3, $t0, $t0	# mul $t3 = $t0 * $t0
add $t3, $t3, $t0	# add $t3 = $t3 + $t0
div $t3, $t3, 2		# div $t3 = $t3 / 2

move $a0, $t3	# print int
la $v0, 1
syscall

li $v0, 10 
syscall 
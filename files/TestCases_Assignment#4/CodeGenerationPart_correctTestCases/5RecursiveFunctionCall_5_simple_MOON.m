   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
program_k dw 0
program_array
res 40
temp0  dw 0
program_i dw 0
temp1  dw 0
temp2  dw 0
temp3  dw 0
temp4  dw 0
temp5  dw 0
temp6  dw 0
temp7  dw 0
temp8  dw 0
temp9  dw 0
func_Global_search
retVal_Global_search_func dw 0
func_Global_search_data
res 40
func_Global_search_toFind dw 0
func_Global_search_count dw 0
temp10  dw 0
temp11  dw 0
temp12  dw 0
FUNC_Global_searchEND_PARAMETER_MARKER
func_Global_binary_search
retVal_Global_binary_search_func dw 0
func_Global_binary_search_data
res 40
func_Global_binary_search_toFind dw 0
func_Global_binary_search_start dw 0
func_Global_binary_search_end dw 0
func_Global_binary_search_mid dw 0
temp13  dw 0
temp14  dw 0
temp15  dw 0
temp16  dw 0
temp17  dw 0
temp18  dw 0
temp19  dw 0
temp20  dw 0
temp21_data dw 0
temp22  dw 0
temp23  dw 0
temp24_data dw 0
temp25  dw 0
temp26  dw 0
temp27  dw 0
temp28  dw 0
FUNC_Global_binary_searchEND_PARAMETER_MARKER
   org  2488
   align
   entry
   jl r15, program
   j end_program_marker
program
addi r1, r0,0
sw temp0(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r2,r0,0
lw r3,temp0(r1)
sw program_k(r2),r3
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,0
sw temp1(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r3,r0,0
lw r1,temp1(r4)
sw program_i(r3),r1
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_0
addi r2, r0,10
sw temp2(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r2,program_i(r3)
addi r3,r0,0
lw r1,temp2(r3)
clt r4,r2,r1
bz r4,END_FOR_marker_1
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,1
sw temp3(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r1,temp3(r3)
addi r4,r0,0
lw r2,program_i(r4)
add r5,r2,r1
sw temp4(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
% compute array offset
lw r3,program_i(r0)
muli r3,r3,4
sw temp6(r0),r3
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
addi r1, r0,2
sw temp7(r0),r1
sub r1,r1,r1
addi r5,r0,0
lw r3,temp7(r5)
addi r5,r0,0
lw r2,program_i(r5)
mul r6,r2,r3
sw temp8(r0),r6
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
lw r6,temp6(r0)
addi r6,r6,0
lw r2,temp8(r5)
sw program_array(r6),r2
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
lw r3,temp4(r0)
sw program_i(r0),r3
j FOR_marker_0

END_FOR_marker_1
% store registries
lw r14,functionCallStack_ponter(r0)
sw functionCallStack(r14),r1
addi r14,r14,4
sw functionCallStack(r14),r2
addi r14,r14,4
sw functionCallStack(r14),r3
addi r14,r14,4
sw functionCallStack(r14),r4
addi r14,r14,4
sw functionCallStack(r14),r5
addi r14,r14,4
sw functionCallStack(r14),r6
addi r14,r14,4
sw functionCallStack(r14),r7
addi r14,r14,4
sw functionCallStack(r14),r8
addi r14,r14,4
sw functionCallStack(r14),r9
addi r14,r14,4
sw functionCallStack(r14),r10
addi r14,r14,4
sw functionCallStack(r14),r11
addi r14,r14,4
sw functionCallStack(r14),r12
addi r14,r14,4
sw functionCallStack(r14),r13
addi r14,r14,4
sw functionCallStack(r14),r15
addi r14,r14,4
sw functionCallStack_ponter(r0),r14
% end store registries
jl  r15,getint
addi r3,r0,0
sw program_k(r3), r14
sub r3,r3,r3
% store registries
lw r14,functionCallStack_ponter(r0)
subi r14,r14,4
lw r15,functionCallStack(r14)
subi r14,r14,4
lw r13,functionCallStack(r14)
subi r14,r14,4
lw r12,functionCallStack(r14)
subi r14,r14,4
lw r11,functionCallStack(r14)
subi r14,r14,4
lw r10,functionCallStack(r14)
subi r14,r14,4
lw r9,functionCallStack(r14)
subi r14,r14,4
lw r8,functionCallStack(r14)
subi r14,r14,4
lw r7,functionCallStack(r14)
subi r14,r14,4
lw r6,functionCallStack(r14)
subi r14,r14,4
lw r5,functionCallStack(r14)
subi r14,r14,4
lw r4,functionCallStack(r14)
subi r14,r14,4
lw r3,functionCallStack(r14)
subi r14,r14,4
lw r2,functionCallStack(r14)
subi r14,r14,4
lw r1,functionCallStack(r14)
sw functionCallStack_ponter(r0),r14
% end store registries
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_search
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_search
addi r7, r5, 0
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
add r4, r4, r7
sw functionCallStack_ponter_recursion(r0),r4
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
addi r3,r0,0
addi r2,r0,0
% copy memory from program_array to func_Global_search_data: 40
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
lw r5,program_array(r3)
sw func_Global_search_data(r2),r5
addi r3,r3,4
addi r2,r2,4
% END: copy memory from program_array to func_Global_search_data: 40
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
addi r2,r0,0
addi r3,r0,0
% copy memory from program_k to func_Global_search_toFind: 4
lw r5,program_k(r2)
sw func_Global_search_toFind(r3),r5
addi r2,r2,4
addi r3,r3,4
% END: copy memory from program_k to func_Global_search_toFind: 4
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
addi r3, r0,10
sw temp9(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r2,r0,0
% copy memory from temp9 to func_Global_search_count: 4
lw r5,temp9(r3)
sw func_Global_search_count(r2),r5
addi r3,r3,4
addi r2,r2,4
% END: copy memory from temp9 to func_Global_search_count: 4
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
% store registries
lw r14,functionCallStack_ponter(r0)
sw functionCallStack(r14),r1
addi r14,r14,4
sw functionCallStack(r14),r2
addi r14,r14,4
sw functionCallStack(r14),r3
addi r14,r14,4
sw functionCallStack(r14),r4
addi r14,r14,4
sw functionCallStack(r14),r5
addi r14,r14,4
sw functionCallStack(r14),r6
addi r14,r14,4
sw functionCallStack(r14),r7
addi r14,r14,4
sw functionCallStack(r14),r8
addi r14,r14,4
sw functionCallStack(r14),r9
addi r14,r14,4
sw functionCallStack(r14),r10
addi r14,r14,4
sw functionCallStack(r14),r11
addi r14,r14,4
sw functionCallStack(r14),r12
addi r14,r14,4
sw functionCallStack(r14),r13
addi r14,r14,4
sw functionCallStack(r14),r15
addi r14,r14,4
sw functionCallStack_ponter(r0),r14
% end store registries
jl  r15,FUNC_Global_search_marker
% store registries
lw r14,functionCallStack_ponter(r0)
subi r14,r14,4
lw r15,functionCallStack(r14)
subi r14,r14,4
lw r13,functionCallStack(r14)
subi r14,r14,4
lw r12,functionCallStack(r14)
subi r14,r14,4
lw r11,functionCallStack(r14)
subi r14,r14,4
lw r10,functionCallStack(r14)
subi r14,r14,4
lw r9,functionCallStack(r14)
subi r14,r14,4
lw r8,functionCallStack(r14)
subi r14,r14,4
lw r7,functionCallStack(r14)
subi r14,r14,4
lw r6,functionCallStack(r14)
subi r14,r14,4
lw r5,functionCallStack(r14)
subi r14,r14,4
lw r4,functionCallStack(r14)
subi r14,r14,4
lw r3,functionCallStack(r14)
subi r14,r14,4
lw r2,functionCallStack(r14)
subi r14,r14,4
lw r1,functionCallStack(r14)
sw functionCallStack_ponter(r0),r14
% end store registries
% store registries
lw r14,functionCallStack_ponter(r0)
sw functionCallStack(r14),r1
addi r14,r14,4
sw functionCallStack(r14),r2
addi r14,r14,4
sw functionCallStack(r14),r3
addi r14,r14,4
sw functionCallStack(r14),r4
addi r14,r14,4
sw functionCallStack(r14),r5
addi r14,r14,4
sw functionCallStack(r14),r6
addi r14,r14,4
sw functionCallStack(r14),r7
addi r14,r14,4
sw functionCallStack(r14),r8
addi r14,r14,4
sw functionCallStack(r14),r9
addi r14,r14,4
sw functionCallStack(r14),r10
addi r14,r14,4
sw functionCallStack(r14),r11
addi r14,r14,4
sw functionCallStack(r14),r12
addi r14,r14,4
sw functionCallStack(r14),r13
addi r14,r14,4
sw functionCallStack(r14),r15
addi r14,r14,4
sw functionCallStack_ponter(r0),r14
% end store registries
addi r3,r0,0
addi r2,r0,0
add r2,r2,r3
lw r14,retVal_Global_search_func(r2)
jl  r15,putint
% store registries
lw r14,functionCallStack_ponter(r0)
subi r14,r14,4
lw r15,functionCallStack(r14)
subi r14,r14,4
lw r13,functionCallStack(r14)
subi r14,r14,4
lw r12,functionCallStack(r14)
subi r14,r14,4
lw r11,functionCallStack(r14)
subi r14,r14,4
lw r10,functionCallStack(r14)
subi r14,r14,4
lw r9,functionCallStack(r14)
subi r14,r14,4
lw r8,functionCallStack(r14)
subi r14,r14,4
lw r7,functionCallStack(r14)
subi r14,r14,4
lw r6,functionCallStack(r14)
subi r14,r14,4
lw r5,functionCallStack(r14)
subi r14,r14,4
lw r4,functionCallStack(r14)
subi r14,r14,4
lw r3,functionCallStack(r14)
subi r14,r14,4
lw r2,functionCallStack(r14)
subi r14,r14,4
lw r1,functionCallStack(r14)
sw functionCallStack_ponter(r0),r14
% end store registries
sub r2,r2,r2
sub r3,r3,r3
j end_program_marker
FUNC_Global_search_marker
sub r3,r3,r3
sub r2,r2,r2
sub r2,r2,r2
sub r3,r3,r3
sub r3,r3,r3
sub r2,r2,r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_binary_search
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
add r4, r4, r7
sw functionCallStack_ponter_recursion(r0),r4
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
addi r2,r0,0
addi r3,r0,0
% copy memory from func_Global_search_data to func_Global_binary_search_data: 40
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
lw r5,func_Global_search_data(r2)
sw func_Global_binary_search_data(r3),r5
addi r2,r2,4
addi r3,r3,4
% END: copy memory from func_Global_search_data to func_Global_binary_search_data: 40
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
addi r3,r0,0
addi r2,r0,0
% copy memory from func_Global_search_toFind to func_Global_binary_search_toFind: 4
lw r5,func_Global_search_toFind(r3)
sw func_Global_binary_search_toFind(r2),r5
addi r3,r3,4
addi r2,r2,4
% END: copy memory from func_Global_search_toFind to func_Global_binary_search_toFind: 4
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,0
sw temp10(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r3,r0,0
% copy memory from temp10 to func_Global_binary_search_start: 4
lw r5,temp10(r2)
sw func_Global_binary_search_start(r3),r5
addi r2,r2,4
addi r3,r3,4
% END: copy memory from temp10 to func_Global_binary_search_start: 4
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
addi r3, r0,1
sw temp11(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp11(r3)
addi r2,r0,0
lw r6,func_Global_search_count(r2)
sub r4,r6,r5
sw temp12(r0),r4
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
addi r3,r0,0
addi r2,r0,0
% copy memory from temp12 to func_Global_binary_search_end: 4
lw r5,temp12(r3)
sw func_Global_binary_search_end(r2),r5
addi r3,r3,4
addi r2,r2,4
% END: copy memory from temp12 to func_Global_binary_search_end: 4
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
% store registries
lw r14,functionCallStack_ponter(r0)
sw functionCallStack(r14),r1
addi r14,r14,4
sw functionCallStack(r14),r2
addi r14,r14,4
sw functionCallStack(r14),r3
addi r14,r14,4
sw functionCallStack(r14),r4
addi r14,r14,4
sw functionCallStack(r14),r5
addi r14,r14,4
sw functionCallStack(r14),r6
addi r14,r14,4
sw functionCallStack(r14),r7
addi r14,r14,4
sw functionCallStack(r14),r8
addi r14,r14,4
sw functionCallStack(r14),r9
addi r14,r14,4
sw functionCallStack(r14),r10
addi r14,r14,4
sw functionCallStack(r14),r11
addi r14,r14,4
sw functionCallStack(r14),r12
addi r14,r14,4
sw functionCallStack(r14),r13
addi r14,r14,4
sw functionCallStack(r14),r15
addi r14,r14,4
sw functionCallStack_ponter(r0),r14
% end store registries
jl  r15,FUNC_Global_binary_search_marker
% store registries
lw r14,functionCallStack_ponter(r0)
subi r14,r14,4
lw r15,functionCallStack(r14)
subi r14,r14,4
lw r13,functionCallStack(r14)
subi r14,r14,4
lw r12,functionCallStack(r14)
subi r14,r14,4
lw r11,functionCallStack(r14)
subi r14,r14,4
lw r10,functionCallStack(r14)
subi r14,r14,4
lw r9,functionCallStack(r14)
subi r14,r14,4
lw r8,functionCallStack(r14)
subi r14,r14,4
lw r7,functionCallStack(r14)
subi r14,r14,4
lw r6,functionCallStack(r14)
subi r14,r14,4
lw r5,functionCallStack(r14)
subi r14,r14,4
lw r4,functionCallStack(r14)
subi r14,r14,4
lw r3,functionCallStack(r14)
subi r14,r14,4
lw r2,functionCallStack(r14)
subi r14,r14,4
lw r1,functionCallStack(r14)
sw functionCallStack_ponter(r0),r14
% end store registries
addi r3,r0,0
lw r5,retVal_Global_binary_search_func(r3)
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, functionCallStack_recursion
lw r2, functionCallStack_ponter_recursion(r0)
addi r3, r0, func_Global_search
addi r4, r0, 0
addi r5, r0, FUNC_Global_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_search
addi r7, r5, 0
sub r2, r2, r5
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
sw functionCallStack_ponter_recursion(r0),r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
sw retVal_Global_search_func(r0),r5
sub r5,r5,r5
sub r3,r3,r3
jr  r15
FUNC_Global_binary_search_marker
sub r3,r3,r3
sub r5,r5,r5
sub r5,r5,r5
sub r3,r3,r3
sub r3,r3,r3
sub r5,r5,r5
sub r5,r5,r5
sub r3,r3,r3
addi r3,r0,0
lw r6,func_Global_binary_search_start(r3)
addi r5,r0,0
lw r4,func_Global_binary_search_end(r5)
sub r1,r4,r6
sw temp13(r0),r1
sub r1,r1,r1
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
addi r3, r0,2
sw temp14(r0),r3
sub r3,r3,r3
addi r1,r0,0
lw r6,temp14(r1)
addi r1,r0,0
lw r4,temp13(r1)
div r7,r4,r6
sw temp15(r0),r7
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
sub r1,r1,r1
addi r1,r0,0
lw r4,temp15(r1)
addi r7,r0,0
lw r6,func_Global_binary_search_start(r7)
add r5,r6,r4
sw temp16(r0),r5
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
sub r1,r1,r1
addi r1,r0,0
addi r7,r0,0
lw r4,temp16(r1)
sw func_Global_binary_search_mid(r7),r4
sub r7,r7,r7
sub r1,r1,r1
sub r4,r4,r4
sub r6,r6,r6
addi r7,r0,0
lw r6,func_Global_binary_search_start(r7)
addi r7,r0,0
lw r4,func_Global_binary_search_end(r7)
cgt r1,r6,r4
bz r1,ELSE_IF_marker_3
sub r6,r6,r6
sub r4,r4,r4
sub r1,r1,r1
sub r7,r7,r7
addi r7, r0,1
sw temp17(r0),r7
sub r7,r7,r7
addi r1,r0,0
lw r7,temp17(r1)
sub  r7,r0,r7
sw temp18(r0),r7
sub r7,r7,r7
sub r1,r1,r1
addi r7,r0,0
lw r4,temp18(r7)
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, functionCallStack_recursion
lw r2, functionCallStack_ponter_recursion(r0)
addi r3, r0, func_Global_binary_search
addi r4, r0, 0
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
sub r2, r2, r5
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
sw functionCallStack_ponter_recursion(r0),r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
sw retVal_Global_binary_search_func(r0),r4
sub r4,r4,r4
sub r7,r7,r7
jr  r15
j END_IF_marker_2
ELSE_IF_marker_3	nop
% compute array offset
lw r7,func_Global_binary_search_mid(r0)
muli r7,r7,4
sw temp20(r0),r7
sub r7,r7,r7
sub r4,r4,r4
sub r6,r6,r6
lw r6,temp20(r0)
addi r6,r6,0
addi r4,r0,0
% copy memory from func_Global_binary_search_data to temp21_data: 4
lw r7,func_Global_binary_search_data(r6)
sw temp21_data(r4),r7
addi r6,r6,4
addi r4,r4,4
% END: copy memory from func_Global_binary_search_data to temp21_data: 4
sub r7,r7,r7
sub r6,r6,r6
sub r4,r4,r4
addi r5,r0,0
lw r4,temp21_data(r5)
addi r5,r0,0
lw r6,func_Global_binary_search_toFind(r5)
ceq r7,r4,r6
bz r7,ELSE_IF_marker_5
sub r4,r4,r4
sub r6,r6,r6
sub r7,r7,r7
sub r5,r5,r5
addi r7,r0,0
lw r6,func_Global_binary_search_mid(r7)
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, functionCallStack_recursion
lw r2, functionCallStack_ponter_recursion(r0)
addi r3, r0, func_Global_binary_search
addi r4, r0, 0
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
sub r2, r2, r5
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
sw functionCallStack_ponter_recursion(r0),r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
sw retVal_Global_binary_search_func(r0),r6
sub r6,r6,r6
sub r7,r7,r7
jr  r15
j END_IF_marker_4
ELSE_IF_marker_5	nop
% compute array offset
lw r7,func_Global_binary_search_mid(r0)
muli r7,r7,4
sw temp23(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r4,r4,r4
lw r4,temp23(r0)
addi r4,r4,0
addi r6,r0,0
% copy memory from func_Global_binary_search_data to temp24_data: 4
lw r7,func_Global_binary_search_data(r4)
sw temp24_data(r6),r7
addi r4,r4,4
addi r6,r6,4
% END: copy memory from func_Global_binary_search_data to temp24_data: 4
sub r7,r7,r7
sub r4,r4,r4
sub r6,r6,r6
addi r3,r0,0
lw r6,temp24_data(r3)
addi r3,r0,0
lw r4,func_Global_binary_search_toFind(r3)
cgt r7,r6,r4
bz r7,ELSE_IF_marker_7
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
sub r3,r3,r3
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_binary_search
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
add r4, r4, r7
sw functionCallStack_ponter_recursion(r0),r4
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
addi r3,r0,0
addi r7,r0,0
% copy memory from func_Global_binary_search_data to func_Global_binary_search_data: 40
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
lw r4,func_Global_binary_search_data(r3)
sw func_Global_binary_search_data(r7),r4
addi r3,r3,4
addi r7,r7,4
% END: copy memory from func_Global_binary_search_data to func_Global_binary_search_data: 40
sub r4,r4,r4
sub r3,r3,r3
sub r7,r7,r7
addi r7,r0,0
addi r3,r0,0
% copy memory from func_Global_binary_search_toFind to func_Global_binary_search_toFind: 4
lw r4,func_Global_binary_search_toFind(r7)
sw func_Global_binary_search_toFind(r3),r4
addi r7,r7,4
addi r3,r3,4
% END: copy memory from func_Global_binary_search_toFind to func_Global_binary_search_toFind: 4
sub r4,r4,r4
sub r7,r7,r7
sub r3,r3,r3
addi r3,r0,0
addi r7,r0,0
% copy memory from func_Global_binary_search_start to func_Global_binary_search_start: 4
lw r4,func_Global_binary_search_start(r3)
sw func_Global_binary_search_start(r7),r4
addi r3,r3,4
addi r7,r7,4
% END: copy memory from func_Global_binary_search_start to func_Global_binary_search_start: 4
sub r4,r4,r4
sub r3,r3,r3
sub r7,r7,r7
addi r7, r0,1
sw temp25(r0),r7
sub r7,r7,r7
addi r7,r0,0
lw r4,temp25(r7)
addi r3,r0,0
lw r6,func_Global_binary_search_mid(r3)
sub r8,r6,r4
sw temp26(r0),r8
sub r8,r8,r8
sub r6,r6,r6
sub r4,r4,r4
sub r3,r3,r3
sub r7,r7,r7
addi r7,r0,0
addi r3,r0,0
% copy memory from temp26 to func_Global_binary_search_end: 4
lw r4,temp26(r7)
sw func_Global_binary_search_end(r3),r4
addi r7,r7,4
addi r3,r3,4
% END: copy memory from temp26 to func_Global_binary_search_end: 4
sub r4,r4,r4
sub r7,r7,r7
sub r3,r3,r3
% store registries
lw r14,functionCallStack_ponter(r0)
sw functionCallStack(r14),r1
addi r14,r14,4
sw functionCallStack(r14),r2
addi r14,r14,4
sw functionCallStack(r14),r3
addi r14,r14,4
sw functionCallStack(r14),r4
addi r14,r14,4
sw functionCallStack(r14),r5
addi r14,r14,4
sw functionCallStack(r14),r6
addi r14,r14,4
sw functionCallStack(r14),r7
addi r14,r14,4
sw functionCallStack(r14),r8
addi r14,r14,4
sw functionCallStack(r14),r9
addi r14,r14,4
sw functionCallStack(r14),r10
addi r14,r14,4
sw functionCallStack(r14),r11
addi r14,r14,4
sw functionCallStack(r14),r12
addi r14,r14,4
sw functionCallStack(r14),r13
addi r14,r14,4
sw functionCallStack(r14),r15
addi r14,r14,4
sw functionCallStack_ponter(r0),r14
% end store registries
jl  r15,FUNC_Global_binary_search_marker
% store registries
lw r14,functionCallStack_ponter(r0)
subi r14,r14,4
lw r15,functionCallStack(r14)
subi r14,r14,4
lw r13,functionCallStack(r14)
subi r14,r14,4
lw r12,functionCallStack(r14)
subi r14,r14,4
lw r11,functionCallStack(r14)
subi r14,r14,4
lw r10,functionCallStack(r14)
subi r14,r14,4
lw r9,functionCallStack(r14)
subi r14,r14,4
lw r8,functionCallStack(r14)
subi r14,r14,4
lw r7,functionCallStack(r14)
subi r14,r14,4
lw r6,functionCallStack(r14)
subi r14,r14,4
lw r5,functionCallStack(r14)
subi r14,r14,4
lw r4,functionCallStack(r14)
subi r14,r14,4
lw r3,functionCallStack(r14)
subi r14,r14,4
lw r2,functionCallStack(r14)
subi r14,r14,4
lw r1,functionCallStack(r14)
sw functionCallStack_ponter(r0),r14
% end store registries
addi r7,r0,0
lw r4,retVal_Global_binary_search_func(r7)
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, functionCallStack_recursion
lw r2, functionCallStack_ponter_recursion(r0)
addi r3, r0, func_Global_binary_search
addi r4, r0, 0
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
sub r2, r2, r5
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
sw functionCallStack_ponter_recursion(r0),r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
sw retVal_Global_binary_search_func(r0),r4
sub r4,r4,r4
sub r7,r7,r7
jr  r15
j END_IF_marker_6
ELSE_IF_marker_7	nop
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_binary_search
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
add r4, r4, r7
sw functionCallStack_ponter_recursion(r0),r4
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
addi r7,r0,0
addi r4,r0,0
% copy memory from func_Global_binary_search_data to func_Global_binary_search_data: 40
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
lw r6,func_Global_binary_search_data(r7)
sw func_Global_binary_search_data(r4),r6
addi r7,r7,4
addi r4,r4,4
% END: copy memory from func_Global_binary_search_data to func_Global_binary_search_data: 40
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
addi r4,r0,0
addi r7,r0,0
% copy memory from func_Global_binary_search_toFind to func_Global_binary_search_toFind: 4
lw r6,func_Global_binary_search_toFind(r4)
sw func_Global_binary_search_toFind(r7),r6
addi r4,r4,4
addi r7,r7,4
% END: copy memory from func_Global_binary_search_toFind to func_Global_binary_search_toFind: 4
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
addi r7, r0,1
sw temp27(r0),r7
sub r7,r7,r7
addi r7,r0,0
lw r6,temp27(r7)
addi r4,r0,0
lw r8,func_Global_binary_search_mid(r4)
add r9,r8,r6
sw temp28(r0),r9
sub r9,r9,r9
sub r8,r8,r8
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
addi r7,r0,0
addi r4,r0,0
% copy memory from temp28 to func_Global_binary_search_start: 4
lw r6,temp28(r7)
sw func_Global_binary_search_start(r4),r6
addi r7,r7,4
addi r4,r4,4
% END: copy memory from temp28 to func_Global_binary_search_start: 4
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
addi r4,r0,0
addi r7,r0,0
% copy memory from func_Global_binary_search_end to func_Global_binary_search_end: 4
lw r6,func_Global_binary_search_end(r4)
sw func_Global_binary_search_end(r7),r6
addi r4,r4,4
addi r7,r7,4
% END: copy memory from func_Global_binary_search_end to func_Global_binary_search_end: 4
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
% store registries
lw r14,functionCallStack_ponter(r0)
sw functionCallStack(r14),r1
addi r14,r14,4
sw functionCallStack(r14),r2
addi r14,r14,4
sw functionCallStack(r14),r3
addi r14,r14,4
sw functionCallStack(r14),r4
addi r14,r14,4
sw functionCallStack(r14),r5
addi r14,r14,4
sw functionCallStack(r14),r6
addi r14,r14,4
sw functionCallStack(r14),r7
addi r14,r14,4
sw functionCallStack(r14),r8
addi r14,r14,4
sw functionCallStack(r14),r9
addi r14,r14,4
sw functionCallStack(r14),r10
addi r14,r14,4
sw functionCallStack(r14),r11
addi r14,r14,4
sw functionCallStack(r14),r12
addi r14,r14,4
sw functionCallStack(r14),r13
addi r14,r14,4
sw functionCallStack(r14),r15
addi r14,r14,4
sw functionCallStack_ponter(r0),r14
% end store registries
jl  r15,FUNC_Global_binary_search_marker
% store registries
lw r14,functionCallStack_ponter(r0)
subi r14,r14,4
lw r15,functionCallStack(r14)
subi r14,r14,4
lw r13,functionCallStack(r14)
subi r14,r14,4
lw r12,functionCallStack(r14)
subi r14,r14,4
lw r11,functionCallStack(r14)
subi r14,r14,4
lw r10,functionCallStack(r14)
subi r14,r14,4
lw r9,functionCallStack(r14)
subi r14,r14,4
lw r8,functionCallStack(r14)
subi r14,r14,4
lw r7,functionCallStack(r14)
subi r14,r14,4
lw r6,functionCallStack(r14)
subi r14,r14,4
lw r5,functionCallStack(r14)
subi r14,r14,4
lw r4,functionCallStack(r14)
subi r14,r14,4
lw r3,functionCallStack(r14)
subi r14,r14,4
lw r2,functionCallStack(r14)
subi r14,r14,4
lw r1,functionCallStack(r14)
sw functionCallStack_ponter(r0),r14
% end store registries
addi r4,r0,0
lw r6,retVal_Global_binary_search_func(r4)
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, functionCallStack_recursion
lw r2, functionCallStack_ponter_recursion(r0)
addi r3, r0, func_Global_binary_search
addi r4, r0, 0
addi r5, r0, FUNC_Global_binary_searchEND_PARAMETER_MARKER
subi r5, r5, func_Global_binary_search
addi r7, r5, 0
sub r2, r2, r5
lw r14, functionCallStack_ponter(r0)
sw functionCallStack(r14), r15
jl r15 , MEMORY_COPY
lw r14, functionCallStack_ponter(r0)
lw r15, functionCallStack(r14)
sw functionCallStack_ponter_recursion(r0),r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
lw r1, 0(r14)
lw r2, 4(r14)
lw r3, 8(r14)
lw r4, 12(r14)
lw r5, 16(r14)
lw r6, 20(r14)
lw r7, 24(r14)
sw retVal_Global_binary_search_func(r0),r6
sub r6,r6,r6
sub r4,r4,r4
jr  r15
END_IF_marker_6	nop
END_IF_marker_4	nop
END_IF_marker_2	nop
end_program_marker
hlt
putint   add    r4,r0,r0         % c := 0 (character)
         add    r6,r0,r0         % s := 0 (sign)
         addi   r8,r0,endbuf     % p is the buffer pointer
         cge    r9,r14,r0
         bnz    r9,putint1       % branch if n >= 0
         addi   r6,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r4,r14,10         % c := n mod 10
         addi   r4,r4,48         % c := c + '0'
         subi   r8,r8,1          % p := p - 1
         sb     0(r8),r4         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r6,putint2       % branch if n >= 0
         addi   r4,r0,45         % c := '-'
         subi   r8,r8,1          % p := p - 1
         sb     0(r8),r4         % buf[p] := c
putint2  lb     r4,0(r8)         % c := buf[p]
         putc   r4               % write c
         addi   r8,r8,1          % p := p + 1
         cgei   r9,r8,endbuf
         bz     r9,putint2       % branch if more digits
		lb r4,cr(r0)			%load carage return character code into a register => ADDED BY VIKA
         putc   r4
         jr     r15              % return
         res    20               % digit buffer
endbuf
cr db 10 		%declar a carage return code   ADDED BY VIKA
align
sub r4,r4,r4
sub r6,r6,r6
sub r8,r8,r8
sub r9,r9,r9
% Read an integer.
% Exit: R1 contains value of integer read.
% Uses: r14, r2, r3, r4.
% Link: r15.

getint   add    r14,r0,r0         % n := 0 (result)
         add    r2,r0,r0         % c := 0 (character)
         add    r3,r0,r0         % s := 0 (sign)
getint1  getc   r2               % read c
         ceqi   r4,r2,32
         bnz    r4,getint1       % skip blanks
         ceqi   r4,r2,43
         bnz    r4,getint2       % branch if c is '+'
         ceqi   r4,r2,45
         bz     r4,getint3       % branch if c is not '-'
         addi   r3,r0,1          % s := 1 (number is negative)
getint2  getc   r2               % read c
getint3  ceqi   r4,r2,10
         bnz    r4,getint5       % branch if c is 

         cgei   r4,r2,48
         bz     r4,getint4       % c < 0
         clei   r4,r2,57
         bz     r4,getint4       % c > 9
         muli   r14,r14,10         % n := 10 * n
         add    r14,r14,r2         % n := n + c
         subi   r14,r14,48         % n := n - '0'
         j      getint2
getint4  addi   r2,r0,63         % c := '?'
         putc   r2               % write c
         j      getint           % Try again
getint5  bz     r3,getint6       % branch if s = 0 (number is positive)
         sub    r14,r0,r14         % n := -n
getint6  jr     r15              % return
MEMORY_COPY
% copy memory from r1 to r3: r5
add r3, r3, r4
add r1, r1, r2
BEGIN_MEMORY_COPY_MARKER
bz r5,END_MEMORY_COPY_MARKER
lw r6,0(r1)
sw 0(r3),r6
addi r3,r3,4
addi r1,r1,4
subi r5,r5,4
j BEGIN_MEMORY_COPY_MARKER
END_MEMORY_COPY_MARKER
% END: copy memory from r1 to r3: r5
jr r15
MEMORY_COPY_REGISTRY_STORE res 28
% Read an fixed poaint.
% Exit: r14 contains value of fixed point
% Uses: r1, r2, r3, r4
% Link: r15.
align
readreal
         % Store registers
         addi  r14, r0, readrealstack
         sw    0(r14), r1
         sw    4(r14), r2
         sw    8(r14), r3
         sw    12(r14), r4

         % Load values
         add   r13,r0,r0           % n := 0 (result)
         add   r1,r0,r0            % c := 0 (character)
         add   r2,r0,r0            % s := 0 (sign)

readreal1  
         getc  r1                % read c
         ceqi  r3,r1,32
         bnz   r3,readreal1      % skip blanks
         ceqi  r3,r1,43
         bnz   r3,readreal2      % branch if c is '+'
         ceqi  r3,r1,45
         bz    r3,readreal3      % branch if c is not '-'
         addi  r2,r0,1           % s := 1 (number is negative)

readreal2  
         getc  r1                % read c

readreal3  
         ceqi  r3,r1,10
         bnz   r3,readreal8      % branch if c is 

         ceqi  r3,r1,46          % branch if dot
         bnz   r3,readreal5      

         cgei  r3,r1,48
         bz    r3,readreal4      % c < 0
         clei  r3,r1,57
         bz    r3,readreal4      % c > 9
         muli  r13,r13,10        % n := 10 * n
         add   r13,r13,r1        % n := n + c
         subi  r13,r13,48        % n := n - '0'
         j     readreal2

readreal4  
         addi  r1,r0,63          % c := '?'
         putc  r1                % write c
         j     readreal          % Try again

readreal5
         addi  r4, r0, 2048
         mul   r13, r13, r4

readreal6
         getc  r1                % read c
         ceqi  r3,r1,10
         bnz   r3,readreal9      % branch if c is 
 

         cgei  r3,r1,48
         bz    r3,readreal7      % c < 0
         clei  r3,r1,57
         bz    r3,readreal7      % c > 9
         subi  r3, r1 ,48
         mul   r3, r3, r4
         divi  r3, r3, 10
         add   r13,r13,r3
         divi  r4, r4, 10
         j     readreal6

readreal7  
         addi  r1,r0,63          % c := '?'
         putc  r1                % write c
         j     readreal6         % Try again

readreal8  
         addi  r4, r0, 2048
         mul   r13, r13, r4
readreal9  
         bz    r2,readreal10     % branch if s = 0 (number is positive)
         sub   r13,r0,r13        % n := -n

readreal10
         % Restore registers
         lw    r1, 0(r14)
         lw    r2, 4(r14)
         lw    r3, 8(r14)
         lw    r4, 12(r14)
         add   r14, r0, r13

         jr    r15               % return
readrealstack res 24




% Write an fixed point to the output file.
% Entry: r14 fixed point value
% Uses: r1,r2,r3,r4,r5
% Link: r15

writereal
      % Save registers
       % Load real value
       add    r1, r0, r14                  % Load value to r1
       addi   r14, r0, readrealstack
       sw     4(r14), r1
       sw     8(r14), r2
       sw     12(r14), r3
       sw     16(r14), r4
       sw     20(r14), r5



       add    r3,r0,r0                   % s := 0 (sign)
       addi   r4,r0,writereal_endbuffer  % p is the buffer pointer
       cge    r5,r1,r0
       bnz    r5,writereal1              % branch if n >= 0
       addi   r3,r0, 1                   % s := 1
       sub    r1,r0,r1                   % n := -n

writereal1       
       addi   r2,r0,2048 
       divi   r2,r2,200
       add    r1,r1,r2 %Round
       sw     0(r14),r1
       add    r2,r0,r0                   % c := 0 (character)
       divi   r1,r1,2048             % Get integer part

writereal2  modi   r2,r1,10              % c := n mod 10
       addi   r2,r2,48                   % c := c + '0'
       subi   r4,r4,1                    % p := p - 1
       sb     0(r4),r2                   % buf[p] := c
       divi   r1,r1,10                   % n := n div 10
       bnz    r1,writereal2              % do next digit

       %      sign
       bz     r3,writereal3              % branch if n >= 0
       addi   r2,r0,45                   % c := '-'
       subi   r4,r4,1                    % p := p - 1
       sb     0(r4),r2                   % buf[p] := c

writereal3  
       lb     r2,0(r4)                   % c := buf[p]
       putc   r2                         % write c
       addi   r4,r4,1                    % p := p + 1
       cgei   r5,r4,writereal_endbuffer
       bz     r5,writereal3              % branch if more digits

       % Fractions
       lw     r1,0(r14)                 % Load value to r1
       addi   r2, r0, 46                 % dot
       putc   r2

       andi   r1,r1, 2047
       muli   r1,r1, 10
       divi   r3,r1, 2048
       addi   r2,r3, 48                    % c := c + '0'
       putc   r2
       muli   r3,r3, 2048
       sub    r1,r1, r3

       muli   r1,r1, 10
       divi   r3,r1, 2048
       addi   r2,r3,48                    % c := c + '0'
       putc   r2

       % New line
       addi   r1, r0, 13
       putc   r1
       addi   r1, r0, 10
       putc   r1

       % Restore registers
       lw     r1, 4(r14) 
       lw     r2, 8(r14)
       lw     r3, 12(r14)
       lw     r4, 16(r14)
       lw     r5, 20(r14)

       jr     r15                         % return
       res    32                          % digit buffer
writereal_endbuffer

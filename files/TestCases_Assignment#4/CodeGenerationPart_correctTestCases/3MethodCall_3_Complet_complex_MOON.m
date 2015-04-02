   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
Global_AAA
AAA_aaa dw 0
AAA_aaa1 dw 0
AAA_bbb
res 28
AAA_aaa2 dw 0
AAA_array_a_member
res 64
func_Global_AAA_func_A
retVal_Global_AAA_func_A_func dw 0
func_Global_AAA_func_A_a dw 0
func_Global_AAA_func_A_array_a
res 64
func_Global_AAA_func_A_result dw 0
temp0  dw 0
func_Global_AAA_func_A_i dw 0
temp1  dw 0
temp2  dw 0
temp3  dw 0
temp4  dw 0
func_Global_AAA_func_A_j dw 0
temp5  dw 0
temp6  dw 0
temp7  dw 0
temp8  dw 0
temp9  dw 0
temp10  dw 0
temp11  dw 0
temp12  dw 0
temp13  dw 0
temp14  dw 0
temp15_array_a dw 0
temp16  dw 0
FUNC_Global_AAA_func_AEND_PARAMETER_MARKER
func_Global_AAA_func_computeSum
retVal_Global_AAA_func_computeSum_func dw 0
func_Global_AAA_func_computeSum_a dw 0
func_Global_AAA_func_computeSum_sum dw 0
func_Global_AAA_func_computeSum_res dw 0
temp17  dw 0
FUNC_Global_AAA_func_computeSumEND_PARAMETER_MARKER
func_Global_AAA_init_A
retVal_Global_AAA_init_A_func dw 0
func_Global_AAA_init_A_array_int
res 12
func_Global_AAA_init_A_obj_d dw 0
func_Global_AAA_init_A_obj_c
res 12
func_Global_AAA_init_A_res dw 0
FUNC_Global_AAA_init_AEND_PARAMETER_MARKER
Global_BBB
BBB_bbb dw 0
BBB_bbb1 dw 0
BBB_ccc
res 12
BBB_ddd dw 0
BBB_bbb2 dw 0
func_Global_BBB_func_B
retVal_Global_BBB_func_B_func dw 0
func_Global_BBB_func_B_b dw 0
func_Global_BBB_func_B_array_b
res 64
func_Global_BBB_func_B_sum dw 0
temp18  dw 0
func_Global_BBB_func_B_i dw 0
temp19  dw 0
temp20  dw 0
temp21  dw 0
temp22  dw 0
func_Global_BBB_func_B_j dw 0
temp23  dw 0
temp24  dw 0
temp25  dw 0
temp26  dw 0
temp27  dw 0
temp28  dw 0
temp29  dw 0
temp30_array_b dw 0
temp31  dw 0
temp32  dw 0
FUNC_Global_BBB_func_BEND_PARAMETER_MARKER
func_Global_BBB_init_b
retVal_Global_BBB_init_b_func dw 0
func_Global_BBB_init_b_init_array
res 12
func_Global_BBB_init_b_obj_d dw 0
func_Global_BBB_init_b_obj_c
res 12
func_Global_BBB_init_b_res dw 0
temp33  dw 0
temp34  dw 0
temp35  dw 0
temp36_init_array dw 0
temp37  dw 0
temp38  dw 0
temp39  dw 0
temp40_init_array dw 0
temp41  dw 0
temp42  dw 0
temp43  dw 0
temp44_init_array dw 0
temp45  dw 0
temp46  dw 0
temp47  dw 0
temp48_init_array dw 0
temp49  dw 0
temp50  dw 0
temp51  dw 0
temp52_init_array dw 0
temp53  dw 0
FUNC_Global_BBB_init_bEND_PARAMETER_MARKER
Global_CCC
CCC_ccc dw 0
CCC_ccc1 dw 0
CCC_ddd dw 0
func_Global_CCC_init_C
retVal_Global_CCC_init_C_func dw 0
func_Global_CCC_init_C_c dw 0
func_Global_CCC_init_C_c1 dw 0
func_Global_CCC_init_C_d dw 0
func_Global_CCC_init_C_result dw 0
FUNC_Global_CCC_init_CEND_PARAMETER_MARKER
Global_DDD
DDD_ddd dw 0
func_Global_DDD_init_D
retVal_Global_DDD_init_D_func dw 0
func_Global_DDD_init_D_d dw 0
temp54  dw 0
FUNC_Global_DDD_init_DEND_PARAMETER_MARKER
program_c dw 0
program_c1 dw 0
program_result dw 0
program_array_init
res 12
program_array_Computation
res 64
CCC_0_c_object
res 12
DDD_0_d_object
res 4
AAA_0_a_obj
res 104
temp55  dw 0
temp56  dw 0
temp57  dw 0
program_k dw 0
temp58  dw 0
temp59  dw 0
temp60  dw 0
temp61  dw 0
temp62  dw 0
temp63  dw 0
temp64  dw 0
temp65  dw 0
program_i dw 0
temp66  dw 0
temp67  dw 0
temp68  dw 0
temp69  dw 0
program_j dw 0
temp70  dw 0
temp71  dw 0
temp72  dw 0
temp73  dw 0
temp74  dw 0
temp75  dw 0
temp76  dw 0
temp77  dw 0
temp78  dw 0
   org  3204
   align
   entry
   jl r15, program
   j end_program_marker
FUNC_Global_AAA_func_A_marker
sub r1,r1,r1
sub r2,r2,r2
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,0
sw temp0(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r2,r0,0
lw r3,temp0(r1)
sw func_Global_AAA_func_A_result(r2),r3
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
sw func_Global_AAA_func_A_i(r3),r1
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_0
addi r2, r0,3
sw temp2(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r2,func_Global_AAA_func_A_i(r3)
addi r3,r0,0
lw r1,temp2(r3)
cle r4,r2,r1
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
lw r2,func_Global_AAA_func_A_i(r4)
add r5,r2,r1
sw temp4(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,0
sw temp5(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r4,r0,0
lw r1,temp5(r3)
sw func_Global_AAA_func_A_j(r4),r1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_2
addi r2, r0,3
sw temp6(r0),r2
sub r2,r2,r2
addi r4,r0,0
lw r2,func_Global_AAA_func_A_j(r4)
addi r4,r0,0
lw r1,temp6(r4)
cle r3,r2,r1
bz r3,END_FOR_marker_3
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,1
sw temp7(r0),r4
sub r4,r4,r4
addi r4,r0,0
lw r1,temp7(r4)
addi r3,r0,0
lw r2,func_Global_AAA_func_A_j(r3)
add r5,r2,r1
sw temp8(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
% compute array offset
lw r4,func_Global_AAA_func_A_i(r0)
muli r3,r4,4
lw r1,func_Global_AAA_func_A_j(r0)
add r4,r3,r1
muli r4,r4,4
sw temp11(r0),r4
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
% compute array offset
lw r1,func_Global_AAA_func_A_i(r0)
muli r3,r1,4
lw r4,func_Global_AAA_func_A_j(r0)
add r1,r3,r4
muli r1,r1,4
sw temp14(r0),r1
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
lw r4,temp14(r0)
addi r4,r4,0
addi r3,r0,0
% copy memory from func_Global_AAA_func_A_array_a to temp15_array_a: 4
lw r1,func_Global_AAA_func_A_array_a(r4)
sw temp15_array_a(r3),r1
addi r4,r4,4
addi r3,r3,4
% END: copy memory from func_Global_AAA_func_A_array_a to temp15_array_a: 4
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r1,func_Global_AAA_func_A_a(r3)
addi r4,r0,0
lw r2,temp15_array_a(r4)
add r5,r2,r1
sw temp16(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r4,temp11(r0)
addi r4,r4,0
lw r1,temp16(r3)
sw AAA_array_a_member(r4),r1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
lw r4,temp8(r0)
sw func_Global_AAA_func_A_j(r0),r4
j FOR_marker_2

END_FOR_marker_3
lw r3,temp4(r0)
sw func_Global_AAA_func_A_i(r0),r3
j FOR_marker_0

END_FOR_marker_1
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_AAA_func_computeSum
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_AAA_func_computeSumEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_func_computeSum
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
addi r1,r0,0
% copy memory from func_Global_AAA_func_A_a to func_Global_AAA_func_computeSum_a: 4
lw r3,func_Global_AAA_func_A_a(r2)
sw func_Global_AAA_func_computeSum_a(r1),r3
addi r2,r2,4
addi r1,r1,4
% END: copy memory from func_Global_AAA_func_A_a to func_Global_AAA_func_computeSum_a: 4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
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
jl  r15,FUNC_Global_AAA_func_computeSum_marker
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
addi r1,r0,0
addi r2,r0,0
% copy memory from Global_AAA to Global_AAA: 104
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
lw r3,Global_AAA(r1)
sw Global_AAA(r2),r3
addi r1,r1,4
addi r2,r2,4
% END: copy memory from Global_AAA to Global_AAA: 104
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
addi r2,r0,0
addi r1,r0,0
lw r3,retVal_Global_AAA_func_computeSum_func(r2)
sw func_Global_AAA_func_A_result(r1),r3
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
sub r4,r4,r4
addi r3,r0,0
lw r2,func_Global_AAA_func_A_result(r3)
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
addi r3, r0, func_Global_AAA_func_A
addi r4, r0, 0
addi r5, r0, FUNC_Global_AAA_func_AEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_func_A
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
sw retVal_Global_AAA_func_A_func(r0),r2
sub r2,r2,r2
sub r3,r3,r3
jr  r15
FUNC_Global_AAA_func_computeSum_marker
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,0
sw temp17(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r3,r0,0
lw r1,temp17(r2)
sw func_Global_AAA_func_computeSum_sum(r3),r1
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
sub r5,r5,r5
addi r5,r0,0
addi r1,r0,0
% copy memory from AAA_bbb to Global_BBB: 28
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_bbb(r5)
sw Global_BBB(r1),r2
addi r5,r5,4
addi r1,r1,4
% END: copy memory from AAA_bbb to Global_BBB: 28
sub r2,r2,r2
sub r5,r5,r5
sub r1,r1,r1
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_BBB_func_B
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_BBB_func_BEND_PARAMETER_MARKER
subi r5, r5, func_Global_BBB_func_B
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
addi r1,r0,0
addi r5,r0,0
% copy memory from func_Global_AAA_func_computeSum_a to func_Global_BBB_func_B_b: 4
lw r2,func_Global_AAA_func_computeSum_a(r1)
sw func_Global_BBB_func_B_b(r5),r2
addi r1,r1,4
addi r5,r5,4
% END: copy memory from func_Global_AAA_func_computeSum_a to func_Global_BBB_func_B_b: 4
sub r2,r2,r2
sub r1,r1,r1
sub r5,r5,r5
addi r5,r0,0
addi r1,r0,0
% copy memory from AAA_array_a_member to func_Global_BBB_func_B_array_b: 64
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
lw r2,AAA_array_a_member(r5)
sw func_Global_BBB_func_B_array_b(r1),r2
addi r5,r5,4
addi r1,r1,4
% END: copy memory from AAA_array_a_member to func_Global_BBB_func_B_array_b: 64
sub r2,r2,r2
sub r5,r5,r5
sub r1,r1,r1
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
jl  r15,FUNC_Global_BBB_func_B_marker
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
addi r1,r0,0
addi r5,r0,0
% copy memory from Global_BBB to AAA_bbb: 28
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
lw r2,Global_BBB(r1)
sw AAA_bbb(r5),r2
addi r1,r1,4
addi r5,r5,4
% END: copy memory from Global_BBB to AAA_bbb: 28
sub r2,r2,r2
sub r1,r1,r1
sub r5,r5,r5
addi r5,r0,0
addi r1,r0,0
lw r2,retVal_Global_BBB_func_B_func(r5)
sw func_Global_AAA_func_computeSum_sum(r1),r2
sub r1,r1,r1
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
addi r2,r0,0
lw r5,func_Global_AAA_func_computeSum_sum(r2)
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
addi r3, r0, func_Global_AAA_func_computeSum
addi r4, r0, 0
addi r5, r0, FUNC_Global_AAA_func_computeSumEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_func_computeSum
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
sw retVal_Global_AAA_func_computeSum_func(r0),r5
sub r5,r5,r5
sub r2,r2,r2
jr  r15
FUNC_Global_AAA_init_A_marker
sub r2,r2,r2
sub r5,r5,r5
sub r5,r5,r5
sub r2,r2,r2
sub r2,r2,r2
sub r5,r5,r5
addi r5,r0,0
addi r2,r0,0
% copy memory from AAA_bbb to Global_BBB: 28
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,AAA_bbb(r5)
sw Global_BBB(r2),r1
addi r5,r5,4
addi r2,r2,4
% END: copy memory from AAA_bbb to Global_BBB: 28
sub r1,r1,r1
sub r5,r5,r5
sub r2,r2,r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_BBB_init_b
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_BBB_init_bEND_PARAMETER_MARKER
subi r5, r5, func_Global_BBB_init_b
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
addi r5,r0,0
% copy memory from func_Global_AAA_init_A_array_int to func_Global_BBB_init_b_init_array: 12
lw r1,func_Global_AAA_init_A_array_int(r2)
sw func_Global_BBB_init_b_init_array(r5),r1
addi r2,r2,4
addi r5,r5,4
lw r1,func_Global_AAA_init_A_array_int(r2)
sw func_Global_BBB_init_b_init_array(r5),r1
addi r2,r2,4
addi r5,r5,4
lw r1,func_Global_AAA_init_A_array_int(r2)
sw func_Global_BBB_init_b_init_array(r5),r1
addi r2,r2,4
addi r5,r5,4
% END: copy memory from func_Global_AAA_init_A_array_int to func_Global_BBB_init_b_init_array: 12
sub r1,r1,r1
sub r2,r2,r2
sub r5,r5,r5
addi r5,r0,0
addi r2,r0,0
% copy memory from func_Global_AAA_init_A_obj_d to func_Global_BBB_init_b_obj_d: 4
lw r1,func_Global_AAA_init_A_obj_d(r5)
sw func_Global_BBB_init_b_obj_d(r2),r1
addi r5,r5,4
addi r2,r2,4
% END: copy memory from func_Global_AAA_init_A_obj_d to func_Global_BBB_init_b_obj_d: 4
sub r1,r1,r1
sub r5,r5,r5
sub r2,r2,r2
addi r2,r0,0
addi r5,r0,0
% copy memory from func_Global_AAA_init_A_obj_c to func_Global_BBB_init_b_obj_c: 12
lw r1,func_Global_AAA_init_A_obj_c(r2)
sw func_Global_BBB_init_b_obj_c(r5),r1
addi r2,r2,4
addi r5,r5,4
lw r1,func_Global_AAA_init_A_obj_c(r2)
sw func_Global_BBB_init_b_obj_c(r5),r1
addi r2,r2,4
addi r5,r5,4
lw r1,func_Global_AAA_init_A_obj_c(r2)
sw func_Global_BBB_init_b_obj_c(r5),r1
addi r2,r2,4
addi r5,r5,4
% END: copy memory from func_Global_AAA_init_A_obj_c to func_Global_BBB_init_b_obj_c: 12
sub r1,r1,r1
sub r2,r2,r2
sub r5,r5,r5
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
jl  r15,FUNC_Global_BBB_init_b_marker
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
addi r5,r0,0
addi r2,r0,0
% copy memory from Global_BBB to AAA_bbb: 28
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
lw r1,Global_BBB(r5)
sw AAA_bbb(r2),r1
addi r5,r5,4
addi r2,r2,4
% END: copy memory from Global_BBB to AAA_bbb: 28
sub r1,r1,r1
sub r5,r5,r5
sub r2,r2,r2
addi r2,r0,0
addi r5,r0,0
lw r1,retVal_Global_BBB_init_b_func(r2)
sw func_Global_AAA_init_A_res(r5),r1
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r6,r6,r6
FUNC_Global_BBB_func_B_marker
sub r6,r6,r6
sub r1,r1,r1
sub r1,r1,r1
sub r6,r6,r6
addi r6, r0,0
sw temp18(r0),r6
sub r6,r6,r6
addi r6,r0,0
addi r1,r0,0
lw r2,temp18(r6)
sw func_Global_BBB_func_B_sum(r1),r2
sub r1,r1,r1
sub r6,r6,r6
sub r2,r2,r2
sub r5,r5,r5
addi r5, r0,0
sw temp19(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r2,r0,0
lw r6,temp19(r5)
sw func_Global_BBB_func_B_i(r2),r6
sub r2,r2,r2
sub r5,r5,r5
sub r6,r6,r6
sub r1,r1,r1
FOR_marker_4
addi r1, r0,3
sw temp20(r0),r1
sub r1,r1,r1
addi r2,r0,0
lw r1,func_Global_BBB_func_B_i(r2)
addi r2,r0,0
lw r6,temp20(r2)
cle r5,r1,r6
bz r5,END_FOR_marker_5
sub r1,r1,r1
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
addi r2, r0,1
sw temp21(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r6,temp21(r2)
addi r5,r0,0
lw r1,func_Global_BBB_func_B_i(r5)
add r7,r1,r6
sw temp22(r0),r7
sub r7,r7,r7
sub r1,r1,r1
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
addi r2, r0,0
sw temp23(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r5,r0,0
lw r6,temp23(r2)
sw func_Global_BBB_func_B_j(r5),r6
sub r5,r5,r5
sub r2,r2,r2
sub r6,r6,r6
sub r1,r1,r1
FOR_marker_6
addi r1, r0,3
sw temp24(r0),r1
sub r1,r1,r1
addi r5,r0,0
lw r1,func_Global_BBB_func_B_j(r5)
addi r5,r0,0
lw r6,temp24(r5)
cle r2,r1,r6
bz r2,END_FOR_marker_7
sub r1,r1,r1
sub r6,r6,r6
sub r2,r2,r2
sub r5,r5,r5
addi r5, r0,1
sw temp25(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r6,temp25(r5)
addi r2,r0,0
lw r1,func_Global_BBB_func_B_j(r2)
add r7,r1,r6
sw temp26(r0),r7
sub r7,r7,r7
sub r1,r1,r1
sub r6,r6,r6
sub r2,r2,r2
sub r5,r5,r5
% compute array offset
lw r5,func_Global_BBB_func_B_i(r0)
muli r2,r5,4
lw r6,func_Global_BBB_func_B_j(r0)
add r5,r2,r6
muli r5,r5,4
sw temp29(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r6,r6,r6
lw r6,temp29(r0)
addi r6,r6,0
addi r2,r0,0
% copy memory from func_Global_BBB_func_B_array_b to temp30_array_b: 4
lw r5,func_Global_BBB_func_B_array_b(r6)
sw temp30_array_b(r2),r5
addi r6,r6,4
addi r2,r2,4
% END: copy memory from func_Global_BBB_func_B_array_b to temp30_array_b: 4
sub r5,r5,r5
sub r6,r6,r6
sub r2,r2,r2
addi r2,r0,0
lw r5,temp30_array_b(r2)
addi r6,r0,0
lw r1,func_Global_BBB_func_B_sum(r6)
add r7,r1,r5
sw temp31(r0),r7
sub r7,r7,r7
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r2,r2,r2
addi r2,r0,0
addi r6,r0,0
lw r5,temp31(r2)
sw func_Global_BBB_func_B_sum(r6),r5
sub r6,r6,r6
sub r2,r2,r2
sub r5,r5,r5
sub r1,r1,r1
lw r5,temp26(r0)
sw func_Global_BBB_func_B_j(r0),r5
j FOR_marker_6

END_FOR_marker_7
lw r2,temp22(r0)
sw func_Global_BBB_func_B_i(r0),r2
j FOR_marker_4

END_FOR_marker_5
addi r1,r0,0
lw r2,func_Global_BBB_func_B_b(r1)
addi r5,r0,0
lw r6,func_Global_BBB_func_B_sum(r5)
add r7,r6,r2
sw temp32(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r2,r2,r2
sub r5,r5,r5
sub r1,r1,r1
addi r5,r0,0
lw r2,temp32(r5)
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
addi r3, r0, func_Global_BBB_func_B
addi r4, r0, 0
addi r5, r0, FUNC_Global_BBB_func_BEND_PARAMETER_MARKER
subi r5, r5, func_Global_BBB_func_B
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
sw retVal_Global_BBB_func_B_func(r0),r2
sub r2,r2,r2
sub r5,r5,r5
jr  r15
FUNC_Global_BBB_init_b_marker
sub r5,r5,r5
sub r2,r2,r2
sub r2,r2,r2
sub r5,r5,r5
sub r5,r5,r5
sub r2,r2,r2
addi r2, r0,0
sw temp34(r0),r2
sub r2,r2,r2
% compute array offset
lw r2,temp34(r0)
muli r2,r2,4
sw temp35(r0),r2
sub r2,r2,r2
sub r5,r5,r5
sub r6,r6,r6
lw r6,temp35(r0)
addi r6,r6,0
addi r5,r0,0
% copy memory from func_Global_BBB_init_b_init_array to temp36_init_array: 4
lw r2,func_Global_BBB_init_b_init_array(r6)
sw temp36_init_array(r5),r2
addi r6,r6,4
addi r5,r5,4
% END: copy memory from func_Global_BBB_init_b_init_array to temp36_init_array: 4
sub r2,r2,r2
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
lw r2,temp36_init_array(r5)
sw BBB_bbb(r6),r2
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r7,r7,r7
addi r7, r0,1
sw temp38(r0),r7
sub r7,r7,r7
% compute array offset
lw r7,temp38(r0)
muli r7,r7,4
sw temp39(r0),r7
sub r7,r7,r7
sub r2,r2,r2
sub r5,r5,r5
lw r5,temp39(r0)
addi r5,r5,0
addi r2,r0,0
% copy memory from func_Global_BBB_init_b_init_array to temp40_init_array: 4
lw r7,func_Global_BBB_init_b_init_array(r5)
sw temp40_init_array(r2),r7
addi r5,r5,4
addi r2,r2,4
% END: copy memory from func_Global_BBB_init_b_init_array to temp40_init_array: 4
sub r7,r7,r7
sub r5,r5,r5
sub r2,r2,r2
addi r2,r0,0
addi r5,r0,0
lw r7,temp40_init_array(r2)
sw BBB_bbb1(r5),r7
sub r5,r5,r5
sub r2,r2,r2
sub r7,r7,r7
sub r6,r6,r6
addi r6, r0,2
sw temp42(r0),r6
sub r6,r6,r6
% compute array offset
lw r6,temp42(r0)
muli r6,r6,4
sw temp43(r0),r6
sub r6,r6,r6
sub r7,r7,r7
sub r2,r2,r2
lw r2,temp43(r0)
addi r2,r2,0
addi r7,r0,0
% copy memory from func_Global_BBB_init_b_init_array to temp44_init_array: 4
lw r6,func_Global_BBB_init_b_init_array(r2)
sw temp44_init_array(r7),r6
addi r2,r2,4
addi r7,r7,4
% END: copy memory from func_Global_BBB_init_b_init_array to temp44_init_array: 4
sub r6,r6,r6
sub r2,r2,r2
sub r7,r7,r7
addi r7,r0,0
addi r2,r0,0
lw r6,temp44_init_array(r7)
sw BBB_bbb2(r2),r6
sub r2,r2,r2
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
% copy memory from BBB_ddd to Global_DDD: 4
lw r7,BBB_ddd(r5)
sw Global_DDD(r6),r7
addi r5,r5,4
addi r6,r6,4
% END: copy memory from BBB_ddd to Global_DDD: 4
sub r7,r7,r7
sub r5,r5,r5
sub r6,r6,r6
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_DDD_init_D
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_DDD_init_DEND_PARAMETER_MARKER
subi r5, r5, func_Global_DDD_init_D
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
addi r6,r0,0
addi r5,r0,0
% copy memory from func_Global_BBB_init_b_obj_d to func_Global_DDD_init_D_d: 4
lw r7,func_Global_BBB_init_b_obj_d(r6)
sw func_Global_DDD_init_D_d(r5),r7
addi r6,r6,4
addi r5,r5,4
% END: copy memory from func_Global_BBB_init_b_obj_d to func_Global_DDD_init_D_d: 4
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
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
jl  r15,FUNC_Global_DDD_init_D_marker
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
addi r5,r0,0
addi r6,r0,0
% copy memory from Global_DDD to BBB_ddd: 4
lw r7,Global_DDD(r5)
sw BBB_ddd(r6),r7
addi r5,r5,4
addi r6,r6,4
% END: copy memory from Global_DDD to BBB_ddd: 4
sub r7,r7,r7
sub r5,r5,r5
sub r6,r6,r6
addi r6,r0,0
addi r5,r0,0
lw r7,retVal_Global_DDD_init_D_func(r6)
sw func_Global_BBB_init_b_res(r5),r7
sub r5,r5,r5
sub r6,r6,r6
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
addi r7,r0,0
% copy memory from BBB_ccc to Global_CCC: 12
lw r6,BBB_ccc(r2)
sw Global_CCC(r7),r6
addi r2,r2,4
addi r7,r7,4
lw r6,BBB_ccc(r2)
sw Global_CCC(r7),r6
addi r2,r2,4
addi r7,r7,4
lw r6,BBB_ccc(r2)
sw Global_CCC(r7),r6
addi r2,r2,4
addi r7,r7,4
% END: copy memory from BBB_ccc to Global_CCC: 12
sub r6,r6,r6
sub r2,r2,r2
sub r7,r7,r7
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_CCC_init_C
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_CCC_init_CEND_PARAMETER_MARKER
subi r5, r5, func_Global_CCC_init_C
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
addi r7, r0,0
sw temp46(r0),r7
sub r7,r7,r7
% compute array offset
lw r7,temp46(r0)
muli r7,r7,4
sw temp47(r0),r7
sub r7,r7,r7
sub r2,r2,r2
sub r6,r6,r6
lw r6,temp47(r0)
addi r6,r6,0
addi r2,r0,0
% copy memory from func_Global_BBB_init_b_init_array to temp48_init_array: 4
lw r7,func_Global_BBB_init_b_init_array(r6)
sw temp48_init_array(r2),r7
addi r6,r6,4
addi r2,r2,4
% END: copy memory from func_Global_BBB_init_b_init_array to temp48_init_array: 4
sub r7,r7,r7
sub r6,r6,r6
sub r2,r2,r2
addi r2,r0,0
addi r6,r0,0
% copy memory from temp48_init_array to func_Global_CCC_init_C_c: 4
lw r7,temp48_init_array(r2)
sw func_Global_CCC_init_C_c(r6),r7
addi r2,r2,4
addi r6,r6,4
% END: copy memory from temp48_init_array to func_Global_CCC_init_C_c: 4
sub r7,r7,r7
sub r2,r2,r2
sub r6,r6,r6
addi r6, r0,1
sw temp50(r0),r6
sub r6,r6,r6
% compute array offset
lw r6,temp50(r0)
muli r6,r6,4
sw temp51(r0),r6
sub r6,r6,r6
sub r2,r2,r2
sub r7,r7,r7
lw r7,temp51(r0)
addi r7,r7,0
addi r2,r0,0
% copy memory from func_Global_BBB_init_b_init_array to temp52_init_array: 4
lw r6,func_Global_BBB_init_b_init_array(r7)
sw temp52_init_array(r2),r6
addi r7,r7,4
addi r2,r2,4
% END: copy memory from func_Global_BBB_init_b_init_array to temp52_init_array: 4
sub r6,r6,r6
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
addi r7,r0,0
% copy memory from temp52_init_array to func_Global_CCC_init_C_c1: 4
lw r6,temp52_init_array(r2)
sw func_Global_CCC_init_C_c1(r7),r6
addi r2,r2,4
addi r7,r7,4
% END: copy memory from temp52_init_array to func_Global_CCC_init_C_c1: 4
sub r6,r6,r6
sub r2,r2,r2
sub r7,r7,r7
addi r7,r0,0
addi r2,r0,0
% copy memory from func_Global_BBB_init_b_obj_d to func_Global_CCC_init_C_d: 4
lw r6,func_Global_BBB_init_b_obj_d(r7)
sw func_Global_CCC_init_C_d(r2),r6
addi r7,r7,4
addi r2,r2,4
% END: copy memory from func_Global_BBB_init_b_obj_d to func_Global_CCC_init_C_d: 4
sub r6,r6,r6
sub r7,r7,r7
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
jl  r15,FUNC_Global_CCC_init_C_marker
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
addi r2,r0,0
addi r7,r0,0
% copy memory from Global_CCC to BBB_ccc: 12
lw r6,Global_CCC(r2)
sw BBB_ccc(r7),r6
addi r2,r2,4
addi r7,r7,4
lw r6,Global_CCC(r2)
sw BBB_ccc(r7),r6
addi r2,r2,4
addi r7,r7,4
lw r6,Global_CCC(r2)
sw BBB_ccc(r7),r6
addi r2,r2,4
addi r7,r7,4
% END: copy memory from Global_CCC to BBB_ccc: 12
sub r6,r6,r6
sub r2,r2,r2
sub r7,r7,r7
addi r7,r0,0
addi r2,r0,0
lw r6,retVal_Global_CCC_init_C_func(r7)
sw func_Global_BBB_init_b_res(r2),r6
sub r2,r2,r2
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
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
addi r6,r0,0
addi r5,r0,0
add r5,r5,r6
lw r14,BBB_bbb2(r5)
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
sub r5,r5,r5
sub r6,r6,r6
addi r6, r0,0
sw temp53(r0),r6
sub r6,r6,r6
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
addi r5,r0,0
addi r6,r0,0
add r6,r6,r5
lw r14,temp53(r6)
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
sub r6,r6,r6
sub r5,r5,r5
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
addi r6,r0,0
addi r5,r0,8
add r5,r5,r6
lw r14,BBB_ccc(r5)
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
sub r5,r5,r5
sub r6,r6,r6
FUNC_Global_CCC_init_C_marker
sub r6,r6,r6
sub r5,r5,r5
sub r5,r5,r5
sub r6,r6,r6
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
lw r7,func_Global_CCC_init_C_c(r5)
sw CCC_ccc(r6),r7
sub r6,r6,r6
sub r5,r5,r5
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
addi r7,r0,0
lw r5,func_Global_CCC_init_C_c1(r2)
sw CCC_ccc1(r7),r5
sub r7,r7,r7
sub r2,r2,r2
sub r5,r5,r5
sub r6,r6,r6
addi r6,r0,0
addi r5,r0,0
% copy memory from CCC_ddd to Global_DDD: 4
lw r2,CCC_ddd(r6)
sw Global_DDD(r5),r2
addi r6,r6,4
addi r5,r5,4
% END: copy memory from CCC_ddd to Global_DDD: 4
sub r2,r2,r2
sub r6,r6,r6
sub r5,r5,r5
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_DDD_init_D
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_DDD_init_DEND_PARAMETER_MARKER
subi r5, r5, func_Global_DDD_init_D
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
addi r5,r0,0
addi r6,r0,0
% copy memory from func_Global_CCC_init_C_d to func_Global_DDD_init_D_d: 4
lw r2,func_Global_CCC_init_C_d(r5)
sw func_Global_DDD_init_D_d(r6),r2
addi r5,r5,4
addi r6,r6,4
% END: copy memory from func_Global_CCC_init_C_d to func_Global_DDD_init_D_d: 4
sub r2,r2,r2
sub r5,r5,r5
sub r6,r6,r6
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
jl  r15,FUNC_Global_DDD_init_D_marker
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
addi r6,r0,0
addi r5,r0,0
% copy memory from Global_DDD to CCC_ddd: 4
lw r2,Global_DDD(r6)
sw CCC_ddd(r5),r2
addi r6,r6,4
addi r5,r5,4
% END: copy memory from Global_DDD to CCC_ddd: 4
sub r2,r2,r2
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
lw r2,retVal_Global_DDD_init_D_func(r5)
sw func_Global_CCC_init_C_result(r6),r2
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r7,r7,r7
FUNC_Global_DDD_init_D_marker
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
addi r7,r0,0
lw r5,func_Global_DDD_init_D_d(r2)
sw DDD_ddd(r7),r5
sub r7,r7,r7
sub r2,r2,r2
sub r5,r5,r5
sub r6,r6,r6
addi r6, r0,1
sw temp54(r0),r6
sub r6,r6,r6
addi r5,r0,0
lw r2,temp54(r5)
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
addi r3, r0, func_Global_DDD_init_D
addi r4, r0, 0
addi r5, r0, FUNC_Global_DDD_init_DEND_PARAMETER_MARKER
subi r5, r5, func_Global_DDD_init_D
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
sw retVal_Global_DDD_init_D_func(r0),r2
sub r2,r2,r2
sub r5,r5,r5
jr  r15
program
addi r5, r0,11
sw temp55(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r2,r0,0
lw r7,temp55(r5)
sw DDD_0_d_object(r2),r7
sub r2,r2,r2
sub r5,r5,r5
sub r7,r7,r7
sub r8,r8,r8
addi r8, r0,21
sw temp56(r0),r8
sub r8,r8,r8
addi r8,r0,0
addi r7,r0,0
lw r5,temp56(r8)
sw program_c(r7),r5
sub r7,r7,r7
sub r8,r8,r8
sub r5,r5,r5
sub r2,r2,r2
addi r2, r0,31
sw temp57(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r5,r0,0
lw r8,temp57(r2)
sw program_c1(r5),r8
sub r5,r5,r5
sub r2,r2,r2
sub r8,r8,r8
sub r7,r7,r7
addi r7, r0,0
sw temp58(r0),r7
sub r7,r7,r7
addi r7,r0,0
addi r8,r0,0
lw r2,temp58(r7)
sw program_k(r8),r2
sub r8,r8,r8
sub r7,r7,r7
sub r2,r2,r2
sub r5,r5,r5
FOR_marker_8
addi r5, r0,2
sw temp59(r0),r5
sub r5,r5,r5
addi r8,r0,0
lw r5,program_k(r8)
addi r8,r0,0
lw r2,temp59(r8)
cle r7,r5,r2
bz r7,END_FOR_marker_9
sub r5,r5,r5
sub r2,r2,r2
sub r7,r7,r7
sub r8,r8,r8
addi r8, r0,1
sw temp60(r0),r8
sub r8,r8,r8
addi r8,r0,0
lw r2,temp60(r8)
addi r7,r0,0
lw r5,program_k(r7)
add r9,r5,r2
sw temp61(r0),r9
sub r9,r9,r9
sub r5,r5,r5
sub r2,r2,r2
sub r7,r7,r7
sub r8,r8,r8
% compute array offset
lw r8,program_k(r0)
muli r8,r8,4
sw temp63(r0),r8
sub r8,r8,r8
sub r7,r7,r7
sub r2,r2,r2
addi r2, r0,1
sw temp64(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r8,program_k(r2)
addi r7,r0,0
lw r5,temp64(r7)
add r9,r5,r8
sw temp65(r0),r9
sub r9,r9,r9
sub r5,r5,r5
sub r8,r8,r8
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
lw r7,temp63(r0)
addi r7,r7,0
lw r8,temp65(r2)
sw program_array_init(r7),r8
sub r7,r7,r7
sub r2,r2,r2
sub r8,r8,r8
sub r5,r5,r5
lw r8,temp61(r0)
sw program_k(r0),r8
j FOR_marker_8

END_FOR_marker_9
addi r5,r0,0
addi r8,r0,0
% copy memory from CCC_0_c_object to Global_CCC: 12
lw r2,CCC_0_c_object(r5)
sw Global_CCC(r8),r2
addi r5,r5,4
addi r8,r8,4
lw r2,CCC_0_c_object(r5)
sw Global_CCC(r8),r2
addi r5,r5,4
addi r8,r8,4
lw r2,CCC_0_c_object(r5)
sw Global_CCC(r8),r2
addi r5,r5,4
addi r8,r8,4
% END: copy memory from CCC_0_c_object to Global_CCC: 12
sub r2,r2,r2
sub r5,r5,r5
sub r8,r8,r8
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_CCC_init_C
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_CCC_init_CEND_PARAMETER_MARKER
subi r5, r5, func_Global_CCC_init_C
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
addi r8,r0,0
addi r5,r0,0
% copy memory from program_c to func_Global_CCC_init_C_c: 4
lw r2,program_c(r8)
sw func_Global_CCC_init_C_c(r5),r2
addi r8,r8,4
addi r5,r5,4
% END: copy memory from program_c to func_Global_CCC_init_C_c: 4
sub r2,r2,r2
sub r8,r8,r8
sub r5,r5,r5
addi r5,r0,0
addi r8,r0,0
% copy memory from program_c1 to func_Global_CCC_init_C_c1: 4
lw r2,program_c1(r5)
sw func_Global_CCC_init_C_c1(r8),r2
addi r5,r5,4
addi r8,r8,4
% END: copy memory from program_c1 to func_Global_CCC_init_C_c1: 4
sub r2,r2,r2
sub r5,r5,r5
sub r8,r8,r8
addi r8,r0,0
addi r5,r0,0
% copy memory from DDD_0_d_object to func_Global_CCC_init_C_d: 4
lw r2,DDD_0_d_object(r8)
sw func_Global_CCC_init_C_d(r5),r2
addi r8,r8,4
addi r5,r5,4
% END: copy memory from DDD_0_d_object to func_Global_CCC_init_C_d: 4
sub r2,r2,r2
sub r8,r8,r8
sub r5,r5,r5
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
jl  r15,FUNC_Global_CCC_init_C_marker
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
addi r5,r0,0
addi r8,r0,0
% copy memory from Global_CCC to CCC_0_c_object: 12
lw r2,Global_CCC(r5)
sw CCC_0_c_object(r8),r2
addi r5,r5,4
addi r8,r8,4
lw r2,Global_CCC(r5)
sw CCC_0_c_object(r8),r2
addi r5,r5,4
addi r8,r8,4
lw r2,Global_CCC(r5)
sw CCC_0_c_object(r8),r2
addi r5,r5,4
addi r8,r8,4
% END: copy memory from Global_CCC to CCC_0_c_object: 12
sub r2,r2,r2
sub r5,r5,r5
sub r8,r8,r8
addi r8,r0,0
addi r5,r0,0
lw r2,retVal_Global_CCC_init_C_func(r8)
sw program_result(r5),r2
sub r5,r5,r5
sub r8,r8,r8
sub r2,r2,r2
sub r7,r7,r7
addi r7,r0,0
addi r2,r0,0
% copy memory from AAA_0_a_obj to Global_AAA: 104
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,AAA_0_a_obj(r7)
sw Global_AAA(r2),r8
addi r7,r7,4
addi r2,r2,4
% END: copy memory from AAA_0_a_obj to Global_AAA: 104
sub r8,r8,r8
sub r7,r7,r7
sub r2,r2,r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_AAA_init_A
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_AAA_init_AEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_init_A
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
addi r7,r0,0
% copy memory from program_array_init to func_Global_AAA_init_A_array_int: 12
lw r8,program_array_init(r2)
sw func_Global_AAA_init_A_array_int(r7),r8
addi r2,r2,4
addi r7,r7,4
lw r8,program_array_init(r2)
sw func_Global_AAA_init_A_array_int(r7),r8
addi r2,r2,4
addi r7,r7,4
lw r8,program_array_init(r2)
sw func_Global_AAA_init_A_array_int(r7),r8
addi r2,r2,4
addi r7,r7,4
% END: copy memory from program_array_init to func_Global_AAA_init_A_array_int: 12
sub r8,r8,r8
sub r2,r2,r2
sub r7,r7,r7
addi r7,r0,0
addi r2,r0,0
% copy memory from DDD_0_d_object to func_Global_AAA_init_A_obj_d: 4
lw r8,DDD_0_d_object(r7)
sw func_Global_AAA_init_A_obj_d(r2),r8
addi r7,r7,4
addi r2,r2,4
% END: copy memory from DDD_0_d_object to func_Global_AAA_init_A_obj_d: 4
sub r8,r8,r8
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
addi r7,r0,0
% copy memory from CCC_0_c_object to func_Global_AAA_init_A_obj_c: 12
lw r8,CCC_0_c_object(r2)
sw func_Global_AAA_init_A_obj_c(r7),r8
addi r2,r2,4
addi r7,r7,4
lw r8,CCC_0_c_object(r2)
sw func_Global_AAA_init_A_obj_c(r7),r8
addi r2,r2,4
addi r7,r7,4
lw r8,CCC_0_c_object(r2)
sw func_Global_AAA_init_A_obj_c(r7),r8
addi r2,r2,4
addi r7,r7,4
% END: copy memory from CCC_0_c_object to func_Global_AAA_init_A_obj_c: 12
sub r8,r8,r8
sub r2,r2,r2
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
jl  r15,FUNC_Global_AAA_init_A_marker
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
addi r2,r0,0
% copy memory from Global_AAA to AAA_0_a_obj: 104
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
lw r8,Global_AAA(r7)
sw AAA_0_a_obj(r2),r8
addi r7,r7,4
addi r2,r2,4
% END: copy memory from Global_AAA to AAA_0_a_obj: 104
sub r8,r8,r8
sub r7,r7,r7
sub r2,r2,r2
addi r2,r0,0
addi r7,r0,0
lw r8,retVal_Global_AAA_init_A_func(r2)
sw program_result(r7),r8
sub r7,r7,r7
sub r2,r2,r2
sub r8,r8,r8
sub r5,r5,r5
addi r5, r0,0
sw temp66(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r8,r0,0
lw r2,temp66(r5)
sw program_i(r8),r2
sub r8,r8,r8
sub r5,r5,r5
sub r2,r2,r2
sub r7,r7,r7
FOR_marker_10
addi r7, r0,3
sw temp67(r0),r7
sub r7,r7,r7
addi r8,r0,0
lw r7,program_i(r8)
addi r8,r0,0
lw r2,temp67(r8)
cle r5,r7,r2
bz r5,END_FOR_marker_11
sub r7,r7,r7
sub r2,r2,r2
sub r5,r5,r5
sub r8,r8,r8
addi r8, r0,1
sw temp68(r0),r8
sub r8,r8,r8
addi r8,r0,0
lw r2,temp68(r8)
addi r5,r0,0
lw r7,program_i(r5)
add r9,r7,r2
sw temp69(r0),r9
sub r9,r9,r9
sub r7,r7,r7
sub r2,r2,r2
sub r5,r5,r5
sub r8,r8,r8
addi r8, r0,0
sw temp70(r0),r8
sub r8,r8,r8
addi r8,r0,0
addi r5,r0,0
lw r2,temp70(r8)
sw program_j(r5),r2
sub r5,r5,r5
sub r8,r8,r8
sub r2,r2,r2
sub r7,r7,r7
FOR_marker_12
addi r7, r0,3
sw temp71(r0),r7
sub r7,r7,r7
addi r5,r0,0
lw r7,program_j(r5)
addi r5,r0,0
lw r2,temp71(r5)
cle r8,r7,r2
bz r8,END_FOR_marker_13
sub r7,r7,r7
sub r2,r2,r2
sub r8,r8,r8
sub r5,r5,r5
addi r5, r0,1
sw temp72(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r2,temp72(r5)
addi r8,r0,0
lw r7,program_j(r8)
add r9,r7,r2
sw temp73(r0),r9
sub r9,r9,r9
sub r7,r7,r7
sub r2,r2,r2
sub r8,r8,r8
sub r5,r5,r5
% compute array offset
lw r5,program_i(r0)
muli r8,r5,4
lw r2,program_j(r0)
add r5,r8,r2
muli r5,r5,4
sw temp76(r0),r5
sub r5,r5,r5
sub r8,r8,r8
sub r2,r2,r2
addi r2,r0,0
lw r5,program_j(r2)
addi r8,r0,0
lw r7,program_i(r8)
add r9,r7,r5
sw temp77(r0),r9
sub r9,r9,r9
sub r7,r7,r7
sub r5,r5,r5
sub r8,r8,r8
sub r2,r2,r2
addi r2,r0,0
lw r8,temp76(r0)
addi r8,r8,0
lw r5,temp77(r2)
sw program_array_Computation(r8),r5
sub r8,r8,r8
sub r2,r2,r2
sub r5,r5,r5
sub r7,r7,r7
lw r5,temp73(r0)
sw program_j(r0),r5
j FOR_marker_12

END_FOR_marker_13
lw r8,temp69(r0)
sw program_i(r0),r8
j FOR_marker_10

END_FOR_marker_11
addi r7,r0,0
addi r5,r0,0
% copy memory from AAA_0_a_obj to Global_AAA: 104
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,AAA_0_a_obj(r7)
sw Global_AAA(r5),r2
addi r7,r7,4
addi r5,r5,4
% END: copy memory from AAA_0_a_obj to Global_AAA: 104
sub r2,r2,r2
sub r7,r7,r7
sub r5,r5,r5
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_AAA_func_A
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_AAA_func_AEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_func_A
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
addi r5, r0,2
sw temp78(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r7,r0,0
% copy memory from temp78 to func_Global_AAA_func_A_a: 4
lw r2,temp78(r5)
sw func_Global_AAA_func_A_a(r7),r2
addi r5,r5,4
addi r7,r7,4
% END: copy memory from temp78 to func_Global_AAA_func_A_a: 4
sub r2,r2,r2
sub r5,r5,r5
sub r7,r7,r7
addi r7,r0,0
addi r5,r0,0
% copy memory from program_array_Computation to func_Global_AAA_func_A_array_a: 64
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
lw r2,program_array_Computation(r7)
sw func_Global_AAA_func_A_array_a(r5),r2
addi r7,r7,4
addi r5,r5,4
% END: copy memory from program_array_Computation to func_Global_AAA_func_A_array_a: 64
sub r2,r2,r2
sub r7,r7,r7
sub r5,r5,r5
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
jl  r15,FUNC_Global_AAA_func_A_marker
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
addi r5,r0,0
addi r7,r0,0
% copy memory from Global_AAA to AAA_0_a_obj: 104
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
lw r2,Global_AAA(r5)
sw AAA_0_a_obj(r7),r2
addi r5,r5,4
addi r7,r7,4
% END: copy memory from Global_AAA to AAA_0_a_obj: 104
sub r2,r2,r2
sub r5,r5,r5
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
addi r5,r0,0
addi r7,r0,0
add r7,r7,r5
lw r14,retVal_Global_AAA_func_A_func(r7)
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
sub r7,r7,r7
sub r5,r5,r5
j end_program_marker
end_program_marker
hlt
putint   add    r5,r0,r0         % c := 0 (character)
         add    r7,r0,r0         % s := 0 (sign)
         addi   r2,r0,endbuf     % p is the buffer pointer
         cge    r8,r14,r0
         bnz    r8,putint1       % branch if n >= 0
         addi   r7,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r5,r14,10         % c := n mod 10
         addi   r5,r5,48         % c := c + '0'
         subi   r2,r2,1          % p := p - 1
         sb     0(r2),r5         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r7,putint2       % branch if n >= 0
         addi   r5,r0,45         % c := '-'
         subi   r2,r2,1          % p := p - 1
         sb     0(r2),r5         % buf[p] := c
putint2  lb     r5,0(r2)         % c := buf[p]
         putc   r5               % write c
         addi   r2,r2,1          % p := p + 1
         cgei   r8,r2,endbuf
         bz     r8,putint2       % branch if more digits
		lb r5,cr(r0)			%load carage return character code into a register => ADDED BY VIKA
         putc   r5
         jr     r15              % return
         res    20               % digit buffer
endbuf
cr db 10 		%declar a carage return code   ADDED BY VIKA
align
sub r5,r5,r5
sub r7,r7,r7
sub r2,r2,r2
sub r8,r8,r8
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

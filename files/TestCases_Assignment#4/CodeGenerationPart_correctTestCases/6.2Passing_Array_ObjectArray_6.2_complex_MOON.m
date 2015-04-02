   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
Global_AAA
AAA_sum dw 0
AAA_arr
res 108
func_Global_AAA_computeSum
retVal_Global_AAA_computeSum_func dw 0
func_Global_AAA_computeSum_sum dw 0
temp0  dw 0
func_Global_AAA_computeSum_i dw 0
temp1  dw 0
temp2  dw 0
temp3  dw 0
temp4  dw 0
func_Global_AAA_computeSum_j dw 0
temp5  dw 0
temp6  dw 0
temp7  dw 0
temp8  dw 0
func_Global_AAA_computeSum_k dw 0
temp9  dw 0
temp10  dw 0
temp11  dw 0
temp12  dw 0
temp13  dw 0
temp14  dw 0
temp15  dw 0
temp16  dw 0
temp17_arr dw 0
temp18  dw 0
FUNC_Global_AAA_computeSumEND_PARAMETER_MARKER
AAA_0_aaa
res 448
AAA_0_abc
res 112
program_res dw 0
program_arr
res 108
program_i dw 0
temp19  dw 0
temp20  dw 0
temp21  dw 0
temp22  dw 0
program_j dw 0
temp23  dw 0
temp24  dw 0
temp25  dw 0
temp26  dw 0
program_k dw 0
temp27  dw 0
temp28  dw 0
temp29  dw 0
temp30  dw 0
temp31  dw 0
temp32  dw 0
temp33  dw 0
temp34  dw 0
temp35  dw 0
temp36  dw 0
func_Global_free_funct
retVal_Global_free_funct_func dw 0
func_Global_free_funct_arr
res 108
func_Global_free_funct_sum dw 0
temp37  dw 0
func_Global_free_funct_i dw 0
temp38  dw 0
temp39  dw 0
temp40  dw 0
temp41  dw 0
func_Global_free_funct_j dw 0
temp42  dw 0
temp43  dw 0
temp44  dw 0
temp45  dw 0
func_Global_free_funct_k dw 0
temp46  dw 0
temp47  dw 0
temp48  dw 0
temp49  dw 0
temp50  dw 0
temp51  dw 0
temp52  dw 0
temp53  dw 0
temp54_arr dw 0
temp55  dw 0
FUNC_Global_free_functEND_PARAMETER_MARKER
func_Global_Free_func_object
retVal_Global_Free_func_object_func dw 0
func_Global_Free_func_object_arr
res 108
func_Global_Free_func_object_aaa
res 448
func_Global_Free_func_object_array_sum
res 16
func_Global_Free_func_object_total_sum dw 0
func_Global_Free_func_object_jkl dw 0
func_Global_Free_func_object_m dw 0
temp56  dw 0
temp57  dw 0
temp58  dw 0
temp59  dw 0
func_Global_Free_func_object_n dw 0
temp60  dw 0
temp61  dw 0
temp62  dw 0
temp63  dw 0
func_Global_Free_func_object_i dw 0
temp64  dw 0
temp65  dw 0
temp66  dw 0
temp67  dw 0
func_Global_Free_func_object_j dw 0
temp68  dw 0
temp69  dw 0
temp70  dw 0
temp71  dw 0
func_Global_Free_func_object_k dw 0
temp72  dw 0
temp73  dw 0
temp74  dw 0
temp75  dw 0
temp76  dw 0
temp77  dw 0
temp78  dw 0
temp79  dw 0
temp80  dw 0
temp81  dw 0
temp82  dw 0
temp83  dw 0
temp84  dw 0
temp85  dw 0
temp86_arr dw 0
temp87  dw 0
func_Global_Free_func_object_p dw 0
temp88  dw 0
temp89  dw 0
temp90  dw 0
temp91  dw 0
func_Global_Free_func_object_t dw 0
temp92  dw 0
temp93  dw 0
temp94  dw 0
temp95  dw 0
temp96  dw 0
temp97  dw 0
temp98  dw 0
temp99  dw 0
temp100  dw 0
temp101  dw 0
temp102  dw 0
func_Global_Free_func_object_jk dw 0
temp103  dw 0
temp104  dw 0
temp105  dw 0
temp106  dw 0
temp107  dw 0
temp108  dw 0
temp109_array_sum dw 0
temp110  dw 0
temp111  dw 0
temp112  dw 0
temp113_array_sum dw 0
FUNC_Global_Free_func_objectEND_PARAMETER_MARKER
   org  4240
   align
   entry
   jl r15, program
   j end_program_marker
FUNC_Global_AAA_computeSum_marker
addi r1, r0,0
sw temp0(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r2,r0,0
lw r3,temp0(r1)
sw func_Global_AAA_computeSum_sum(r2),r3
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
sw func_Global_AAA_computeSum_i(r3),r1
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_0
addi r2, r0,3
sw temp2(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r2,func_Global_AAA_computeSum_i(r3)
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
lw r2,func_Global_AAA_computeSum_i(r4)
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
sw func_Global_AAA_computeSum_j(r4),r1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_2
addi r2, r0,3
sw temp6(r0),r2
sub r2,r2,r2
addi r4,r0,0
lw r2,func_Global_AAA_computeSum_j(r4)
addi r4,r0,0
lw r1,temp6(r4)
clt r3,r2,r1
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
lw r2,func_Global_AAA_computeSum_j(r3)
add r5,r2,r1
sw temp8(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,0
sw temp9(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r3,r0,0
lw r1,temp9(r4)
sw func_Global_AAA_computeSum_k(r3),r1
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_4
addi r2, r0,3
sw temp10(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r2,func_Global_AAA_computeSum_k(r3)
addi r3,r0,0
lw r1,temp10(r3)
clt r4,r2,r1
bz r4,END_FOR_marker_5
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,1
sw temp11(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r1,temp11(r3)
addi r4,r0,0
lw r2,func_Global_AAA_computeSum_k(r4)
add r5,r2,r1
sw temp12(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
% compute array offset
lw r3,func_Global_AAA_computeSum_i(r0)
muli r4,r3,3
lw r1,func_Global_AAA_computeSum_j(r0)
add r3,r4,r1
muli r4,r3,3
lw r1,func_Global_AAA_computeSum_k(r0)
add r3,r4,r1
muli r3,r3,4
sw temp16(r0),r3
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
lw r1,temp16(r0)
addi r1,r1,0
addi r4,r0,0
% copy memory from AAA_arr to temp17_arr: 4
lw r3,AAA_arr(r1)
sw temp17_arr(r4),r3
addi r1,r1,4
addi r4,r4,4
% END: copy memory from AAA_arr to temp17_arr: 4
sub r3,r3,r3
sub r1,r1,r1
sub r4,r4,r4
addi r4,r0,0
lw r3,temp17_arr(r4)
addi r1,r0,0
lw r2,func_Global_AAA_computeSum_sum(r1)
add r5,r2,r3
sw temp18(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r3,r3,r3
sub r1,r1,r1
sub r4,r4,r4
addi r4,r0,0
addi r1,r0,0
lw r3,temp18(r4)
sw func_Global_AAA_computeSum_sum(r1),r3
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
lw r3,temp12(r0)
sw func_Global_AAA_computeSum_k(r0),r3
j FOR_marker_4

END_FOR_marker_5
lw r4,temp8(r0)
sw func_Global_AAA_computeSum_j(r0),r4
j FOR_marker_2

END_FOR_marker_3
lw r3,temp4(r0)
sw func_Global_AAA_computeSum_i(r0),r3
j FOR_marker_0

END_FOR_marker_1
addi r3,r0,0
lw r4,func_Global_AAA_computeSum_sum(r3)
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
addi r3, r0, func_Global_AAA_computeSum
addi r4, r0, 0
addi r5, r0, FUNC_Global_AAA_computeSumEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_computeSum
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
sw retVal_Global_AAA_computeSum_func(r0),r4
sub r4,r4,r4
sub r3,r3,r3
jr  r15
program
addi r3, r0,0
sw temp19(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r4,r0,0
lw r1,temp19(r3)
sw program_i(r4),r1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
FOR_marker_6
addi r5, r0,3
sw temp20(r0),r5
sub r5,r5,r5
addi r4,r0,0
lw r5,program_i(r4)
addi r4,r0,0
lw r1,temp20(r4)
clt r3,r5,r1
bz r3,END_FOR_marker_7
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,1
sw temp21(r0),r4
sub r4,r4,r4
addi r4,r0,0
lw r1,temp21(r4)
addi r3,r0,0
lw r5,program_i(r3)
add r6,r5,r1
sw temp22(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,0
sw temp23(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r3,r0,0
lw r1,temp23(r4)
sw program_j(r3),r1
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
sub r5,r5,r5
FOR_marker_8
addi r5, r0,3
sw temp24(r0),r5
sub r5,r5,r5
addi r3,r0,0
lw r5,program_j(r3)
addi r3,r0,0
lw r1,temp24(r3)
clt r4,r5,r1
bz r4,END_FOR_marker_9
sub r5,r5,r5
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,1
sw temp25(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r1,temp25(r3)
addi r4,r0,0
lw r5,program_j(r4)
add r6,r5,r1
sw temp26(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,0
sw temp27(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r4,r0,0
lw r1,temp27(r3)
sw program_k(r4),r1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
FOR_marker_10
addi r5, r0,3
sw temp28(r0),r5
sub r5,r5,r5
addi r4,r0,0
lw r5,program_k(r4)
addi r4,r0,0
lw r1,temp28(r4)
clt r3,r5,r1
bz r3,END_FOR_marker_11
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,1
sw temp29(r0),r4
sub r4,r4,r4
addi r4,r0,0
lw r1,temp29(r4)
addi r3,r0,0
lw r5,program_k(r3)
add r6,r5,r1
sw temp30(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
% compute array offset
lw r4,program_i(r0)
muli r3,r4,3
lw r1,program_j(r0)
add r4,r3,r1
muli r3,r4,3
lw r1,program_k(r0)
add r4,r3,r1
muli r4,r4,4
sw temp34(r0),r4
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
lw r4,program_j(r1)
addi r3,r0,0
lw r5,program_i(r3)
add r6,r5,r4
sw temp35(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
lw r4,program_k(r1)
addi r3,r0,0
lw r5,temp35(r3)
add r6,r5,r4
sw temp36(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
lw r3,temp34(r0)
addi r3,r3,0
lw r4,temp36(r1)
sw program_arr(r3),r4
sub r3,r3,r3
sub r1,r1,r1
sub r4,r4,r4
sub r5,r5,r5
lw r4,temp30(r0)
sw program_k(r0),r4
j FOR_marker_10

END_FOR_marker_11
lw r3,temp26(r0)
sw program_j(r0),r3
j FOR_marker_8

END_FOR_marker_9
lw r4,temp22(r0)
sw program_i(r0),r4
j FOR_marker_6

END_FOR_marker_7
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_free_funct
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_functEND_PARAMETER_MARKER
subi r5, r5, func_Global_free_funct
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
addi r4,r0,0
% copy memory from program_arr to func_Global_free_funct_arr: 108
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_free_funct_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
% END: copy memory from program_arr to func_Global_free_funct_arr: 108
sub r1,r1,r1
sub r5,r5,r5
sub r4,r4,r4
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
jl  r15,FUNC_Global_free_funct_marker
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
addi r5,r0,0
addi r4,r0,0
add r4,r4,r5
lw r14,retVal_Global_free_funct_func(r4)
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
sub r4,r4,r4
sub r5,r5,r5
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_Free_func_object
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_Free_func_objectEND_PARAMETER_MARKER
subi r5, r5, func_Global_Free_func_object
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
addi r4,r0,0
% copy memory from program_arr to func_Global_Free_func_object_arr: 108
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
lw r1,program_arr(r5)
sw func_Global_Free_func_object_arr(r4),r1
addi r5,r5,4
addi r4,r4,4
% END: copy memory from program_arr to func_Global_Free_func_object_arr: 108
sub r1,r1,r1
sub r5,r5,r5
sub r4,r4,r4
addi r4,r0,0
addi r5,r0,0
% copy memory from AAA_0_aaa to func_Global_Free_func_object_aaa: 448
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
lw r1,AAA_0_aaa(r4)
sw func_Global_Free_func_object_aaa(r5),r1
addi r4,r4,4
addi r5,r5,4
% END: copy memory from AAA_0_aaa to func_Global_Free_func_object_aaa: 448
sub r1,r1,r1
sub r4,r4,r4
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
jl  r15,FUNC_Global_Free_func_object_marker
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
addi r4,r0,0
addi r5,r0,0
add r5,r5,r4
lw r14,retVal_Global_Free_func_object_func(r5)
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
sub r4,r4,r4
j end_program_marker
FUNC_Global_free_funct_marker
sub r4,r4,r4
sub r5,r5,r5
addi r5, r0,0
sw temp37(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r4,r0,0
lw r1,temp37(r5)
sw func_Global_free_funct_sum(r4),r1
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,0
sw temp38(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
lw r5,temp38(r3)
sw func_Global_free_funct_i(r1),r5
sub r1,r1,r1
sub r3,r3,r3
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_12
addi r4, r0,3
sw temp39(r0),r4
sub r4,r4,r4
addi r1,r0,0
lw r4,func_Global_free_funct_i(r1)
addi r1,r0,0
lw r5,temp39(r1)
clt r3,r4,r5
bz r3,END_FOR_marker_13
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,1
sw temp40(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r5,temp40(r1)
addi r3,r0,0
lw r4,func_Global_free_funct_i(r3)
add r6,r4,r5
sw temp41(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,0
sw temp42(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
lw r5,temp42(r1)
sw func_Global_free_funct_j(r3),r5
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_14
addi r4, r0,3
sw temp43(r0),r4
sub r4,r4,r4
addi r3,r0,0
lw r4,func_Global_free_funct_j(r3)
addi r3,r0,0
lw r5,temp43(r3)
clt r1,r4,r5
bz r1,END_FOR_marker_15
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,1
sw temp44(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp44(r3)
addi r1,r0,0
lw r4,func_Global_free_funct_j(r1)
add r6,r4,r5
sw temp45(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,0
sw temp46(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
lw r5,temp46(r3)
sw func_Global_free_funct_k(r1),r5
sub r1,r1,r1
sub r3,r3,r3
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_16
addi r4, r0,3
sw temp47(r0),r4
sub r4,r4,r4
addi r1,r0,0
lw r4,func_Global_free_funct_k(r1)
addi r1,r0,0
lw r5,temp47(r1)
clt r3,r4,r5
bz r3,END_FOR_marker_17
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,1
sw temp48(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r5,temp48(r1)
addi r3,r0,0
lw r4,func_Global_free_funct_k(r3)
add r6,r4,r5
sw temp49(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
% compute array offset
lw r1,func_Global_free_funct_i(r0)
muli r3,r1,3
lw r5,func_Global_free_funct_j(r0)
add r1,r3,r5
muli r3,r1,3
lw r5,func_Global_free_funct_k(r0)
add r1,r3,r5
muli r1,r1,4
sw temp53(r0),r1
sub r1,r1,r1
sub r3,r3,r3
sub r5,r5,r5
lw r5,temp53(r0)
addi r5,r5,0
addi r3,r0,0
% copy memory from func_Global_free_funct_arr to temp54_arr: 4
lw r1,func_Global_free_funct_arr(r5)
sw temp54_arr(r3),r1
addi r5,r5,4
addi r3,r3,4
% END: copy memory from func_Global_free_funct_arr to temp54_arr: 4
sub r1,r1,r1
sub r5,r5,r5
sub r3,r3,r3
addi r3,r0,0
lw r1,temp54_arr(r3)
addi r5,r0,0
lw r4,func_Global_free_funct_sum(r5)
add r6,r4,r1
sw temp55(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r1,r1,r1
sub r5,r5,r5
sub r3,r3,r3
addi r3,r0,0
addi r5,r0,0
lw r1,temp55(r3)
sw func_Global_free_funct_sum(r5),r1
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
sub r4,r4,r4
lw r1,temp49(r0)
sw func_Global_free_funct_k(r0),r1
j FOR_marker_16

END_FOR_marker_17
lw r3,temp45(r0)
sw func_Global_free_funct_j(r0),r3
j FOR_marker_14

END_FOR_marker_15
lw r1,temp41(r0)
sw func_Global_free_funct_i(r0),r1
j FOR_marker_12

END_FOR_marker_13
addi r1,r0,0
lw r3,func_Global_free_funct_sum(r1)
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
addi r3, r0, func_Global_free_funct
addi r4, r0, 0
addi r5, r0, FUNC_Global_free_functEND_PARAMETER_MARKER
subi r5, r5, func_Global_free_funct
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
sw retVal_Global_free_funct_func(r0),r3
sub r3,r3,r3
sub r1,r1,r1
jr  r15
FUNC_Global_Free_func_object_marker
sub r1,r1,r1
sub r3,r3,r3
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,0
sw temp56(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
lw r5,temp56(r1)
sw func_Global_Free_func_object_m(r3),r5
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
FOR_marker_18
addi r6, r0,2
sw temp57(r0),r6
sub r6,r6,r6
addi r3,r0,0
lw r6,func_Global_Free_func_object_m(r3)
addi r3,r0,0
lw r5,temp57(r3)
clt r1,r6,r5
bz r1,END_FOR_marker_19
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,1
sw temp58(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp58(r3)
addi r1,r0,0
lw r6,func_Global_Free_func_object_m(r1)
add r7,r6,r5
sw temp59(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,0
sw temp60(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
lw r5,temp60(r3)
sw func_Global_Free_func_object_n(r1),r5
sub r1,r1,r1
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
FOR_marker_20
addi r6, r0,2
sw temp61(r0),r6
sub r6,r6,r6
addi r1,r0,0
lw r6,func_Global_Free_func_object_m(r1)
addi r1,r0,0
lw r5,temp61(r1)
clt r3,r6,r5
bz r3,END_FOR_marker_21
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,1
sw temp62(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r5,temp62(r1)
addi r3,r0,0
lw r6,func_Global_Free_func_object_m(r3)
add r7,r6,r5
sw temp63(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,0
sw temp64(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
lw r5,temp64(r1)
sw func_Global_Free_func_object_i(r3),r5
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
FOR_marker_22
addi r6, r0,3
sw temp65(r0),r6
sub r6,r6,r6
addi r3,r0,0
lw r6,func_Global_Free_func_object_i(r3)
addi r3,r0,0
lw r5,temp65(r3)
clt r1,r6,r5
bz r1,END_FOR_marker_23
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,1
sw temp66(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp66(r3)
addi r1,r0,0
lw r6,func_Global_Free_func_object_i(r1)
add r7,r6,r5
sw temp67(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,0
sw temp68(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
lw r5,temp68(r3)
sw func_Global_Free_func_object_j(r1),r5
sub r1,r1,r1
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
FOR_marker_24
addi r6, r0,3
sw temp69(r0),r6
sub r6,r6,r6
addi r1,r0,0
lw r6,func_Global_Free_func_object_j(r1)
addi r1,r0,0
lw r5,temp69(r1)
clt r3,r6,r5
bz r3,END_FOR_marker_25
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,1
sw temp70(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r5,temp70(r1)
addi r3,r0,0
lw r6,func_Global_Free_func_object_j(r3)
add r7,r6,r5
sw temp71(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,0
sw temp72(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
lw r5,temp72(r1)
sw func_Global_Free_func_object_k(r3),r5
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
FOR_marker_26
addi r6, r0,3
sw temp73(r0),r6
sub r6,r6,r6
addi r3,r0,0
lw r6,func_Global_Free_func_object_k(r3)
addi r3,r0,0
lw r5,temp73(r3)
clt r1,r6,r5
bz r1,END_FOR_marker_27
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,1
sw temp74(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp74(r3)
addi r1,r0,0
lw r6,func_Global_Free_func_object_k(r1)
add r7,r6,r5
sw temp75(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
% compute array offset
lw r3,func_Global_Free_func_object_m(r0)
muli r1,r3,2
lw r5,func_Global_Free_func_object_n(r0)
add r3,r1,r5
muli r3,r3,112
sw temp78(r0),r3
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
% compute array offset
lw r5,func_Global_Free_func_object_i(r0)
muli r1,r5,3
lw r3,func_Global_Free_func_object_j(r0)
add r5,r1,r3
muli r1,r5,3
lw r3,func_Global_Free_func_object_k(r0)
add r5,r1,r3
muli r5,r5,4
lw r1,temp78(r0)
add r5,r5,r1
sw temp78(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
% compute array offset
lw r3,func_Global_Free_func_object_i(r0)
muli r1,r3,3
lw r5,func_Global_Free_func_object_j(r0)
add r3,r1,r5
muli r1,r3,3
lw r5,func_Global_Free_func_object_k(r0)
add r3,r1,r5
muli r3,r3,4
sw temp85(r0),r3
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
lw r5,temp85(r0)
addi r5,r5,0
addi r1,r0,0
% copy memory from func_Global_Free_func_object_arr to temp86_arr: 4
lw r3,func_Global_Free_func_object_arr(r5)
sw temp86_arr(r1),r3
addi r5,r5,4
addi r1,r1,4
% END: copy memory from func_Global_Free_func_object_arr to temp86_arr: 4
sub r3,r3,r3
sub r5,r5,r5
sub r1,r1,r1
addi r1,r0,0
lw r5,temp78(r0)
addi r5,r5,4
lw r3,temp86_arr(r1)
sw func_Global_Free_func_object_aaa(r5),r3
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r6,r6,r6
lw r3,temp75(r0)
sw func_Global_Free_func_object_k(r0),r3
j FOR_marker_26

END_FOR_marker_27
lw r1,temp71(r0)
sw func_Global_Free_func_object_j(r0),r1
j FOR_marker_24

END_FOR_marker_25
lw r3,temp67(r0)
sw func_Global_Free_func_object_i(r0),r3
j FOR_marker_22

END_FOR_marker_23
lw r1,temp63(r0)
sw func_Global_Free_func_object_m(r0),r1
j FOR_marker_20

END_FOR_marker_21
lw r3,temp59(r0)
sw func_Global_Free_func_object_m(r0),r3
j FOR_marker_18

END_FOR_marker_19
addi r6, r0,0
sw temp87(r0),r6
sub r6,r6,r6
addi r6,r0,0
addi r3,r0,0
lw r1,temp87(r6)
sw func_Global_Free_func_object_jkl(r3),r1
sub r3,r3,r3
sub r6,r6,r6
sub r1,r1,r1
sub r5,r5,r5
addi r5, r0,0
sw temp88(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r1,r0,0
lw r6,temp88(r5)
sw func_Global_Free_func_object_p(r1),r6
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
FOR_marker_28
addi r3, r0,2
sw temp89(r0),r3
sub r3,r3,r3
addi r1,r0,0
lw r3,func_Global_Free_func_object_p(r1)
addi r1,r0,0
lw r6,temp89(r1)
clt r5,r3,r6
bz r5,END_FOR_marker_29
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
addi r1, r0,1
sw temp90(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r6,temp90(r1)
addi r5,r0,0
lw r3,func_Global_Free_func_object_p(r5)
add r7,r3,r6
sw temp91(r0),r7
sub r7,r7,r7
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
addi r1, r0,0
sw temp92(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r5,r0,0
lw r6,temp92(r1)
sw func_Global_Free_func_object_t(r5),r6
sub r5,r5,r5
sub r1,r1,r1
sub r6,r6,r6
sub r3,r3,r3
FOR_marker_30
addi r3, r0,2
sw temp93(r0),r3
sub r3,r3,r3
addi r5,r0,0
lw r3,func_Global_Free_func_object_t(r5)
addi r5,r0,0
lw r6,temp93(r5)
clt r1,r3,r6
bz r1,END_FOR_marker_31
sub r3,r3,r3
sub r6,r6,r6
sub r1,r1,r1
sub r5,r5,r5
addi r5, r0,1
sw temp94(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r6,temp94(r5)
addi r1,r0,0
lw r3,func_Global_Free_func_object_t(r1)
add r7,r3,r6
sw temp95(r0),r7
sub r7,r7,r7
sub r3,r3,r3
sub r6,r6,r6
sub r1,r1,r1
sub r5,r5,r5
% compute array offset
lw r5,func_Global_Free_func_object_jkl(r0)
muli r5,r5,4
sw temp97(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r6,r6,r6
% compute array offset
lw r6,func_Global_Free_func_object_p(r0)
muli r1,r6,2
lw r5,func_Global_Free_func_object_t(r0)
add r6,r1,r5
muli r6,r6,112
sw temp100(r0),r6
sub r6,r6,r6
sub r1,r1,r1
sub r5,r5,r5
addi r5,r0,0
addi r1,r0,0
% copy memory from func_Global_Free_func_object_aaa to Global_AAA: 112
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
lw r6,func_Global_Free_func_object_aaa(r5)
sw Global_AAA(r1),r6
addi r5,r5,4
addi r1,r1,4
% END: copy memory from func_Global_Free_func_object_aaa to Global_AAA: 112
sub r6,r6,r6
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
addi r1, r0, func_Global_AAA_computeSum
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_AAA_computeSumEND_PARAMETER_MARKER
subi r5, r5, func_Global_AAA_computeSum
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
jl  r15,FUNC_Global_AAA_computeSum_marker
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
% copy memory from Global_AAA to func_Global_Free_func_object_aaa: 112
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
lw r6,Global_AAA(r1)
sw func_Global_Free_func_object_aaa(r5),r6
addi r1,r1,4
addi r5,r5,4
% END: copy memory from Global_AAA to func_Global_Free_func_object_aaa: 112
sub r6,r6,r6
sub r1,r1,r1
sub r5,r5,r5
addi r5,r0,0
lw r1,temp97(r0)
addi r1,r1,0
lw r6,retVal_Global_AAA_computeSum_func(r5)
sw func_Global_Free_func_object_array_sum(r1),r6
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
addi r3, r0,1
sw temp101(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp101(r3)
addi r6,r0,0
lw r1,func_Global_Free_func_object_jkl(r6)
add r7,r1,r5
sw temp102(r0),r7
sub r7,r7,r7
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
addi r3,r0,0
addi r6,r0,0
lw r5,temp102(r3)
sw func_Global_Free_func_object_jkl(r6),r5
sub r6,r6,r6
sub r3,r3,r3
sub r5,r5,r5
sub r1,r1,r1
lw r5,temp95(r0)
sw func_Global_Free_func_object_t(r0),r5
j FOR_marker_30

END_FOR_marker_31
lw r1,temp91(r0)
sw func_Global_Free_func_object_p(r0),r1
j FOR_marker_28

END_FOR_marker_29
addi r1, r0,0
sw temp103(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r5,r0,0
lw r3,temp103(r1)
sw func_Global_Free_func_object_jk(r5),r3
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r6,r6,r6
FOR_marker_32
addi r6, r0,4
sw temp104(r0),r6
sub r6,r6,r6
addi r5,r0,0
lw r6,func_Global_Free_func_object_jk(r5)
addi r5,r0,0
lw r3,temp104(r5)
clt r1,r6,r3
bz r1,END_FOR_marker_33
sub r6,r6,r6
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
addi r5, r0,1
sw temp105(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r3,temp105(r5)
addi r1,r0,0
lw r6,func_Global_Free_func_object_jk(r1)
add r7,r6,r3
sw temp106(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
% compute array offset
lw r5,func_Global_Free_func_object_jk(r0)
muli r5,r5,4
sw temp108(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
lw r3,temp108(r0)
addi r3,r3,0
addi r1,r0,0
% copy memory from func_Global_Free_func_object_array_sum to temp109_array_sum: 4
lw r5,func_Global_Free_func_object_array_sum(r3)
sw temp109_array_sum(r1),r5
addi r3,r3,4
addi r1,r1,4
% END: copy memory from func_Global_Free_func_object_array_sum to temp109_array_sum: 4
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
lw r5,temp109_array_sum(r1)
addi r3,r0,0
lw r6,func_Global_Free_func_object_total_sum(r3)
add r7,r6,r5
sw temp110(r0),r7
sub r7,r7,r7
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
lw r5,temp110(r1)
sw func_Global_Free_func_object_total_sum(r3),r5
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
% compute array offset
lw r6,func_Global_Free_func_object_jk(r0)
muli r6,r6,4
sw temp112(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r1,r1,r1
lw r1,temp112(r0)
addi r1,r1,0
addi r5,r0,0
% copy memory from func_Global_Free_func_object_array_sum to temp113_array_sum: 4
lw r6,func_Global_Free_func_object_array_sum(r1)
sw temp113_array_sum(r5),r6
addi r1,r1,4
addi r5,r5,4
% END: copy memory from func_Global_Free_func_object_array_sum to temp113_array_sum: 4
sub r6,r6,r6
sub r1,r1,r1
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
addi r1,r0,0
addi r5,r0,0
add r5,r5,r1
lw r14,temp113_array_sum(r5)
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
sub r1,r1,r1
lw r5,temp106(r0)
sw func_Global_Free_func_object_jk(r0),r5
j FOR_marker_32

END_FOR_marker_33
addi r5,r0,0
lw r6,func_Global_Free_func_object_total_sum(r5)
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
addi r3, r0, func_Global_Free_func_object
addi r4, r0, 0
addi r5, r0, FUNC_Global_Free_func_objectEND_PARAMETER_MARKER
subi r5, r5, func_Global_Free_func_object
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
sw retVal_Global_Free_func_object_func(r0),r6
sub r6,r6,r6
sub r5,r5,r5
jr  r15
end_program_marker
hlt
putint   add    r5,r0,r0         % c := 0 (character)
         add    r6,r0,r0         % s := 0 (sign)
         addi   r3,r0,endbuf     % p is the buffer pointer
         cge    r7,r14,r0
         bnz    r7,putint1       % branch if n >= 0
         addi   r6,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r5,r14,10         % c := n mod 10
         addi   r5,r5,48         % c := c + '0'
         subi   r3,r3,1          % p := p - 1
         sb     0(r3),r5         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r6,putint2       % branch if n >= 0
         addi   r5,r0,45         % c := '-'
         subi   r3,r3,1          % p := p - 1
         sb     0(r3),r5         % buf[p] := c
putint2  lb     r5,0(r3)         % c := buf[p]
         putc   r5               % write c
         addi   r3,r3,1          % p := p + 1
         cgei   r7,r3,endbuf
         bz     r7,putint2       % branch if more digits
		lb r5,cr(r0)			%load carage return character code into a register => ADDED BY VIKA
         putc   r5
         jr     r15              % return
         res    20               % digit buffer
endbuf
cr db 10 		%declar a carage return code   ADDED BY VIKA
align
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
sub r7,r7,r7
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

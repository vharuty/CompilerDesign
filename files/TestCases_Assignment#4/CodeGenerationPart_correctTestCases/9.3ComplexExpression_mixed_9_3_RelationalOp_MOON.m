   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
program_array1
res 100
program_param1 dw 0
program_param2 dw 0
program_k dw 0
program_result dw 0
temp0  dw 0
program_i dw 0
temp1  dw 0
temp2  dw 0
temp3  dw 0
temp4  dw 0
program_j dw 0
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
temp15  dw 0
temp16  dw 0
temp17  dw 0
temp18  dw 0
temp19  dw 0
temp20  dw 0
temp21  dw 0
temp22  dw 0
temp23  dw 0
temp24  dw 0
temp25  dw 0
temp26  dw 0
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
temp37  dw 0
temp38  dw 0
temp39  dw 0
temp40  dw 0
temp41  dw 0
temp42  dw 0
temp43  dw 0
temp44  dw 0
temp45  dw 0
temp46  dw 0
temp47  dw 0
temp48  dw 0
temp49  dw 0
temp50  dw 0
temp51  dw 0
temp52  dw 0
temp53  dw 0
temp54  dw 0
temp55  dw 0
temp56  dw 0
temp57  dw 0
temp58  dw 0
temp59  dw 0
temp60  dw 0
temp61  dw 0
temp62  dw 0
temp63  dw 0
temp64  dw 0
temp65  dw 0
func_Global_free_func1
retVal_Global_free_func1_func dw 0
func_Global_free_func1_intParam2 dw 0
func_Global_free_func1_intParame1 dw 0
func_Global_free_func1_b
res 100
func_Global_free_func1_result dw 0
temp66  dw 0
temp67  dw 0
FUNC_Global_free_func1END_PARAMETER_MARKER
func_Global_free_func2
retVal_Global_free_func2_func dw 0
func_Global_free_func2_b
res 100
func_Global_free_func2_intParam1 dw 0
func_Global_free_func2_intParam2 dw 0
func_Global_free_func2_finalResult dw 0
func_Global_free_func2_result dw 0
func_Global_free_func2_localArray
res 100
func_Global_free_func2_k dw 0
temp68  dw 0
temp69  dw 0
func_Global_free_func2_i dw 0
temp70  dw 0
temp71  dw 0
temp72  dw 0
temp73  dw 0
func_Global_free_func2_j dw 0
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
temp84_b dw 0
temp85  dw 0
temp86  dw 0
temp87  dw 0
temp88  dw 0
temp89  dw 0
temp90_localArray dw 0
temp91  dw 0
temp92  dw 0
temp93  dw 0
temp94  dw 0
temp95  dw 0
temp96  dw 0
temp97  dw 0
temp98_b dw 0
temp99  dw 0
temp100  dw 0
temp101  dw 0
temp102  dw 0
temp103  dw 0
temp104_localArray dw 0
temp105  dw 0
temp106  dw 0
temp107  dw 0
temp108  dw 0
temp109  dw 0
temp110_b dw 0
temp111  dw 0
temp112  dw 0
temp113  dw 0
temp114  dw 0
temp115  dw 0
temp116  dw 0
temp117  dw 0
FUNC_Global_free_func2END_PARAMETER_MARKER
func_Global_free_func3
retVal_Global_free_func3_func dw 0
func_Global_free_func3_b
res 100
func_Global_free_func3_intParam1 dw 0
func_Global_free_func3_intParam2 dw 0
func_Global_free_func3_result1 dw 0
func_Global_free_func3_result2 dw 0
temp118  dw 0
temp119  dw 0
temp120  dw 0
temp121  dw 0
temp122  dw 0
temp123_b dw 0
temp124  dw 0
temp125  dw 0
temp126  dw 0
temp127  dw 0
temp128  dw 0
temp129_b dw 0
temp130  dw 0
temp131  dw 0
temp132  dw 0
temp133  dw 0
temp134  dw 0
temp135  dw 0
temp136_b dw 0
temp137  dw 0
temp138  dw 0
temp139  dw 0
temp140  dw 0
temp141  dw 0
temp142  dw 0
FUNC_Global_free_func3END_PARAMETER_MARKER
   org  3376
   align
   entry
   jl r15, program
   j end_program_marker
program
addi r1, r0,2
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
addi r2, r0,4
sw temp2(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r2,program_i(r3)
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
lw r2,program_i(r4)
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
sw program_j(r4),r1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
FOR_marker_2
addi r2, r0,4
sw temp6(r0),r2
sub r2,r2,r2
addi r4,r0,0
lw r2,program_j(r4)
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
lw r2,program_j(r3)
add r5,r2,r1
sw temp8(r0),r5
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
% compute array offset
lw r4,program_i(r0)
muli r3,r4,5
lw r1,program_j(r0)
add r4,r3,r1
muli r4,r4,4
sw temp11(r0),r4
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
addi r5,r0,0
lw r4,program_j(r5)
addi r5,r0,0
lw r2,program_i(r5)
mul r6,r2,r4
sw temp12(r0),r6
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r2,r2,r2
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
lw r6,temp11(r0)
addi r6,r6,0
lw r2,temp12(r5)
sw program_array1(r6),r2
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
lw r4,temp8(r0)
sw program_j(r0),r4
j FOR_marker_2

END_FOR_marker_3
lw r3,temp4(r0)
sw program_i(r0),r3
j FOR_marker_0

END_FOR_marker_1
addi r4,r0,0
lw r5,program_j(r4)
addi r2,r0,0
lw r6,program_i(r2)
add r3,r6,r5
sw temp13(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r4,r0,0
lw r5,program_k(r4)
addi r2,r0,0
lw r6,temp13(r2)
add r3,r6,r5
sw temp14(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r4,r0,0
addi r2,r0,0
lw r5,temp14(r4)
sw program_param1(r2),r5
sub r2,r2,r2
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
addi r3,r0,0
lw r4,program_j(r3)
addi r3,r0,0
lw r2,program_i(r3)
mul r1,r2,r4
sw temp15(r0),r1
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r5,r0,0
lw r2,program_k(r5)
addi r5,r0,0
lw r4,temp15(r5)
mul r6,r4,r2
sw temp16(r0),r6
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
lw r4,temp16(r5)
sw program_param2(r6),r4
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
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
jl  r15,getint
addi r2,r0,0
sw program_k(r2), r14
sub r2,r2,r2
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
addi r1, r0, func_Global_free_func3
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func3END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func3
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
addi r4,r0,0
% copy memory from program_array1 to func_Global_free_func3_b: 100
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
% END: copy memory from program_array1 to func_Global_free_func3_b: 100
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r4, r0,6
sw temp17(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r2,r0,0
% copy memory from temp17 to func_Global_free_func3_intParam1: 4
lw r5,temp17(r4)
sw func_Global_free_func3_intParam1(r2),r5
addi r4,r4,4
addi r2,r2,4
% END: copy memory from temp17 to func_Global_free_func3_intParam1: 4
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2, r0,7
sw temp18(r0),r2
sub r2,r2,r2
addi r2, r0,4
sw temp19(r0),r2
sub r2,r2,r2
addi r1,r0,0
lw r5,temp19(r1)
addi r1,r0,0
lw r6,temp18(r1)
mul r3,r6,r5
sw temp20(r0),r3
sub r2,r2,r2
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,8
sw temp21(r0),r1
sub r1,r1,r1
addi r3,r0,0
lw r1,temp21(r3)
sub  r1,r0,r1
sw temp22(r0),r1
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r6,temp22(r3)
addi r1,r0,0
lw r5,temp20(r1)
add r4,r5,r6
sw temp23(r0),r4
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
% copy memory from temp23 to func_Global_free_func3_intParam2: 4
lw r6,temp23(r3)
sw func_Global_free_func3_intParam2(r1),r6
addi r3,r3,4
addi r1,r1,4
% END: copy memory from temp23 to func_Global_free_func3_intParam2: 4
sub r6,r6,r6
sub r3,r3,r3
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
jl  r15,FUNC_Global_free_func3_marker
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
addi r1, r0,2
sw temp24(r0),r1
sub r1,r1,r1
addi r4,r0,0
lw r6,temp24(r4)
addi r4,r0,0
lw r5,retVal_Global_free_func3_func(r4)
div r2,r5,r6
sw temp25(r0),r2
sub r1,r1,r1
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_free_func1
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func1END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func1
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
addi r4,r0,0
addi r2,r0,0
% copy memory from program_param2 to func_Global_free_func1_intParam2: 4
lw r5,program_param2(r4)
sw func_Global_free_func1_intParam2(r2),r5
addi r4,r4,4
addi r2,r2,4
% END: copy memory from program_param2 to func_Global_free_func1_intParam2: 4
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2,r0,0
addi r4,r0,0
% copy memory from program_param1 to func_Global_free_func1_intParame1: 4
lw r5,program_param1(r2)
sw func_Global_free_func1_intParame1(r4),r5
addi r2,r2,4
addi r4,r4,4
% END: copy memory from program_param1 to func_Global_free_func1_intParame1: 4
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r4,r0,0
addi r2,r0,0
% copy memory from program_array1 to func_Global_free_func1_b: 100
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
lw r5,program_array1(r4)
sw func_Global_free_func1_b(r2),r5
addi r4,r4,4
addi r2,r2,4
% END: copy memory from program_array1 to func_Global_free_func1_b: 100
sub r5,r5,r5
sub r4,r4,r4
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
jl  r15,FUNC_Global_free_func1_marker
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
lw r5,retVal_Global_free_func1_func(r2)
addi r4,r0,0
lw r6,temp25(r4)
or r3,r6,r5
sw temp26(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_free_func3
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func3END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func3
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
addi r4,r0,0
% copy memory from program_array1 to func_Global_free_func3_b: 100
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
lw r5,program_array1(r2)
sw func_Global_free_func3_b(r4),r5
addi r2,r2,4
addi r4,r4,4
% END: copy memory from program_array1 to func_Global_free_func3_b: 100
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r4, r0,6
sw temp27(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r2,r0,0
% copy memory from temp27 to func_Global_free_func3_intParam1: 4
lw r5,temp27(r4)
sw func_Global_free_func3_intParam1(r2),r5
addi r4,r4,4
addi r2,r2,4
% END: copy memory from temp27 to func_Global_free_func3_intParam1: 4
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2, r0,7
sw temp28(r0),r2
sub r2,r2,r2
addi r2, r0,4
sw temp29(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r5,temp29(r3)
addi r3,r0,0
lw r6,temp28(r3)
and r1,r6,r5
sw temp30(r0),r1
sub r2,r2,r2
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,8
sw temp31(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r6,temp31(r3)
addi r1,r0,0
lw r5,temp30(r1)
add r4,r5,r6
sw temp32(r0),r4
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
% copy memory from temp32 to func_Global_free_func3_intParam2: 4
lw r6,temp32(r3)
sw func_Global_free_func3_intParam2(r1),r6
addi r3,r3,4
addi r1,r1,4
% END: copy memory from temp32 to func_Global_free_func3_intParam2: 4
sub r6,r6,r6
sub r3,r3,r3
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
jl  r15,FUNC_Global_free_func3_marker
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
addi r1, r0,2
sw temp33(r0),r1
sub r1,r1,r1
addi r4,r0,0
lw r6,temp33(r4)
addi r4,r0,0
lw r5,retVal_Global_free_func3_func(r4)
div r2,r5,r6
sw temp34(r0),r2
sub r1,r1,r1
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
addi r4, r0,10
sw temp35(r0),r4
sub r4,r4,r4
addi r2,r0,0
lw r4,temp35(r2)
sub  r4,r0,r4
sw temp36(r0),r4
sub r4,r4,r4
sub r2,r2,r2
addi r2,r0,0
lw r5,temp36(r2)
addi r4,r0,0
lw r6,temp34(r4)
sub r3,r6,r5
sw temp37(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2,r0,0
lw r5,temp37(r2)
addi r4,r0,0
lw r6,temp26(r4)
sub r3,r6,r5
sw temp38(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2, r0,3
sw temp39(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r5,temp39(r2)
addi r4,r0,0
lw r6,temp38(r4)
or r3,r6,r5
sw temp40(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2,r0,0
lw r5,program_k(r2)
addi r4,r0,0
lw r6,temp40(r4)
add r3,r6,r5
sw temp41(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
addi r2, r0,43
sw temp42(r0),r2
sub r2,r2,r2
addi r6,r0,0
lw r2,temp41(r6)
addi r6,r0,0
lw r4,temp42(r6)
cge r5,r2,r4
bz r5,ELSE_IF_marker_5
sub r2,r2,r2
sub r4,r4,r4
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
addi r1, r0, func_Global_free_func3
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func3END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func3
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
% copy memory from program_array1 to func_Global_free_func3_b: 100
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
lw r4,program_array1(r6)
sw func_Global_free_func3_b(r5),r4
addi r6,r6,4
addi r5,r5,4
% END: copy memory from program_array1 to func_Global_free_func3_b: 100
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
addi r5, r0,6
sw temp43(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
% copy memory from temp43 to func_Global_free_func3_intParam1: 4
lw r4,temp43(r5)
sw func_Global_free_func3_intParam1(r6),r4
addi r5,r5,4
addi r6,r6,4
% END: copy memory from temp43 to func_Global_free_func3_intParam1: 4
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
addi r6, r0,7
sw temp44(r0),r6
sub r6,r6,r6
addi r6, r0,4
sw temp45(r0),r6
sub r6,r6,r6
addi r3,r0,0
lw r4,temp45(r3)
addi r3,r0,0
lw r2,temp44(r3)
mul r1,r2,r4
sw temp46(r0),r1
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,8
sw temp47(r0),r3
sub r3,r3,r3
addi r1,r0,0
lw r3,temp47(r1)
sub  r3,r0,r3
sw temp48(r0),r3
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
lw r2,temp48(r1)
addi r3,r0,0
lw r4,temp46(r3)
add r5,r4,r2
sw temp49(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r3,r3,r3
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
% copy memory from temp49 to func_Global_free_func3_intParam2: 4
lw r2,temp49(r1)
sw func_Global_free_func3_intParam2(r3),r2
addi r1,r1,4
addi r3,r3,4
% END: copy memory from temp49 to func_Global_free_func3_intParam2: 4
sub r2,r2,r2
sub r1,r1,r1
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
jl  r15,FUNC_Global_free_func3_marker
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
addi r3, r0,2
sw temp50(r0),r3
sub r3,r3,r3
addi r5,r0,0
lw r2,temp50(r5)
addi r5,r0,0
lw r4,retVal_Global_free_func3_func(r5)
div r6,r4,r2
sw temp51(r0),r6
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
addi r5, r0,120
sw temp52(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r4,program_k(r5)
addi r6,r0,0
lw r2,temp52(r6)
add r1,r2,r4
sw temp53(r0),r1
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
addi r2,r0,0
lw r5,temp51(r2)
addi r2,r0,0
lw r6,temp53(r2)
ceq r4,r5,r6
bz r4,ELSE_IF_marker_7
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
sub r2,r2,r2
addi r2,r0,0
lw r6,program_result(r2)
addi r4,r0,0
lw r5,program_result(r4)
sub r1,r5,r6
sw temp54(r0),r1
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
sub r2,r2,r2
addi r2,r0,0
lw r6,temp54(r2)
not r6,r6
sw temp55(r0),r6
sub r6,r6,r6
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
addi r6,r0,0
addi r4,r0,0
add r4,r4,r6
lw r14,temp55(r4)
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
sub r6,r6,r6
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
addi r1, r0, func_Global_free_func3
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func3END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func3
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
addi r4,r0,0
% copy memory from program_array1 to func_Global_free_func3_b: 100
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,program_array1(r6)
sw func_Global_free_func3_b(r4),r5
addi r6,r6,4
addi r4,r4,4
% END: copy memory from program_array1 to func_Global_free_func3_b: 100
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
addi r4, r0,6
sw temp56(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r6,r0,0
% copy memory from temp56 to func_Global_free_func3_intParam1: 4
lw r5,temp56(r4)
sw func_Global_free_func3_intParam1(r6),r5
addi r4,r4,4
addi r6,r6,4
% END: copy memory from temp56 to func_Global_free_func3_intParam1: 4
sub r5,r5,r5
sub r4,r4,r4
sub r6,r6,r6
addi r6, r0,7
sw temp57(r0),r6
sub r6,r6,r6
addi r6, r0,4
sw temp58(r0),r6
sub r6,r6,r6
addi r3,r0,0
lw r5,temp58(r3)
addi r3,r0,0
lw r1,temp57(r3)
mul r7,r1,r5
sw temp59(r0),r7
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r7,r7,r7
sub r3,r3,r3
addi r3, r0,8
sw temp60(r0),r3
sub r3,r3,r3
addi r7,r0,0
lw r3,temp60(r7)
sub  r3,r0,r3
sw temp61(r0),r3
sub r3,r3,r3
sub r7,r7,r7
addi r7,r0,0
lw r1,temp61(r7)
addi r3,r0,0
lw r5,temp59(r3)
add r4,r5,r1
sw temp62(r0),r4
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r7,r7,r7
addi r7,r0,0
addi r3,r0,0
% copy memory from temp62 to func_Global_free_func3_intParam2: 4
lw r1,temp62(r7)
sw func_Global_free_func3_intParam2(r3),r1
addi r7,r7,4
addi r3,r3,4
% END: copy memory from temp62 to func_Global_free_func3_intParam2: 4
sub r1,r1,r1
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
jl  r15,FUNC_Global_free_func3_marker
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
addi r3, r0,2
sw temp63(r0),r3
sub r3,r3,r3
addi r4,r0,0
lw r1,temp63(r4)
addi r4,r0,0
lw r5,retVal_Global_free_func3_func(r4)
div r6,r5,r1
sw temp64(r0),r6
sub r3,r3,r3
sub r7,r7,r7
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
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
addi r6,r0,0
addi r4,r0,0
add r4,r4,r6
lw r14,temp64(r4)
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
sub r6,r6,r6
END_IF_marker_6	nop
j END_IF_marker_4
ELSE_IF_marker_5	nop
addi r6, r0,43
sw temp65(r0),r6
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
addi r4,r0,0
addi r6,r0,0
add r6,r6,r4
lw r14,temp65(r6)
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
sub r4,r4,r4
END_IF_marker_4	nop
j end_program_marker
FUNC_Global_free_func1_marker
sub r4,r4,r4
sub r6,r6,r6
sub r6,r6,r6
sub r4,r4,r4
sub r4,r4,r4
sub r6,r6,r6
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_free_func2
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func2END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func2
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
addi r4,r0,0
% copy memory from func_Global_free_func1_b to func_Global_free_func2_b: 100
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
lw r5,func_Global_free_func1_b(r6)
sw func_Global_free_func2_b(r4),r5
addi r6,r6,4
addi r4,r4,4
% END: copy memory from func_Global_free_func1_b to func_Global_free_func2_b: 100
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
addi r4,r0,0
addi r6,r0,0
% copy memory from func_Global_free_func1_intParame1 to func_Global_free_func2_intParam1: 4
lw r5,func_Global_free_func1_intParame1(r4)
sw func_Global_free_func2_intParam1(r6),r5
addi r4,r4,4
addi r6,r6,4
% END: copy memory from func_Global_free_func1_intParame1 to func_Global_free_func2_intParam1: 4
sub r5,r5,r5
sub r4,r4,r4
sub r6,r6,r6
addi r6, r0,2
sw temp66(r0),r6
sub r6,r6,r6
addi r7,r0,0
lw r5,temp66(r7)
addi r7,r0,0
lw r1,func_Global_free_func1_intParam2(r7)
mul r3,r1,r5
sw temp67(r0),r3
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r7,r7,r7
addi r7,r0,0
addi r3,r0,0
% copy memory from temp67 to func_Global_free_func2_intParam2: 4
lw r1,temp67(r7)
sw func_Global_free_func2_intParam2(r3),r1
addi r7,r7,4
addi r3,r3,4
% END: copy memory from temp67 to func_Global_free_func2_intParam2: 4
sub r1,r1,r1
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
jl  r15,FUNC_Global_free_func2_marker
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
addi r7,r0,0
lw r1,retVal_Global_free_func2_func(r3)
sw func_Global_free_func1_result(r7),r1
sub r7,r7,r7
sub r3,r3,r3
sub r1,r1,r1
sub r5,r5,r5
addi r1,r0,0
lw r3,func_Global_free_func1_result(r1)
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
addi r3, r0, func_Global_free_func1
addi r4, r0, 0
addi r5, r0, FUNC_Global_free_func1END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func1
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
sw retVal_Global_free_func1_func(r0),r3
sub r3,r3,r3
sub r1,r1,r1
jr  r15
FUNC_Global_free_func2_marker
sub r1,r1,r1
sub r3,r3,r3
sub r3,r3,r3
sub r1,r1,r1
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r7,func_Global_free_func2_intParam2(r3)
addi r1,r0,0
lw r4,func_Global_free_func2_intParam1(r1)
add r6,r4,r7
sw temp68(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
lw r7,temp68(r3)
sw func_Global_free_func2_finalResult(r1),r7
sub r1,r1,r1
sub r3,r3,r3
sub r7,r7,r7
sub r4,r4,r4
addi r4, r0,3
sw temp69(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r7,r0,0
lw r3,temp69(r4)
sw func_Global_free_func2_k(r7),r3
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,0
sw temp70(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r3,r0,0
lw r4,temp70(r1)
sw func_Global_free_func2_i(r3),r4
sub r3,r3,r3
sub r1,r1,r1
sub r4,r4,r4
sub r7,r7,r7
FOR_marker_8
addi r7, r0,3
sw temp71(r0),r7
sub r7,r7,r7
addi r3,r0,0
lw r7,func_Global_free_func2_i(r3)
addi r3,r0,0
lw r4,temp71(r3)
cle r1,r7,r4
bz r1,END_FOR_marker_9
sub r7,r7,r7
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,1
sw temp72(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r4,temp72(r3)
addi r1,r0,0
lw r7,func_Global_free_func2_i(r1)
add r6,r7,r4
sw temp73(r0),r6
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,0
sw temp74(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r1,r0,0
lw r4,temp74(r3)
sw func_Global_free_func2_j(r1),r4
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r7,r7,r7
FOR_marker_10
addi r7, r0,3
sw temp75(r0),r7
sub r7,r7,r7
addi r1,r0,0
lw r7,func_Global_free_func2_j(r1)
addi r1,r0,0
lw r4,temp75(r1)
cle r3,r7,r4
bz r3,END_FOR_marker_11
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
addi r1, r0,1
sw temp76(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r4,temp76(r1)
addi r3,r0,0
lw r7,func_Global_free_func2_j(r3)
add r6,r7,r4
sw temp77(r0),r6
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
% compute array offset
lw r1,func_Global_free_func2_i(r0)
muli r3,r1,5
lw r4,func_Global_free_func2_j(r0)
add r1,r3,r4
muli r1,r1,4
sw temp80(r0),r1
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
% compute array offset
lw r4,func_Global_free_func2_i(r0)
muli r3,r4,5
lw r1,func_Global_free_func2_j(r0)
add r4,r3,r1
muli r4,r4,4
sw temp83(r0),r4
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
lw r1,temp83(r0)
addi r1,r1,0
addi r3,r0,0
% copy memory from func_Global_free_func2_b to temp84_b: 4
lw r4,func_Global_free_func2_b(r1)
sw temp84_b(r3),r4
addi r1,r1,4
addi r3,r3,4
% END: copy memory from func_Global_free_func2_b to temp84_b: 4
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r1,temp80(r0)
addi r1,r1,0
lw r4,temp84_b(r3)
sw func_Global_free_func2_localArray(r1),r4
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r7,r7,r7
lw r1,temp77(r0)
sw func_Global_free_func2_j(r0),r1
j FOR_marker_10

END_FOR_marker_11
lw r3,temp73(r0)
sw func_Global_free_func2_i(r0),r3
j FOR_marker_8

END_FOR_marker_9
addi r7, r0,2
sw temp86(r0),r7
sub r7,r7,r7
addi r7, r0,3
sw temp88(r0),r7
sub r7,r7,r7
% compute array offset
lw r7,temp86(r0)
muli r4,r7,5
lw r3,temp88(r0)
add r7,r4,r3
muli r7,r7,4
sw temp89(r0),r7
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
lw r3,temp89(r0)
addi r3,r3,0
addi r4,r0,0
% copy memory from func_Global_free_func2_localArray to temp90_localArray: 4
lw r7,func_Global_free_func2_localArray(r3)
sw temp90_localArray(r4),r7
addi r3,r3,4
addi r4,r4,4
% END: copy memory from func_Global_free_func2_localArray to temp90_localArray: 4
sub r7,r7,r7
sub r3,r3,r3
sub r4,r4,r4
addi r6,r0,0
lw r7,temp90_localArray(r6)
addi r6,r0,0
lw r1,func_Global_free_func2_finalResult(r6)
and r8,r1,r7
sw temp91(r0),r8
sub r4,r4,r4
sub r3,r3,r3
sub r7,r7,r7
sub r1,r1,r1
sub r8,r8,r8
sub r6,r6,r6
addi r6, r0,2
sw temp92(r0),r6
sub r6,r6,r6
addi r6, r0,2
sw temp94(r0),r6
sub r6,r6,r6
addi r6, r0,3
sw temp96(r0),r6
sub r6,r6,r6
% compute array offset
lw r6,temp94(r0)
muli r8,r6,5
lw r1,temp96(r0)
add r6,r8,r1
muli r6,r6,4
sw temp97(r0),r6
sub r6,r6,r6
sub r8,r8,r8
sub r1,r1,r1
lw r1,temp97(r0)
addi r1,r1,0
addi r8,r0,0
% copy memory from func_Global_free_func2_b to temp98_b: 4
lw r6,func_Global_free_func2_b(r1)
sw temp98_b(r8),r6
addi r1,r1,4
addi r8,r8,4
% END: copy memory from func_Global_free_func2_b to temp98_b: 4
sub r6,r6,r6
sub r1,r1,r1
sub r8,r8,r8
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_free_func3
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_func3END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func3
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
addi r1,r0,0
% copy memory from func_Global_free_func2_localArray to func_Global_free_func3_b: 100
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
lw r6,func_Global_free_func2_localArray(r8)
sw func_Global_free_func3_b(r1),r6
addi r8,r8,4
addi r1,r1,4
% END: copy memory from func_Global_free_func2_localArray to func_Global_free_func3_b: 100
sub r6,r6,r6
sub r8,r8,r8
sub r1,r1,r1
addi r1, r0,2
sw temp100(r0),r1
sub r1,r1,r1
addi r1, r0,2
sw temp102(r0),r1
sub r1,r1,r1
% compute array offset
lw r1,temp100(r0)
muli r8,r1,5
lw r6,temp102(r0)
add r1,r8,r6
muli r1,r1,4
sw temp103(r0),r1
sub r1,r1,r1
sub r8,r8,r8
sub r6,r6,r6
lw r6,temp103(r0)
addi r6,r6,0
addi r8,r0,0
% copy memory from func_Global_free_func2_localArray to temp104_localArray: 4
lw r1,func_Global_free_func2_localArray(r6)
sw temp104_localArray(r8),r1
addi r6,r6,4
addi r8,r8,4
% END: copy memory from func_Global_free_func2_localArray to temp104_localArray: 4
sub r1,r1,r1
sub r6,r6,r6
sub r8,r8,r8
addi r8,r0,0
addi r6,r0,0
% copy memory from temp104_localArray to func_Global_free_func3_intParam1: 4
lw r1,temp104_localArray(r8)
sw func_Global_free_func3_intParam1(r6),r1
addi r8,r8,4
addi r6,r6,4
% END: copy memory from temp104_localArray to func_Global_free_func3_intParam1: 4
sub r1,r1,r1
sub r8,r8,r8
sub r6,r6,r6
addi r6, r0,1
sw temp106(r0),r6
sub r6,r6,r6
addi r6, r0,1
sw temp108(r0),r6
sub r6,r6,r6
% compute array offset
lw r6,temp106(r0)
muli r8,r6,5
lw r1,temp108(r0)
add r6,r8,r1
muli r6,r6,4
sw temp109(r0),r6
sub r6,r6,r6
sub r8,r8,r8
sub r1,r1,r1
lw r1,temp109(r0)
addi r1,r1,0
addi r8,r0,0
% copy memory from func_Global_free_func2_b to temp110_b: 4
lw r6,func_Global_free_func2_b(r1)
sw temp110_b(r8),r6
addi r1,r1,4
addi r8,r8,4
% END: copy memory from func_Global_free_func2_b to temp110_b: 4
sub r6,r6,r6
sub r1,r1,r1
sub r8,r8,r8
addi r8,r0,0
addi r1,r0,0
% copy memory from temp110_b to func_Global_free_func3_intParam2: 4
lw r6,temp110_b(r8)
sw func_Global_free_func3_intParam2(r1),r6
addi r8,r8,4
addi r1,r1,4
% END: copy memory from temp110_b to func_Global_free_func3_intParam2: 4
sub r6,r6,r6
sub r8,r8,r8
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
jl  r15,FUNC_Global_free_func3_marker
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
addi r1, r0,4
sw temp111(r0),r1
sub r1,r1,r1
addi r3,r0,0
lw r6,temp111(r3)
addi r3,r0,0
lw r7,retVal_Global_free_func3_func(r3)
div r4,r7,r6
sw temp112(r0),r4
sub r1,r1,r1
sub r8,r8,r8
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r7,temp112(r3)
addi r4,r0,0
lw r6,temp98_b(r4)
or r8,r6,r7
sw temp113(r0),r8
sub r8,r8,r8
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,10
sw temp114(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r7,temp114(r3)
addi r4,r0,0
lw r6,temp113(r4)
or r8,r6,r7
sw temp115(r0),r8
sub r8,r8,r8
sub r6,r6,r6
sub r7,r7,r7
sub r4,r4,r4
sub r3,r3,r3
addi r8,r0,0
lw r7,temp115(r8)
addi r8,r0,0
lw r6,temp92(r8)
and r1,r6,r7
sw temp116(r0),r1
sub r3,r3,r3
sub r4,r4,r4
sub r7,r7,r7
sub r6,r6,r6
sub r1,r1,r1
sub r8,r8,r8
addi r8,r0,0
lw r6,temp116(r8)
addi r1,r0,0
lw r7,temp91(r1)
add r4,r7,r6
sw temp117(r0),r4
sub r4,r4,r4
sub r7,r7,r7
sub r6,r6,r6
sub r1,r1,r1
sub r8,r8,r8
addi r1,r0,0
lw r6,temp117(r1)
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
addi r3, r0, func_Global_free_func2
addi r4, r0, 0
addi r5, r0, FUNC_Global_free_func2END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func2
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
sw retVal_Global_free_func2_func(r0),r6
sub r6,r6,r6
sub r1,r1,r1
jr  r15
FUNC_Global_free_func3_marker
sub r1,r1,r1
sub r6,r6,r6
sub r6,r6,r6
sub r1,r1,r1
sub r1,r1,r1
sub r6,r6,r6
addi r6, r0,2
sw temp119(r0),r6
sub r6,r6,r6
addi r6, r0,3
sw temp121(r0),r6
sub r6,r6,r6
% compute array offset
lw r6,temp119(r0)
muli r1,r6,5
lw r7,temp121(r0)
add r6,r1,r7
muli r6,r6,4
sw temp122(r0),r6
sub r6,r6,r6
sub r1,r1,r1
sub r7,r7,r7
lw r7,temp122(r0)
addi r7,r7,0
addi r1,r0,0
% copy memory from func_Global_free_func3_b to temp123_b: 4
lw r6,func_Global_free_func3_b(r7)
sw temp123_b(r1),r6
addi r7,r7,4
addi r1,r1,4
% END: copy memory from func_Global_free_func3_b to temp123_b: 4
sub r6,r6,r6
sub r7,r7,r7
sub r1,r1,r1
addi r1, r0,0
sw temp125(r0),r1
sub r1,r1,r1
addi r1, r0,1
sw temp127(r0),r1
sub r1,r1,r1
% compute array offset
lw r1,temp125(r0)
muli r7,r1,5
lw r6,temp127(r0)
add r1,r7,r6
muli r1,r1,4
sw temp128(r0),r1
sub r1,r1,r1
sub r7,r7,r7
sub r6,r6,r6
lw r6,temp128(r0)
addi r6,r6,0
addi r7,r0,0
% copy memory from func_Global_free_func3_b to temp129_b: 4
lw r1,func_Global_free_func3_b(r6)
sw temp129_b(r7),r1
addi r6,r6,4
addi r7,r7,4
% END: copy memory from func_Global_free_func3_b to temp129_b: 4
sub r1,r1,r1
sub r6,r6,r6
sub r7,r7,r7
addi r7,r0,0
lw r1,temp129_b(r7)
addi r6,r0,0
lw r4,temp123_b(r6)
or r3,r4,r1
sw temp130(r0),r3
sub r3,r3,r3
sub r4,r4,r4
sub r1,r1,r1
sub r6,r6,r6
sub r7,r7,r7
addi r7,r0,0
addi r6,r0,0
lw r1,temp130(r7)
sw func_Global_free_func3_result2(r6),r1
sub r6,r6,r6
sub r7,r7,r7
sub r1,r1,r1
sub r4,r4,r4
addi r4, r0,2
sw temp132(r0),r4
sub r4,r4,r4
addi r4, r0,3
sw temp134(r0),r4
sub r4,r4,r4
% compute array offset
lw r4,temp132(r0)
muli r1,r4,5
lw r7,temp134(r0)
add r4,r1,r7
muli r4,r4,4
sw temp135(r0),r4
sub r4,r4,r4
sub r1,r1,r1
sub r7,r7,r7
lw r7,temp135(r0)
addi r7,r7,0
addi r1,r0,0
% copy memory from func_Global_free_func3_b to temp136_b: 4
lw r4,func_Global_free_func3_b(r7)
sw temp136_b(r1),r4
addi r7,r7,4
addi r1,r1,4
% END: copy memory from func_Global_free_func3_b to temp136_b: 4
sub r4,r4,r4
sub r7,r7,r7
sub r1,r1,r1
addi r1,r0,0
lw r4,func_Global_free_func3_intParam1(r1)
addi r7,r0,0
lw r6,temp136_b(r7)
add r3,r6,r4
sw temp137(r0),r3
sub r3,r3,r3
sub r6,r6,r6
sub r4,r4,r4
sub r7,r7,r7
sub r1,r1,r1
addi r3,r0,0
lw r4,func_Global_free_func3_intParam2(r3)
addi r3,r0,0
lw r6,temp137(r3)
mul r9,r6,r4
sw temp138(r0),r9
sub r1,r1,r1
sub r7,r7,r7
sub r4,r4,r4
sub r6,r6,r6
sub r9,r9,r9
sub r3,r3,r3
addi r3,r0,0
addi r9,r0,0
lw r6,temp138(r3)
sw func_Global_free_func3_result1(r9),r6
sub r9,r9,r9
sub r3,r3,r3
sub r6,r6,r6
sub r4,r4,r4
addi r4, r0,3
sw temp139(r0),r4
sub r4,r4,r4
addi r4, r0,4
sw temp140(r0),r4
sub r4,r4,r4
addi r7,r0,0
lw r3,temp140(r7)
addi r7,r0,0
lw r9,temp139(r7)
and r1,r9,r3
sw temp141(r0),r1
sub r4,r4,r4
sub r6,r6,r6
sub r3,r3,r3
sub r9,r9,r9
sub r1,r1,r1
sub r7,r7,r7
addi r7,r0,0
lw r9,temp141(r7)
addi r1,r0,0
lw r3,func_Global_free_func3_result1(r1)
or r6,r3,r9
sw temp142(r0),r6
sub r6,r6,r6
sub r3,r3,r3
sub r9,r9,r9
sub r1,r1,r1
sub r7,r7,r7
addi r1,r0,0
lw r9,temp142(r1)
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
addi r3, r0, func_Global_free_func3
addi r4, r0, 0
addi r5, r0, FUNC_Global_free_func3END_PARAMETER_MARKER
subi r5, r5, func_Global_free_func3
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
sw retVal_Global_free_func3_func(r0),r9
sub r9,r9,r9
sub r1,r1,r1
jr  r15
end_program_marker
hlt
putint   add    r1,r0,r0         % c := 0 (character)
         add    r9,r0,r0         % s := 0 (sign)
         addi   r3,r0,endbuf     % p is the buffer pointer
         cge    r6,r14,r0
         bnz    r6,putint1       % branch if n >= 0
         addi   r9,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r1,r14,10         % c := n mod 10
         addi   r1,r1,48         % c := c + '0'
         subi   r3,r3,1          % p := p - 1
         sb     0(r3),r1         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r9,putint2       % branch if n >= 0
         addi   r1,r0,45         % c := '-'
         subi   r3,r3,1          % p := p - 1
         sb     0(r3),r1         % buf[p] := c
putint2  lb     r1,0(r3)         % c := buf[p]
         putc   r1               % write c
         addi   r3,r3,1          % p := p + 1
         cgei   r6,r3,endbuf
         bz     r6,putint2       % branch if more digits
		lb r1,cr(r0)			%load carage return character code into a register => ADDED BY VIKA
         putc   r1
         jr     r15              % return
         res    20               % digit buffer
endbuf
cr db 10 		%declar a carage return code   ADDED BY VIKA
align
sub r1,r1,r1
sub r9,r9,r9
sub r3,r3,r3
sub r6,r6,r6
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

   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
program_arr_1
res 400
program_value_line
res 40
program_value_col dw 0
program_small dw 0
program_big dw 0
program_even_count dw 0
program_odd_count dw 0
program_i dw 0
temp0  dw 0
temp1  dw 0
temp2  dw 0
temp3  dw 0
program_j dw 0
temp4  dw 0
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
temp24_arr_1 dw 0
temp25  dw 0
temp26  dw 0
temp27  dw 0
temp28  dw 0
program_k dw 0
temp29  dw 0
temp30  dw 0
temp31  dw 0
temp32  dw 0
program_l dw 0
temp33  dw 0
temp34  dw 0
temp35  dw 0
temp36  dw 0
temp37  dw 0
temp38  dw 0
temp39  dw 0
temp40_arr_1 dw 0
temp41  dw 0
temp42  dw 0
temp43  dw 0
temp44  dw 0
temp45  dw 0
temp46  dw 0
temp47  dw 0
temp48_arr_1 dw 0
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
program_p dw 0
temp59  dw 0
temp60  dw 0
temp61  dw 0
temp62  dw 0
temp63  dw 0
temp64  dw 0
temp65_value_line dw 0
func_Global_free_funct_compute
retVal_Global_free_funct_compute_func dw 0
func_Global_free_funct_compute_small dw 0
func_Global_free_funct_compute_big dw 0
func_Global_free_funct_compute_even_count dw 0
func_Global_free_funct_compute_odd_count dw 0
func_Global_free_funct_compute_arr_1
res 400
func_Global_free_funct_compute_i dw 0
temp66  dw 0
temp67  dw 0
temp68  dw 0
temp69  dw 0
func_Global_free_funct_compute_j dw 0
temp70  dw 0
temp71  dw 0
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
temp86  dw 0
func_Global_free_funct_compute_k dw 0
temp87  dw 0
temp88  dw 0
temp89  dw 0
temp90  dw 0
func_Global_free_funct_compute_l dw 0
temp91  dw 0
temp92  dw 0
temp93  dw 0
temp94  dw 0
temp95  dw 0
temp96  dw 0
temp97  dw 0
temp98_arr_1 dw 0
temp99  dw 0
temp100  dw 0
temp101  dw 0
temp102  dw 0
temp103  dw 0
temp104  dw 0
temp105  dw 0
temp106_arr_1 dw 0
temp107  dw 0
temp108  dw 0
temp109  dw 0
temp110  dw 0
temp111  dw 0
temp112  dw 0
temp113  dw 0
temp114  dw 0
temp115  dw 0
temp116  dw 0
temp117  dw 0
FUNC_Global_free_funct_computeEND_PARAMETER_MARKER
   org  3600
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
sw program_i(r2),r3
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
FOR_marker_0
addi r4, r0,9
sw temp1(r0),r4
sub r4,r4,r4
addi r2,r0,0
lw r4,program_i(r2)
addi r2,r0,0
lw r3,temp1(r2)
cle r1,r4,r3
bz r1,END_FOR_marker_1
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
addi r2, r0,1
sw temp2(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r3,temp2(r2)
addi r1,r0,0
lw r4,program_i(r1)
add r5,r4,r3
sw temp3(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
addi r2, r0,0
sw temp4(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r1,r0,0
lw r3,temp4(r2)
sw program_j(r1),r3
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
sub r4,r4,r4
FOR_marker_2
addi r4, r0,9
sw temp5(r0),r4
sub r4,r4,r4
addi r1,r0,0
lw r4,program_j(r1)
addi r1,r0,0
lw r3,temp5(r1)
cle r2,r4,r3
bz r2,END_FOR_marker_3
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,1
sw temp6(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r3,temp6(r1)
addi r2,r0,0
lw r4,program_j(r2)
add r5,r4,r3
sw temp7(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,5
sw temp8(r0),r1
sub r1,r1,r1
addi r4,r0,0
lw r1,program_i(r4)
addi r4,r0,0
lw r2,temp8(r4)
cge r3,r1,r2
bz r3,ELSE_IF_marker_5
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
sub r4,r4,r4
% compute array offset
lw r4,program_i(r0)
muli r3,r4,10
lw r2,program_j(r0)
add r4,r3,r2
muli r4,r4,4
sw temp11(r0),r4
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
addi r2,r0,0
lw r4,program_j(r2)
addi r3,r0,0
lw r1,program_i(r3)
add r5,r1,r4
sw temp12(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
addi r2,r0,0
lw r3,temp11(r0)
addi r3,r3,0
lw r4,temp12(r2)
sw program_arr_1(r3),r4
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
sub r1,r1,r1
addi r1, r0,1
sw temp13(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r2,temp13(r1)
addi r4,r0,0
lw r3,program_big(r4)
add r5,r3,r2
sw temp14(r0),r5
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
sub r1,r1,r1
addi r1,r0,0
addi r4,r0,0
lw r2,temp14(r1)
sw program_big(r4),r2
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
j END_IF_marker_4
ELSE_IF_marker_5	nop
% compute array offset
lw r3,program_i(r0)
muli r2,r3,10
lw r1,program_j(r0)
add r3,r2,r1
muli r3,r3,4
sw temp17(r0),r3
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r5,r0,0
lw r3,program_j(r5)
addi r5,r0,0
lw r4,program_j(r5)
mul r6,r4,r3
sw temp18(r0),r6
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
lw r6,temp17(r0)
addi r6,r6,0
lw r4,temp18(r5)
sw program_arr_1(r6),r4
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,1
sw temp19(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp19(r3)
addi r4,r0,0
lw r6,program_small(r4)
add r2,r6,r5
sw temp20(r0),r2
sub r2,r2,r2
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
addi r4,r0,0
lw r5,temp20(r3)
sw program_small(r4),r5
sub r4,r4,r4
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
END_IF_marker_4	nop
% compute array offset
lw r6,program_i(r0)
muli r5,r6,10
lw r3,program_j(r0)
add r6,r5,r3
muli r6,r6,4
sw temp23(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
lw r3,temp23(r0)
addi r3,r3,0
addi r5,r0,0
% copy memory from program_arr_1 to temp24_arr_1: 4
lw r6,program_arr_1(r3)
sw temp24_arr_1(r5),r6
addi r3,r3,4
addi r5,r5,4
% END: copy memory from program_arr_1 to temp24_arr_1: 4
sub r6,r6,r6
sub r3,r3,r3
sub r5,r5,r5
addi r5,r0,0
lw r6,temp24_arr_1(r5)
addi r3,r0,0
lw r4,program_value_col(r3)
add r2,r4,r6
sw temp25(r0),r2
sub r2,r2,r2
sub r4,r4,r4
sub r6,r6,r6
sub r3,r3,r3
sub r5,r5,r5
addi r5,r0,0
addi r3,r0,0
lw r6,temp25(r5)
sw program_value_col(r3),r6
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
lw r1,temp7(r0)
sw program_j(r0),r1
j FOR_marker_2

END_FOR_marker_3
% compute array offset
lw r4,program_i(r0)
muli r4,r4,4
sw temp27(r0),r4
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
addi r5,r0,0
lw r6,temp27(r0)
addi r6,r6,0
lw r4,program_value_col(r5)
sw program_value_line(r6),r4
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,0
sw temp28(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r4,r0,0
lw r5,temp28(r3)
sw program_value_col(r4),r5
sub r4,r4,r4
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
lw r2,temp3(r0)
sw program_i(r0),r2
j FOR_marker_0

END_FOR_marker_1
addi r6, r0,0
sw temp29(r0),r6
sub r6,r6,r6
addi r6,r0,0
addi r5,r0,0
lw r3,temp29(r6)
sw program_k(r5),r3
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
sub r4,r4,r4
FOR_marker_6
addi r4, r0,10
sw temp30(r0),r4
sub r4,r4,r4
addi r5,r0,0
lw r4,program_k(r5)
addi r5,r0,0
lw r3,temp30(r5)
clt r6,r4,r3
bz r6,END_FOR_marker_7
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
addi r5, r0,1
sw temp31(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r3,temp31(r5)
addi r6,r0,0
lw r4,program_k(r6)
add r2,r4,r3
sw temp32(r0),r2
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
addi r5, r0,0
sw temp33(r0),r5
sub r5,r5,r5
addi r5,r0,0
addi r6,r0,0
lw r3,temp33(r5)
sw program_l(r6),r3
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
sub r4,r4,r4
FOR_marker_8
addi r4, r0,10
sw temp34(r0),r4
sub r4,r4,r4
addi r6,r0,0
lw r4,program_l(r6)
addi r6,r0,0
lw r3,temp34(r6)
clt r5,r4,r3
bz r5,END_FOR_marker_9
sub r4,r4,r4
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
addi r6, r0,1
sw temp35(r0),r6
sub r6,r6,r6
addi r6,r0,0
lw r3,temp35(r6)
addi r5,r0,0
lw r4,program_l(r5)
add r2,r4,r3
sw temp36(r0),r2
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
% compute array offset
lw r6,program_k(r0)
muli r5,r6,10
lw r3,program_l(r0)
add r6,r5,r3
muli r6,r6,4
sw temp39(r0),r6
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
lw r3,temp39(r0)
addi r3,r3,0
addi r5,r0,0
% copy memory from program_arr_1 to temp40_arr_1: 4
lw r6,program_arr_1(r3)
sw temp40_arr_1(r5),r6
addi r3,r3,4
addi r5,r5,4
% END: copy memory from program_arr_1 to temp40_arr_1: 4
sub r6,r6,r6
sub r3,r3,r3
sub r5,r5,r5
addi r5, r0,2
sw temp41(r0),r5
sub r5,r5,r5
addi r2,r0,0
lw r6,temp41(r2)
addi r2,r0,0
lw r4,temp40_arr_1(r2)
div r1,r4,r6
sw temp42(r0),r1
sub r5,r5,r5
sub r3,r3,r3
sub r6,r6,r6
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
addi r2, r0,2
sw temp43(r0),r2
sub r2,r2,r2
addi r3,r0,0
lw r4,temp43(r3)
addi r3,r0,0
lw r6,temp42(r3)
mul r5,r6,r4
sw temp44(r0),r5
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
sub r3,r3,r3
% compute array offset
lw r3,program_k(r0)
muli r5,r3,10
lw r6,program_l(r0)
add r3,r5,r6
muli r3,r3,4
sw temp47(r0),r3
sub r3,r3,r3
sub r5,r5,r5
sub r6,r6,r6
lw r6,temp47(r0)
addi r6,r6,0
addi r5,r0,0
% copy memory from program_arr_1 to temp48_arr_1: 4
lw r3,program_arr_1(r6)
sw temp48_arr_1(r5),r3
addi r6,r6,4
addi r5,r5,4
% END: copy memory from program_arr_1 to temp48_arr_1: 4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
addi r4,r0,0
lw r5,temp44(r4)
addi r4,r0,0
lw r6,temp48_arr_1(r4)
ceq r3,r5,r6
bz r3,ELSE_IF_marker_11
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
sub r4,r4,r4
addi r4, r0,1
sw temp49(r0),r4
sub r4,r4,r4
addi r4,r0,0
lw r6,temp49(r4)
addi r3,r0,0
lw r5,program_even_count(r3)
add r1,r5,r6
sw temp50(r0),r1
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
sub r4,r4,r4
addi r4,r0,0
addi r3,r0,0
lw r6,temp50(r4)
sw program_even_count(r3),r6
sub r3,r3,r3
sub r4,r4,r4
sub r6,r6,r6
sub r5,r5,r5
% compute array offset
lw r5,program_k(r0)
muli r6,r5,10
lw r4,program_l(r0)
add r5,r6,r4
muli r5,r5,4
sw temp53(r0),r5
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
addi r4,r0,0
lw r6,temp53(r0)
addi r6,r6,0
lw r5,program_even_count(r4)
sw program_arr_1(r6),r5
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
j END_IF_marker_10
ELSE_IF_marker_11	nop
addi r3, r0,1
sw temp54(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r4,temp54(r3)
addi r5,r0,0
lw r6,program_odd_count(r5)
add r1,r6,r4
sw temp55(r0),r1
sub r1,r1,r1
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
addi r3,r0,0
addi r5,r0,0
lw r4,temp55(r3)
sw program_odd_count(r5),r4
sub r5,r5,r5
sub r3,r3,r3
sub r4,r4,r4
sub r6,r6,r6
% compute array offset
lw r6,program_k(r0)
muli r4,r6,10
lw r3,program_l(r0)
add r6,r4,r3
muli r6,r6,4
sw temp58(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r4,temp58(r0)
addi r4,r4,0
lw r6,program_odd_count(r3)
sw program_arr_1(r4),r6
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
END_IF_marker_10	nop
lw r6,temp36(r0)
sw program_l(r0),r6
j FOR_marker_8

END_FOR_marker_9
lw r5,temp32(r0)
sw program_k(r0),r5
j FOR_marker_6

END_FOR_marker_7
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
lw r14,program_odd_count(r5)
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
lw r14,program_even_count(r6)
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
addi r14, r0, MEMORY_COPY_REGISTRY_STORE
sw 0(r14), r1
sw 4(r14), r2
sw 8(r14), r3
sw 12(r14), r4
sw 16(r14), r5
sw 20(r14), r6
sw 24(r14), r7
addi r1, r0, func_Global_free_funct_compute
addi r2, r0, 0
addi r3, r0, functionCallStack_recursion
lw r4, functionCallStack_ponter_recursion(r0)
addi r5, r0, FUNC_Global_free_funct_computeEND_PARAMETER_MARKER
subi r5, r5, func_Global_free_funct_compute
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
jl  r15,FUNC_Global_free_funct_compute_marker
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
addi r6,r0,0
addi r5,r0,0
add r5,r5,r6
lw r14,retVal_Global_free_funct_compute_func(r5)
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
sw temp59(r0),r6
sub r6,r6,r6
addi r6,r0,0
addi r5,r0,0
lw r3,temp59(r6)
sw program_p(r5),r3
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
sub r4,r4,r4
FOR_marker_12
addi r4, r0,9
sw temp60(r0),r4
sub r4,r4,r4
addi r5,r0,0
lw r4,program_p(r5)
addi r5,r0,0
lw r3,temp60(r5)
cle r6,r4,r3
bz r6,END_FOR_marker_13
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
addi r5, r0,1
sw temp61(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r3,temp61(r5)
addi r6,r0,0
lw r4,program_p(r6)
add r1,r4,r3
sw temp62(r0),r1
sub r1,r1,r1
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
% compute array offset
lw r5,program_p(r0)
muli r5,r5,4
sw temp64(r0),r5
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
lw r3,temp64(r0)
addi r3,r3,0
addi r6,r0,0
% copy memory from program_value_line to temp65_value_line: 4
lw r5,program_value_line(r3)
sw temp65_value_line(r6),r5
addi r3,r3,4
addi r6,r6,4
% END: copy memory from program_value_line to temp65_value_line: 4
sub r5,r5,r5
sub r3,r3,r3
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
addi r3,r0,0
addi r6,r0,0
add r6,r6,r3
lw r14,temp65_value_line(r6)
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
sub r3,r3,r3
lw r5,temp62(r0)
sw program_p(r0),r5
j FOR_marker_12

END_FOR_marker_13
j end_program_marker
FUNC_Global_free_funct_compute_marker
addi r3, r0,0
sw temp66(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r6,r0,0
lw r5,temp66(r3)
sw func_Global_free_funct_compute_i(r6),r5
sub r6,r6,r6
sub r3,r3,r3
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_14
addi r4, r0,9
sw temp67(r0),r4
sub r4,r4,r4
addi r6,r0,0
lw r4,func_Global_free_funct_compute_i(r6)
addi r6,r0,0
lw r5,temp67(r6)
cle r3,r4,r5
bz r3,END_FOR_marker_15
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
sub r6,r6,r6
addi r6, r0,1
sw temp68(r0),r6
sub r6,r6,r6
addi r6,r0,0
lw r5,temp68(r6)
addi r3,r0,0
lw r4,func_Global_free_funct_compute_i(r3)
add r1,r4,r5
sw temp69(r0),r1
sub r1,r1,r1
sub r4,r4,r4
sub r5,r5,r5
sub r3,r3,r3
sub r6,r6,r6
addi r6, r0,0
sw temp70(r0),r6
sub r6,r6,r6
addi r6,r0,0
addi r3,r0,0
lw r5,temp70(r6)
sw func_Global_free_funct_compute_j(r3),r5
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_16
addi r4, r0,9
sw temp71(r0),r4
sub r4,r4,r4
addi r3,r0,0
lw r4,func_Global_free_funct_compute_j(r3)
addi r3,r0,0
lw r5,temp71(r3)
cle r6,r4,r5
bz r6,END_FOR_marker_17
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
addi r3, r0,1
sw temp72(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r5,temp72(r3)
addi r6,r0,0
lw r4,func_Global_free_funct_compute_j(r6)
add r1,r4,r5
sw temp73(r0),r1
sub r1,r1,r1
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
addi r3, r0,5
sw temp74(r0),r3
sub r3,r3,r3
addi r4,r0,0
lw r3,func_Global_free_funct_compute_i(r4)
addi r4,r0,0
lw r6,temp74(r4)
cge r5,r3,r6
bz r5,ELSE_IF_marker_19
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
% compute array offset
lw r4,func_Global_free_funct_compute_i(r0)
muli r5,r4,10
lw r6,func_Global_free_funct_compute_j(r0)
add r4,r5,r6
muli r4,r4,4
sw temp77(r0),r4
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
addi r6,r0,0
lw r4,func_Global_free_funct_compute_j(r6)
addi r5,r0,0
lw r3,func_Global_free_funct_compute_i(r5)
add r1,r3,r4
sw temp78(r0),r1
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r5,r5,r5
sub r6,r6,r6
addi r6,r0,0
lw r5,temp77(r0)
addi r5,r5,0
lw r4,temp78(r6)
sw func_Global_free_funct_compute_arr_1(r5),r4
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
sub r3,r3,r3
addi r3, r0,1
sw temp79(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r6,temp79(r3)
addi r4,r0,0
lw r5,func_Global_free_funct_compute_big(r4)
add r1,r5,r6
sw temp80(r0),r1
sub r1,r1,r1
sub r5,r5,r5
sub r6,r6,r6
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
addi r4,r0,0
lw r6,temp80(r3)
sw func_Global_free_funct_compute_big(r4),r6
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
j END_IF_marker_18
ELSE_IF_marker_19	nop
% compute array offset
lw r5,func_Global_free_funct_compute_i(r0)
muli r6,r5,10
lw r3,func_Global_free_funct_compute_j(r0)
add r5,r6,r3
muli r5,r5,4
sw temp83(r0),r5
sub r5,r5,r5
sub r6,r6,r6
sub r3,r3,r3
addi r1,r0,0
lw r5,func_Global_free_funct_compute_j(r1)
addi r1,r0,0
lw r4,func_Global_free_funct_compute_j(r1)
mul r2,r4,r5
sw temp84(r0),r2
sub r3,r3,r3
sub r6,r6,r6
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
addi r1,r0,0
lw r2,temp83(r0)
addi r2,r2,0
lw r4,temp84(r1)
sw func_Global_free_funct_compute_arr_1(r2),r4
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r5,r5,r5
addi r5, r0,1
sw temp85(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r1,temp85(r5)
addi r4,r0,0
lw r2,func_Global_free_funct_compute_small(r4)
add r6,r2,r1
sw temp86(r0),r6
sub r6,r6,r6
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
sub r5,r5,r5
addi r5,r0,0
addi r4,r0,0
lw r1,temp86(r5)
sw func_Global_free_funct_compute_small(r4),r1
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
END_IF_marker_18	nop
lw r3,temp73(r0)
sw func_Global_free_funct_compute_j(r0),r3
j FOR_marker_16

END_FOR_marker_17
lw r6,temp69(r0)
sw func_Global_free_funct_compute_i(r0),r6
j FOR_marker_14

END_FOR_marker_15
addi r2, r0,0
sw temp87(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r1,r0,0
lw r5,temp87(r2)
sw func_Global_free_funct_compute_k(r1),r5
sub r1,r1,r1
sub r2,r2,r2
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_20
addi r4, r0,10
sw temp88(r0),r4
sub r4,r4,r4
addi r1,r0,0
lw r4,func_Global_free_funct_compute_k(r1)
addi r1,r0,0
lw r5,temp88(r1)
clt r2,r4,r5
bz r2,END_FOR_marker_21
sub r4,r4,r4
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,1
sw temp89(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r5,temp89(r1)
addi r2,r0,0
lw r4,func_Global_free_funct_compute_k(r2)
add r6,r4,r5
sw temp90(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,0
sw temp91(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r2,r0,0
lw r5,temp91(r1)
sw func_Global_free_funct_compute_l(r2),r5
sub r2,r2,r2
sub r1,r1,r1
sub r5,r5,r5
sub r4,r4,r4
FOR_marker_22
addi r4, r0,10
sw temp92(r0),r4
sub r4,r4,r4
addi r2,r0,0
lw r4,func_Global_free_funct_compute_l(r2)
addi r2,r0,0
lw r5,temp92(r2)
clt r1,r4,r5
bz r1,END_FOR_marker_23
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
addi r2, r0,1
sw temp93(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r5,temp93(r2)
addi r1,r0,0
lw r4,func_Global_free_funct_compute_l(r1)
add r6,r4,r5
sw temp94(r0),r6
sub r6,r6,r6
sub r4,r4,r4
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
% compute array offset
lw r2,func_Global_free_funct_compute_k(r0)
muli r1,r2,10
lw r5,func_Global_free_funct_compute_l(r0)
add r2,r1,r5
muli r2,r2,4
sw temp97(r0),r2
sub r2,r2,r2
sub r1,r1,r1
sub r5,r5,r5
lw r5,temp97(r0)
addi r5,r5,0
addi r1,r0,0
% copy memory from func_Global_free_funct_compute_arr_1 to temp98_arr_1: 4
lw r2,func_Global_free_funct_compute_arr_1(r5)
sw temp98_arr_1(r1),r2
addi r5,r5,4
addi r1,r1,4
% END: copy memory from func_Global_free_funct_compute_arr_1 to temp98_arr_1: 4
sub r2,r2,r2
sub r5,r5,r5
sub r1,r1,r1
addi r1, r0,2
sw temp99(r0),r1
sub r1,r1,r1
addi r6,r0,0
lw r2,temp99(r6)
addi r6,r0,0
lw r4,temp98_arr_1(r6)
div r3,r4,r2
sw temp100(r0),r3
sub r1,r1,r1
sub r5,r5,r5
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
sub r6,r6,r6
addi r6, r0,2
sw temp101(r0),r6
sub r6,r6,r6
addi r5,r0,0
lw r4,temp101(r5)
addi r5,r0,0
lw r2,temp100(r5)
mul r1,r2,r4
sw temp102(r0),r1
sub r6,r6,r6
sub r3,r3,r3
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r5,r5,r5
% compute array offset
lw r5,func_Global_free_funct_compute_k(r0)
muli r1,r5,10
lw r2,func_Global_free_funct_compute_l(r0)
add r5,r1,r2
muli r5,r5,4
sw temp105(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
lw r2,temp105(r0)
addi r2,r2,0
addi r1,r0,0
% copy memory from func_Global_free_funct_compute_arr_1 to temp106_arr_1: 4
lw r5,func_Global_free_funct_compute_arr_1(r2)
sw temp106_arr_1(r1),r5
addi r2,r2,4
addi r1,r1,4
% END: copy memory from func_Global_free_funct_compute_arr_1 to temp106_arr_1: 4
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
addi r4,r0,0
lw r1,temp102(r4)
addi r4,r0,0
lw r2,temp106_arr_1(r4)
ceq r5,r1,r2
bz r5,ELSE_IF_marker_25
sub r1,r1,r1
sub r2,r2,r2
sub r5,r5,r5
sub r4,r4,r4
addi r4, r0,1
sw temp107(r0),r4
sub r4,r4,r4
addi r4,r0,0
lw r2,temp107(r4)
addi r5,r0,0
lw r1,func_Global_free_funct_compute_even_count(r5)
add r3,r1,r2
sw temp108(r0),r3
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
sub r5,r5,r5
sub r4,r4,r4
addi r4,r0,0
addi r5,r0,0
lw r2,temp108(r4)
sw func_Global_free_funct_compute_even_count(r5),r2
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
% compute array offset
lw r1,func_Global_free_funct_compute_k(r0)
muli r2,r1,10
lw r4,func_Global_free_funct_compute_l(r0)
add r1,r2,r4
muli r1,r1,4
sw temp111(r0),r1
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
addi r4,r0,0
lw r2,temp111(r0)
addi r2,r2,0
lw r1,func_Global_free_funct_compute_even_count(r4)
sw func_Global_free_funct_compute_arr_1(r2),r1
sub r2,r2,r2
sub r4,r4,r4
sub r1,r1,r1
sub r5,r5,r5
j END_IF_marker_24
ELSE_IF_marker_25	nop
addi r5, r0,1
sw temp112(r0),r5
sub r5,r5,r5
addi r5,r0,0
lw r4,temp112(r5)
addi r1,r0,0
lw r2,func_Global_free_funct_compute_odd_count(r1)
add r3,r2,r4
sw temp113(r0),r3
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
sub r1,r1,r1
sub r5,r5,r5
addi r5,r0,0
addi r1,r0,0
lw r4,temp113(r5)
sw func_Global_free_funct_compute_odd_count(r1),r4
sub r1,r1,r1
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
% compute array offset
lw r2,func_Global_free_funct_compute_k(r0)
muli r4,r2,10
lw r5,func_Global_free_funct_compute_l(r0)
add r2,r4,r5
muli r2,r2,4
sw temp116(r0),r2
sub r2,r2,r2
sub r4,r4,r4
sub r5,r5,r5
addi r5,r0,0
lw r4,temp116(r0)
addi r4,r4,0
lw r2,func_Global_free_funct_compute_odd_count(r5)
sw func_Global_free_funct_compute_arr_1(r4),r2
sub r4,r4,r4
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
END_IF_marker_24	nop
lw r2,temp94(r0)
sw func_Global_free_funct_compute_l(r0),r2
j FOR_marker_22

END_FOR_marker_23
lw r1,temp90(r0)
sw func_Global_free_funct_compute_k(r0),r1
j FOR_marker_20

END_FOR_marker_21
addi r1,r0,0
lw r5,func_Global_free_funct_compute_even_count(r1)
addi r2,r0,0
lw r4,func_Global_free_funct_compute_odd_count(r2)
add r3,r4,r5
sw temp117(r0),r3
sub r3,r3,r3
sub r4,r4,r4
sub r5,r5,r5
sub r2,r2,r2
sub r1,r1,r1
addi r2,r0,0
lw r5,temp117(r2)
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
addi r3, r0, func_Global_free_funct_compute
addi r4, r0, 0
addi r5, r0, FUNC_Global_free_funct_computeEND_PARAMETER_MARKER
subi r5, r5, func_Global_free_funct_compute
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
sw retVal_Global_free_funct_compute_func(r0),r5
sub r5,r5,r5
sub r2,r2,r2
jr  r15
end_program_marker
hlt
putint   add    r2,r0,r0         % c := 0 (character)
         add    r5,r0,r0         % s := 0 (sign)
         addi   r4,r0,endbuf     % p is the buffer pointer
         cge    r3,r14,r0
         bnz    r3,putint1       % branch if n >= 0
         addi   r5,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r2,r14,10         % c := n mod 10
         addi   r2,r2,48         % c := c + '0'
         subi   r4,r4,1          % p := p - 1
         sb     0(r4),r2         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r5,putint2       % branch if n >= 0
         addi   r2,r0,45         % c := '-'
         subi   r4,r4,1          % p := p - 1
         sb     0(r4),r2         % buf[p] := c
putint2  lb     r2,0(r4)         % c := buf[p]
         putc   r2               % write c
         addi   r4,r4,1          % p := p + 1
         cgei   r3,r4,endbuf
         bz     r3,putint2       % branch if more digits
		lb r2,cr(r0)			%load carage return character code into a register => ADDED BY VIKA
         putc   r2
         jr     r15              % return
         res    20               % digit buffer
endbuf
cr db 10 		%declar a carage return code   ADDED BY VIKA
align
sub r2,r2,r2
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
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

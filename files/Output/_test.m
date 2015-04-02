   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
program_result dw 0
program_array_1
res 16
program_array_2
res 64
program_array_3
res 256
program_array_4
res 1024
program_i dw 0
temp0  dw 0
temp1  dw 0
temp2  dw 0
temp3  dw 0
temp4  dw 0
temp5  dw 0
program_j dw 0
temp6  dw 0
temp7  dw 0
temp8  dw 0
temp9  dw 0
temp10  dw 0
temp11  dw 0
temp12  dw 0
temp13  dw 0
program_k dw 0
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
program_l dw 0
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
temp48_array_4 dw 0
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
temp59_array_3 dw 0
temp60  dw 0
temp61  dw 0
temp62  dw 0
temp63  dw 0
temp64  dw 0
temp65  dw 0
temp66  dw 0
temp67  dw 0
temp68_array_2 dw 0
temp69  dw 0
temp70  dw 0
temp71  dw 0
temp72  dw 0
temp73_array_1 dw 0
temp74  dw 0
   org  3892
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
addi r4, r0,4
sw temp1(r0),r4
sub r4,r4,r4
addi r2,r0,0
lw r4,program_i(r2)
addi r2,r0,0
lw r3,temp1(r2)
clt r1,r4,r3
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
% compute array offset
lw r2,program_i(r0)
muli r2,r2,4
sw temp5(r0),r2
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r1,temp5(r0)
addi r1,r1,0
lw r2,program_i(r3)
sw program_array_1(r1),r2
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
addi r4, r0,0
sw temp6(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r2,r0,0
lw r3,temp6(r4)
sw program_j(r2),r3
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
FOR_marker_2
addi r1, r0,4
sw temp7(r0),r1
sub r1,r1,r1
addi r2,r0,0
lw r1,program_j(r2)
addi r2,r0,0
lw r3,temp7(r2)
clt r4,r1,r3
bz r4,END_FOR_marker_3
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r2,r2,r2
addi r2, r0,1
sw temp8(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r3,temp8(r2)
addi r4,r0,0
lw r1,program_j(r4)
add r5,r1,r3
sw temp9(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r2,r2,r2
% compute array offset
lw r2,program_i(r0)
muli r4,r2,4
lw r3,program_j(r0)
add r2,r4,r3
muli r2,r2,4
sw temp12(r0),r2
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r2,program_j(r3)
addi r4,r0,0
lw r1,program_i(r4)
add r5,r1,r2
sw temp13(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r4,temp12(r0)
addi r4,r4,0
lw r2,temp13(r3)
sw program_array_2(r4),r2
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,0
sw temp14(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r2,r0,0
lw r3,temp14(r1)
sw program_k(r2),r3
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
FOR_marker_4
addi r4, r0,4
sw temp15(r0),r4
sub r4,r4,r4
addi r2,r0,0
lw r4,program_k(r2)
addi r2,r0,0
lw r3,temp15(r2)
clt r1,r4,r3
bz r1,END_FOR_marker_5
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
addi r2, r0,1
sw temp16(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r3,temp16(r2)
addi r1,r0,0
lw r4,program_k(r1)
add r5,r4,r3
sw temp17(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
% compute array offset
lw r2,program_i(r0)
muli r1,r2,4
lw r3,program_j(r0)
add r2,r1,r3
muli r1,r2,4
lw r3,program_k(r0)
add r2,r1,r3
muli r2,r2,4
sw temp21(r0),r2
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r2,program_j(r3)
addi r1,r0,0
lw r4,program_i(r1)
add r5,r4,r2
sw temp22(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r2,program_k(r3)
addi r1,r0,0
lw r4,temp22(r1)
add r5,r4,r2
sw temp23(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r1,temp21(r0)
addi r1,r1,0
lw r2,temp23(r3)
sw program_array_3(r1),r2
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
addi r4, r0,0
sw temp24(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r2,r0,0
lw r3,temp24(r4)
sw program_l(r2),r3
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
sub r1,r1,r1
FOR_marker_6
addi r1, r0,4
sw temp25(r0),r1
sub r1,r1,r1
addi r2,r0,0
lw r1,program_l(r2)
addi r2,r0,0
lw r3,temp25(r2)
clt r4,r1,r3
bz r4,END_FOR_marker_7
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r2,r2,r2
addi r2, r0,1
sw temp26(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r3,temp26(r2)
addi r4,r0,0
lw r1,program_l(r4)
add r5,r1,r3
sw temp27(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r3,r3,r3
sub r4,r4,r4
sub r2,r2,r2
% compute array offset
lw r2,program_i(r0)
muli r4,r2,4
lw r3,program_j(r0)
add r2,r4,r3
muli r4,r2,4
lw r3,program_k(r0)
add r2,r4,r3
muli r4,r2,4
lw r3,program_l(r0)
add r2,r4,r3
muli r2,r2,4
sw temp32(r0),r2
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r2,program_j(r3)
addi r4,r0,0
lw r1,program_i(r4)
add r5,r1,r2
sw temp33(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r2,program_k(r3)
addi r4,r0,0
lw r1,temp33(r4)
add r5,r1,r2
sw temp34(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r2,program_l(r3)
addi r4,r0,0
lw r1,temp34(r4)
add r5,r1,r2
sw temp35(r0),r5
sub r5,r5,r5
sub r1,r1,r1
sub r2,r2,r2
sub r4,r4,r4
sub r3,r3,r3
addi r3,r0,0
lw r4,temp32(r0)
addi r4,r4,0
lw r2,temp35(r3)
sw program_array_4(r4),r2
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
lw r2,temp27(r0)
sw program_l(r0),r2
j FOR_marker_6

END_FOR_marker_7
lw r2,temp17(r0)
sw program_k(r0),r2
j FOR_marker_4

END_FOR_marker_5
lw r2,temp9(r0)
sw program_j(r0),r2
j FOR_marker_2

END_FOR_marker_3
lw r2,temp3(r0)
sw program_i(r0),r2
j FOR_marker_0

END_FOR_marker_1
addi r1, r0,0
sw temp37(r0),r1
sub r1,r1,r1
addi r1, r0,2
sw temp39(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r3,temp39(r1)
addi r2,r0,0
lw r4,program_j(r2)
sub r5,r4,r3
sw temp40(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,3
sw temp42(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r3,temp42(r1)
addi r2,r0,0
lw r4,program_k(r2)
sub r5,r4,r3
sw temp43(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,2
sw temp45(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r3,temp45(r1)
addi r2,r0,0
lw r4,program_l(r2)
sub r5,r4,r3
sw temp46(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
% compute array offset
lw r1,temp37(r0)
muli r2,r1,4
lw r3,temp40(r0)
add r1,r2,r3
muli r2,r1,4
lw r3,temp43(r0)
add r1,r2,r3
muli r2,r1,4
lw r3,temp46(r0)
add r1,r2,r3
muli r1,r1,4
sw temp47(r0),r1
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
lw r3,temp47(r0)
addi r3,r3,0
addi r2,r0,0
% copy memory from program_array_4 to temp48_array_4: 4
lw r1,program_array_4(r3)
sw temp48_array_4(r2),r1
addi r3,r3,4
addi r2,r2,4
% END: copy memory from program_array_4 to temp48_array_4: 4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,1
sw temp50(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r1,temp50(r2)
addi r3,r0,0
lw r4,program_i(r3)
sub r5,r4,r1
sw temp51(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,2
sw temp53(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r1,temp53(r2)
addi r3,r0,0
lw r4,program_j(r3)
sub r5,r4,r1
sw temp54(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,2
sw temp56(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r1,temp56(r2)
addi r3,r0,0
lw r4,program_k(r3)
sub r5,r4,r1
sw temp57(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
% compute array offset
lw r2,temp51(r0)
muli r3,r2,4
lw r1,temp54(r0)
add r2,r3,r1
muli r3,r2,4
lw r1,temp57(r0)
add r2,r3,r1
muli r2,r2,4
sw temp58(r0),r2
sub r2,r2,r2
sub r3,r3,r3
sub r1,r1,r1
lw r1,temp58(r0)
addi r1,r1,0
addi r3,r0,0
% copy memory from program_array_3 to temp59_array_3: 4
lw r2,program_array_3(r1)
sw temp59_array_3(r3),r2
addi r1,r1,4
addi r3,r3,4
% END: copy memory from program_array_3 to temp59_array_3: 4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3,r0,0
lw r2,temp59_array_3(r3)
addi r1,r0,0
lw r4,temp48_array_4(r1)
add r5,r4,r2
sw temp60(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,1
sw temp62(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r2,temp62(r3)
addi r1,r0,0
lw r4,program_i(r1)
sub r5,r4,r2
sw temp63(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
addi r3, r0,2
sw temp65(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r2,temp65(r3)
addi r1,r0,0
lw r4,program_j(r1)
sub r5,r4,r2
sw temp66(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r2,r2,r2
sub r1,r1,r1
sub r3,r3,r3
% compute array offset
lw r3,temp63(r0)
muli r1,r3,4
lw r2,temp66(r0)
add r3,r1,r2
muli r3,r3,4
sw temp67(r0),r3
sub r3,r3,r3
sub r1,r1,r1
sub r2,r2,r2
lw r2,temp67(r0)
addi r2,r2,0
addi r1,r0,0
% copy memory from program_array_2 to temp68_array_2: 4
lw r3,program_array_2(r2)
sw temp68_array_2(r1),r3
addi r2,r2,4
addi r1,r1,4
% END: copy memory from program_array_2 to temp68_array_2: 4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1,r0,0
lw r3,temp68_array_2(r1)
addi r2,r0,0
lw r4,temp60(r2)
add r5,r4,r3
sw temp69(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
addi r1, r0,1
sw temp71(r0),r1
sub r1,r1,r1
% compute array offset
lw r1,temp71(r0)
muli r1,r1,4
sw temp72(r0),r1
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
lw r3,temp72(r0)
addi r3,r3,0
addi r2,r0,0
% copy memory from program_array_1 to temp73_array_1: 4
lw r1,program_array_1(r3)
sw temp73_array_1(r2),r1
addi r3,r3,4
addi r2,r2,4
% END: copy memory from program_array_1 to temp73_array_1: 4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2,r0,0
lw r1,temp73_array_1(r2)
addi r3,r0,0
lw r4,temp69(r3)
add r5,r4,r1
sw temp74(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2,r0,0
addi r3,r0,0
lw r1,temp74(r2)
sw program_result(r3),r1
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
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
addi r1,r0,0
addi r4,r0,0
add r4,r4,r1
lw r14,program_result(r4)
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
sub r1,r1,r1
j end_program_marker
end_program_marker
hlt
putint   add    r1,r0,r0         % c := 0 (character)
         add    r4,r0,r0         % s := 0 (sign)
         addi   r2,r0,endbuf     % p is the buffer pointer
         cge    r3,r14,r0
         bnz    r3,putint1       % branch if n >= 0
         addi   r4,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r1,r14,10         % c := n mod 10
         addi   r1,r1,48         % c := c + '0'
         subi   r2,r2,1          % p := p - 1
         sb     0(r2),r1         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r4,putint2       % branch if n >= 0
         addi   r1,r0,45         % c := '-'
         subi   r2,r2,1          % p := p - 1
         sb     0(r2),r1         % buf[p] := c
putint2  lb     r1,0(r2)         % c := buf[p]
         putc   r1               % write c
         addi   r2,r2,1          % p := p + 1
         cgei   r3,r2,endbuf
         bz     r3,putint2       % branch if more digits
		lb r1,cr(r0)			%load carage return character code into a register => ADDED BY VIKA
         putc   r1
         jr     r15              % return
         res    20               % digit buffer
endbuf
cr db 10 		%declar a carage return code   ADDED BY VIKA
align
sub r1,r1,r1
sub r4,r4,r4
sub r2,r2,r2
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

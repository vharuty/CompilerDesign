   org 100
   align
functionCallStack dw 0
res 1000
functionCallStack_ponter dw 0
functionCallStack_recursion res 1000
functionCallStack_ponter_recursion dw 0
program_array_
res 36
program_array_2
res 36
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
program_k dw 0
temp11  dw 0
temp12  dw 0
temp13  dw 0
temp14  dw 0
program_l dw 0
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
temp25_array_ dw 0
temp26  dw 0
temp27  dw 0
program_m dw 0
temp28  dw 0
temp29  dw 0
temp30  dw 0
temp31  dw 0
program_n dw 0
temp32  dw 0
temp33  dw 0
temp34  dw 0
temp35  dw 0
temp36  dw 0
temp37  dw 0
temp38  dw 0
temp39_array_2 dw 0
   org  2468
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
addi r4, r0,2
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
addi r4, r0,2
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
% compute array offset
lw r1,program_i(r0)
muli r2,r1,3
lw r3,program_j(r0)
add r1,r2,r3
muli r1,r1,4
sw temp10(r0),r1
sub r1,r1,r1
sub r2,r2,r2
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
jl  r15,getint
lw r3,temp10(r0)
addi r3,r3,0
sw program_array_(r3), r14
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
lw r1,temp7(r0)
sw program_j(r0),r1
j FOR_marker_2

END_FOR_marker_3
lw r2,temp3(r0)
sw program_i(r0),r2
j FOR_marker_0

END_FOR_marker_1
addi r3, r0,0
sw temp11(r0),r3
sub r3,r3,r3
addi r3,r0,0
addi r2,r0,0
lw r1,temp11(r3)
sw program_k(r2),r1
sub r2,r2,r2
sub r3,r3,r3
sub r1,r1,r1
sub r4,r4,r4
FOR_marker_4
addi r4, r0,2
sw temp12(r0),r4
sub r4,r4,r4
addi r2,r0,0
lw r4,program_k(r2)
addi r2,r0,0
lw r1,temp12(r2)
cle r3,r4,r1
bz r3,END_FOR_marker_5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,1
sw temp13(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r1,temp13(r2)
addi r3,r0,0
lw r4,program_k(r3)
add r5,r4,r1
sw temp14(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,0
sw temp15(r0),r2
sub r2,r2,r2
addi r2,r0,0
addi r3,r0,0
lw r1,temp15(r2)
sw program_l(r3),r1
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
FOR_marker_6
addi r4, r0,2
sw temp16(r0),r4
sub r4,r4,r4
addi r3,r0,0
lw r4,program_l(r3)
addi r3,r0,0
lw r1,temp16(r3)
cle r2,r4,r1
bz r2,END_FOR_marker_7
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
addi r3, r0,1
sw temp17(r0),r3
sub r3,r3,r3
addi r3,r0,0
lw r1,temp17(r3)
addi r2,r0,0
lw r4,program_l(r2)
add r5,r4,r1
sw temp18(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
% compute array offset
lw r3,program_k(r0)
muli r2,r3,3
lw r1,program_l(r0)
add r3,r2,r1
muli r3,r3,4
sw temp21(r0),r3
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
% compute array offset
lw r1,program_k(r0)
muli r2,r1,3
lw r3,program_l(r0)
add r1,r2,r3
muli r1,r1,4
sw temp24(r0),r1
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
lw r3,temp24(r0)
addi r3,r3,0
addi r2,r0,0
% copy memory from program_array_ to temp25_array_: 4
lw r1,program_array_(r3)
sw temp25_array_(r2),r1
addi r3,r3,4
addi r2,r2,4
% END: copy memory from program_array_ to temp25_array_: 4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2, r0,2
sw temp26(r0),r2
sub r2,r2,r2
addi r2,r0,0
lw r1,temp26(r2)
addi r3,r0,0
lw r4,temp25_array_(r3)
add r5,r4,r1
sw temp27(r0),r5
sub r5,r5,r5
sub r4,r4,r4
sub r1,r1,r1
sub r3,r3,r3
sub r2,r2,r2
addi r2,r0,0
lw r3,temp21(r0)
addi r3,r3,0
lw r1,temp27(r2)
sw program_array_2(r3),r1
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
lw r3,temp18(r0)
sw program_l(r0),r3
j FOR_marker_6

END_FOR_marker_7
lw r2,temp14(r0)
sw program_k(r0),r2
j FOR_marker_4

END_FOR_marker_5
addi r4, r0,0
sw temp28(r0),r4
sub r4,r4,r4
addi r4,r0,0
addi r1,r0,0
lw r2,temp28(r4)
sw program_m(r1),r2
sub r1,r1,r1
sub r4,r4,r4
sub r2,r2,r2
sub r3,r3,r3
FOR_marker_8
addi r3, r0,2
sw temp29(r0),r3
sub r3,r3,r3
addi r1,r0,0
lw r3,program_m(r1)
addi r1,r0,0
lw r2,temp29(r1)
cle r4,r3,r2
bz r4,END_FOR_marker_9
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
sub r1,r1,r1
addi r1, r0,1
sw temp30(r0),r1
sub r1,r1,r1
addi r1,r0,0
lw r2,temp30(r1)
addi r4,r0,0
lw r3,program_m(r4)
add r5,r3,r2
sw temp31(r0),r5
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
sub r4,r4,r4
sub r1,r1,r1
addi r1, r0,0
sw temp32(r0),r1
sub r1,r1,r1
addi r1,r0,0
addi r4,r0,0
lw r2,temp32(r1)
sw program_n(r4),r2
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
sub r3,r3,r3
FOR_marker_10
addi r3, r0,2
sw temp33(r0),r3
sub r3,r3,r3
addi r4,r0,0
lw r3,program_n(r4)
addi r4,r0,0
lw r2,temp33(r4)
cle r1,r3,r2
bz r1,END_FOR_marker_11
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
addi r4, r0,1
sw temp34(r0),r4
sub r4,r4,r4
addi r4,r0,0
lw r2,temp34(r4)
addi r1,r0,0
lw r3,program_n(r1)
add r5,r3,r2
sw temp35(r0),r5
sub r5,r5,r5
sub r3,r3,r3
sub r2,r2,r2
sub r1,r1,r1
sub r4,r4,r4
% compute array offset
lw r4,program_m(r0)
muli r1,r4,3
lw r2,program_n(r0)
add r4,r1,r2
muli r4,r4,4
sw temp38(r0),r4
sub r4,r4,r4
sub r1,r1,r1
sub r2,r2,r2
lw r2,temp38(r0)
addi r2,r2,0
addi r1,r0,0
% copy memory from program_array_2 to temp39_array_2: 4
lw r4,program_array_2(r2)
sw temp39_array_2(r1),r4
addi r2,r2,4
addi r1,r1,4
% END: copy memory from program_array_2 to temp39_array_2: 4
sub r4,r4,r4
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
addi r2,r0,0
addi r1,r0,0
add r1,r1,r2
lw r14,temp39_array_2(r1)
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
sub r1,r1,r1
sub r2,r2,r2
lw r4,temp35(r0)
sw program_n(r0),r4
j FOR_marker_10

END_FOR_marker_11
lw r1,temp31(r0)
sw program_m(r0),r1
j FOR_marker_8

END_FOR_marker_9
j end_program_marker
end_program_marker
hlt
putint   add    r2,r0,r0         % c := 0 (character)
         add    r1,r0,r0         % s := 0 (sign)
         addi   r4,r0,endbuf     % p is the buffer pointer
         cge    r3,r14,r0
         bnz    r3,putint1       % branch if n >= 0
         addi   r1,r0,1          % s := 1
         sub    r14,r0,r14         % n := -n
putint1  modi   r2,r14,10         % c := n mod 10
         addi   r2,r2,48         % c := c + '0'
         subi   r4,r4,1          % p := p - 1
         sb     0(r4),r2         % buf[p] := c
         divi   r14,r14,10         % n := n div 10
         bnz    r14,putint1       % do next digit
         bz     r1,putint2       % branch if n >= 0
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
sub r1,r1,r1
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

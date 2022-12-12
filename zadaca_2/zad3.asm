@R0
D = M

@R5
M = D	

@R1
D = M - D

@NOVIMAKS1
D; JGT


@ISTIMAKS1
D; JLT

(NOVIMAKS1)
@R1
D = M

@R5
M = D

@R2
D = M - D

@NOVIMAKS2
D; JGT

@ISTIMAKS2
D; JLT

(ISTIMAKS1)
@R5
D = M

@R2
D = M - D

@NOVIMAKS2
D ; JGT

@ISTIMAKS2
D ; JLT

(NOVIMAKS2)
@R2
D = M

@R5
M = D

@R3
D = M - D

@NOVIMAKS3
D; JGT

@ISTIMAKS3
D; JLT

(ISTIMAKS2)
@R5
D = M

@R3
D = M - D

@NOVIMAKS3
D ; JGT

@ISTIMAKS3
D ; JLT

(NOVIMAKS3)
@R3
D = M

@R5
M = D

@R4
D = M - D

@NOVIMAKS4
D; JGT

@ISTIMAKS4
D; JLT 

(ISTIMAKS3)
@R5
D = M

@R4
D = M - D

@NOVIMAKS4
D ; JGT

@END
D ; JLT

(NOVIMAKS4)
@R4
D = M

@R5
M = D

(END)
@END 
0; JMP
//nisam siguran zasto mi ne radi

@i
M = 0

@SCREEN
D = A + 1 

@address
M = D

(START_LOOP)
	@i
	D = M

	@128
	D = A - D

	@KATETA
	D; JLE

	@1
	D = A

	@address
	A = M
	M = D
	D = A
	
	@i
	M = M + 1
	
	@32
	D = A

	@address
	M = D + M

	@START_LOOP
	0; JMP

(KATETA)
@4097
D = A

@SCREEN
D = A + D

@address
M = D

@i
M = 0

(LOOP_START)
	@i
	D = M

	@8
	D = A - D

	@HIPOTENUZA
	D; JLE

	@address
	D = -1
	A = M
	M = D
	D = A

	@1
	D = D + A

	@address
	M = D

	@i
	M = M + 1

	@LOOP_START
	0; JMP

(HIPOTENUZA)
@SCREEN
D = A + 1

@address
D = D + 1
M = D 

@i
M = 0

@R3
M = 1

(POCETAK_PETLJE)
@i
D = M

@128
D = A - D

@END
D; JLE

@R3
D = M

@address
A = M
M = D
D = A

@32
D = D + A

@address
M = D

@i
M = M + 1

@R3
D = M
M = D + M

@32768
D = A - D

@POSTAVI_PONOVNO
D; JLE

@POCETAK_PETLJE
0; JMP

(POSTAVI PONOVNO)
@R3
M = 1

@POCETAK_PETLJE
0; JMP

(END)
@END
0; JMP
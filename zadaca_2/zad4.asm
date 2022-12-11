@i
M = 0

@18438
D = A

@address
M = D

(START_LOOP)
	@i
	D = M

	@129
	D = A - D

	@KATETA
	D; JLE

	@32768
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
@address
M = M - 31

@i
M = 0

(LOOP_START)
	@i
	D = M

	@9
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
@18439
M = A
D = A

@address
M = D

@value
M = 1

@i
M = 0

(POCETAK_PETLJE)
@i
D = M

@129
D = A - D

@END
D; JLE

@value
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

@value
M = M + M

@POCETAK_PETLJE
0; JMP

(END)
@END
0; JMP	
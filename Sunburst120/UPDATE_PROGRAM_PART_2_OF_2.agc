### FILE="Main.annotation"
## Copyright:	Public domain.
## Filename:	UPDATE_PROGRAM_PART_2_OF_2.agc
## Purpose:	A module for revision 0 of BURST120 (Sunburst). It 
##		is part of the source code for the Lunar Module's
##		(LM) Apollo Guidance Computer (AGC) for Apollo 5.
## Assembler:	yaYUL
## Contact:	Ron Burkey <info@sandroid.org>.
## Website:	www.ibiblio.org/apollo/index.html
## Mod history:	2016-09-30 RSB	Created draft version.
##		2016-10-14 RSB	Transcribed.
##		2016-10-31 RSB	Typos.
##		2016-11-01 RSB	More typos.

## Page 321
		BANK	26
		EBANK=	STBUFF
UPPART2		CA	UPE4
		TS	EBANK
		TC	CHECKMM
		OCT	27
		TC	+2
		TC	21XCTALM
		CA	ONE
		TS	STCOUNT
		TC	GRABWAIT
		CA	MPAC
		TS	UPVERB
		CA	MODREG
		TS	UPOLDMOD
		TC	PHASCHNG
		OCT	00076		# 6.7 SPOT TO RESTORE OLD PROGRAM MODE.
		
		TC	NEWMODEX
		OCT	27
		CS	UPVERB
		AD	21OCT75
		EXTEND
		BZF	+4
		CA	MPAC	+1
		TS	COMPNUMB
		TC	UPIN	+1
UPNO33		CA	ONE		# CONTINUE V75
		AD	ASTBFM1
		TS	MPAC	+2
		CA	STATENV		# UPDATE PROGRAM IS READ TO ACCEPT TARGET
		TC	NVSBWAIT	# UPDATE INDEX. FLASH V 21 N 01
		TC	ENDIDLE		# WAIT FOR V33, V34 OR DATA.
		TCF	UPVERB34	# V34 TERMINATE UPDATE PROGRAM.
		TC	UPNO33		# V33, IGNORE
		CA	FOUR		# OCTAL NO. IN STBUFF
		TS	UPTEMP
		CA	STBUFF
		TC	UPRANGE		# IS STBUFF GE 1 AND LE 4
		TC	UPNO33		#  NO, TRY AGAIN
		INDEX	STBUFF		#  YES
		CA	AOFC	-1
		TS	COMPNUMB
		CA	TWO
UPIN		TS	STCOUNT
		CA	ASTBFM1
		AD	STCOUNT
		TS	MPAC	+2
		CA	STATENV		# UPDATE PROGRAM IS READY TO ACCEPT THE
		TC	NVSBWAIT	# NEXT COMPONENT, FLASH V21 N01
## Page 322
		TC	ENDIDLE		# WAIT FOR V33, V34 OR DATA.
		TCF	UPVERB34	# V34 TERMINATE UPDATE PROGRAM.
		TC	UPIN	+1	# V33 , IGNORE
		CS	STCOUNT		# OCTAL NO.
		AD	COMPNUMB
		EXTEND
		BZF	+3
		INCR	STCOUNT
		TC	UPIN	+1
UPHERE		CA	UPAOFTP1
		TS	MPAC	+2
		CA	OCTID		# INDICATE TO GROUND THAT ALL COMPONENTS
		TC	NVSBWAIT	# HAVE BEEN RECEIVED BY FLASHING V21 N02.
		TC	ENDIDLE		# WAIT FOR V33, V34 OR DATA(COMPONENT NO.)
		TCF	UPVERB34	# V34 TERMINATE UPDATE PROGRAM.
		TC	UPSTORE		# V33, VERIFY
		CA	COMPNUMB	# OCTAL IDENTIFIER
		TS	UPTEMP
		CA	UPTEMP1
		TC	UPRANGE
		TC	UPHERE		# BAD OCTAL IDENTIFIER
		CA	UPTEMP1
		AD	ASTBFM1
		TC	UPIN	+3
UPSTORE		TC	FREEDSP
		INHINT
		CS	FLAGWRD2	# INVERT VERIFLAG FOR GROUND VERIFY
		MASK	BIT6
		TS	Q
		CS	BIT6
		MASK	FLAGWRD2
		AD	Q
		TS	FLAGWRD2
		RELINT
		CS	UPVERB		# IF A VERB 75 OR 76 UPDATE
		AD	21OCT75		# STAY IN P27 UNTIL UPDATE IS COMPLETED.
		EXTEND			# (THIS IS DONE SO THAT NO OTHER UPDATES
		BZMF	UPRETURN	# WILL BE ALLOWED IF ORBIT INT IS ON)
		TC	CHECKMM
		OCT	27
		TC	UPRETURN
		CA	UPOLDMOD	# RESTORE PRE-P27 MODE
		TC	NEWMODEX +3	# (THIS WILL CAUSE A RELINT)
UPRETURN	INHINT
		CA	BIT5
		MASK	FLAGWRD2
		EXTEND
		BZF	XCTALMRM
		CS	21OCT64		#   BEGIN STORING DATA FROM STBUFF
		AD	UPVERB		# YES, CONTINUE

## Page 323
		INDEX	A
		TC	+1
		EXTEND
		DCA	STBUFF	+1
		TC	UPEND64
		TC	UPEND67		# V67
		TC	UPEND70		# V70
		TC	UPEND71		# V71
		TC	UPEND72		# V72
		TC	UPEND73
21OCT64		OCT	00064
		TC	UPEND75		# V75
UPEND76		CS	FLAGWRD2	# IS ORBITAL INTEGRATION ON
		MASK	BIT7
		EXTEND
		BZF	SETUPRCK	# YES, SET UP 3SEC CALL TO CHECK AGAIN
		TC	PHASCHNG
		OCT	05026
		OCT	33000
		INHINT			# INHINT BECAUSE PHASCHNG RELINTS AND BECA
					# USE RESTARTED JOB WILL NEED IT.
		EXTEND			# V76
		DCA	STBUFF		# NO, BEGIN LOAD OF UPDATE PARAMETERS
		DXCH	REFRRECT
		EXTEND
		DCA	STBUFF
		DXCH	REFRCV
		EXTEND
		DCA	STBUFF +2
		DXCH	REFRRECT +2
		EXTEND
		DCA	STBUFF +2
		DXCH	REFRCV +2
		EXTEND
		DCA	STBUFF +4
		DXCH 	REFRRECT +4
		EXTEND
		DCA	STBUFF +4
		DXCH	REFRCV	+4
		EXTEND
		DCA	STBUFF +6
		DXCH	REFVRECT
		EXTEND
		DCA	STBUFF +6
		DXCH	REFVCV
		EXTEND
		DCA	STBUFF +8D
		DXCH	REFVRECT +2
		EXTEND
		DCA	STBUFF +8D
## Page 324
		DXCH	REFVCV +2
		EXTEND
		DCA	STBUFF +10D
		DXCH	REFVRECT +4
		EXTEND
		DCA	STBUFF +10D
		DXCH	REFVCV	+4
		EXTEND
		DCA	STBUFF	+12D
		DXCH	TE
		CA	ZERO
		TS	DELTAV
		TS	DELTAV	+1
		TS	DELTAV	+2
		TS	DELTAV	+3
		TS	DELTAV	+4
		TS	DELTAV	+5
		TS	NUV
		TS	NUV	+1
		TS	NUV	+2
		TS	NUV	+3
		TS	NUV	+4
		TS	NUV	+5
		TS	REFTC
		TS	REFTC	+1
		TS	REFXKEP
		TS	REFXKEP	+1
		CAF	PRIO20		# SET UP JOB TO STORE NEW STATE FOR DWNTEL
		TC	FINDVAC
		EBANK=	TDEC
		2CADR	UPDATINT
		
		TCF	UPVERB34 +1	# RESTORE PRE-P27 MODE AND EXIT UPDATE
SETUPRCK	CA	3SEC21
		TC	WAITLIST
		EBANK=	STBUFF
		2CADR	UPDOAGN
		
		TC	PHASCHNG
		OCT	47016
		DEC	300
		EBANK=	STBUFF
		2CADR	UPDOAGN
		
		TC	ENDOFJOB
UPDOAGN		CA	PRIO27
		TC	NOVAC
		EBANK=	STBUFF
		2CADR	UPRETURN
## Page 325
		TC	TASKOVER
UPEND64		DXCH	UPGET
		CA	STBUFF
		TS	UPINDEX
		CA	PRIO27
		TC	FINDVAC
		EBANK=	STBUFF
		2CADR	MGETUP
		
		TC	UPQUIT
UPEND67		CA	STBUFF
		TS	UPINDEX
		TC	POSTJUMP
		CADR	DOV67
UPEND70		CA	STBUFF
		TS	UPINDEX
		CA	STBUFF	+1
		TS	UPDT
		TC	POSTJUMP
		CADR	DOV70
UPEND71		CA	STBUFF
		TS	UPINDEX
		CA	STBUFF +1
		TS	UPPHASE
		TC	POSTJUMP
		CADR	DOV71
UPEND72		CA	STBUFF
		TS	UPINDEX
		CA	STBUFF +1
		TS 	UPPHASE
		CA	STBUFF +2
		TS	UPDT
		TC	POSTJUMP
		CADR	DOV72
UPEND73		CA	STBUFF
		TS	UPINDEX
		TC	POSTJUMP
		CADR	DOV73
UPEND75		TC	PHASCHNG
		OCT	05026
		OCT	33000
		INHINT			# INHINT BECAUSE PHASCHNG RELINTS AND BECA
					# USE RESTARTED JOB WILL NEED IT.
		INDEX	COMPNUMB	# V75
## In the original code, the following line had no operand, which the modern assembler
## doesn't currently support for this target.  However, "TC -0" (but not "TC 0") 
## produces the correct result.
		TC	-0		# FAN TO V72 ROUTINES
OCTID		OCT	02102
		TC	I=4
I=1		EXTEND
		DCA	STBUFF +1
		DXCH	RP
## Page 326
		TC	UPQUITRM	# RESTORE PRE-P27 MODE AND EXIT UPDATE
		TC	I=2
21OCT75		OCT	75
		TC	I=4
STATENV		OCT	2101
I=3		EXTEND
		DCA	STBUFF +1
		DXCH	R1VEC
		EXTEND
		DCA	STBUFF +3
		DXCH	R1VEC +2
		EXTEND
		DCA	STBUFF +5
		DXCH	R1VEC +4
		EXTEND
		DCA	STBUFF +7
		DXCH	TINT
		EXTEND
		DCA	STBUFF +9D
		DXCH	RCO
		TC	UPQUITRM	# RESTORE PRE-P27 MODE AND EXIT UPDATE
I=2		EXTEND
		DCA	STBUFF +1
		DXCH	CPT6/2
		EXTEND
		DCA	STBUFF +3
		DXCH	CPT6/2 +2
		EXTEND
		DCA	STBUFF +5
		DXCH	CPT6/2 +4
		TC	UPQUITRM	# RESTORE PRE-P27 MODE AND EXIT UPDATE
I=4		CS	FLAGWRD2	# IS ORBITAL INTEGRATION ON
		MASK	BIT7
		EXTEND
		BZF	SETUPRCK	# YES
		CAE	STBUFF +1
		AD	TE +1
		TS	STBUFF +13D
		CAF	ZERO
		AD	TE
		TS	STBUFF +12D
		CA	ZERO
		TS	L
		DXCH	TIME2
		DXCH	STBUFF +10D
		CA	FIVE
		TC	NEWPHASE
		OCT	00006
		
I=4.CONT	INHINT
## Page 327
		CA	ZERO
		TS	MPAC	+2	# FOR TPAGREE
		EXTEND	
		DCA	STBUFF	+12D
		DXCH	TE
		CA	STBUFF +1
		AD	STBUFF +11D
		TS	L
		CA	ZERO
		AD	STBUFF +10D
		DXCH	MPAC
		TC	TPAGREE		# FORCE SIGN AGREEMENT
		DXCH	MPAC
		DAS	TIME2		# NEW CLOCK
		CAF	SEVEN		# 6.7 SPOT TO RESTORE OLD PROGRAM MODE.
		TC	NEWPHASE
		OCT	00006
		
		TC	UPQUITRM	# RESTORE PRE-P27 MODE AND EXIT UPDATE
UPVERB34	TC	FREEDSP
UPQUITRM	TC	CHECKMM		# RESTORE MODE AND UPQUIT
		OCT	27
		TCF	UPQUIT
		CA	UPOLDMOD
		TC	NEWMODEX +3
		
UPQUIT		TC	BANKCALL	# SETS 6.0 SPOT AND DOES ENDOFJOB
		CADR	ENDUP
UPRANGE		EXTEND
		BZMF	UPRAUS		# C(A) LE ZERO RETURN TO Q
		CS	A
		INCR	A
		AD	UPTEMP
		EXTEND
		BZMF	UPRAUS		# C(A) GT C(LOC) RETURN TO Q
		INCR	Q
UPRAUS		TC	Q		# C(A) LE C(LOC) AND GT 0 RETURN TO Q+1
XCTALMRM	TC	CHECKMM
		OCT	27
		TCF	+3
		CA	UPOLDMOD
		TC	NEWMODEX +3
		TC	PHASCHNG
		OCT	00006
21XCTALM	TC	BANKCALL
		CADR	XACTALM
		
UPE4		OCT	2000
AOFC		OCT	00003
		OCT	00007
## Page 328
		OCT	00013
		OCT	00002
UPAOFTP1	ECADR	UPTEMP1
ASTBFM1		ECADR	STBUFF -1
3SEC21		DEC	300

### FILE="Main.annotation"
## Copyright:   Public domain.
## Filename:    CONTROLLED_CONSTANTS.agc
## Purpose:     A section of Luminary revision 116.
##              It is part of the source code for the Lunar Module's (LM) 
##              Apollo Guidance Computer (AGC) for Apollo 12.
##              This file is intended to be a faithful transcription, except
##              that the code format has been changed to conform to the
##              requirements of the yaYUL assembler rather than the
##              original YUL assembler.
## Reference:   pp. 38-53
## Assembler:   yaYUL
## Contact:     Ron Burkey <info@sandroid.org>.
## Website:     www.ibiblio.org/apollo/index.html
## Mod history: 2017-01-22 MAS  Created from Luminary 99.

## NOTE: Page numbers below have not yet been updated to reflect Luminary 116.

## Page 38
# DPS AND APS ENGINE PARAMETERS

                SETLOC          P40S                            
                BANK                                            
                COUNT*          $$/P40                          

# *** THE ORDER OF THE FOLLOWING SIX CONSTANTS MUST NOT BE CHANGED ***

FDPS            2DEC            4.3670          B-7             # 9817.5 LBS FORCE IN NEWTONS
MDOTDPS         2DEC            0.1480          B-3             # 32.62 LBS/SEC IN KGS/CS.
DTDECAY         2DEC            -38                             
FAPS            2DEC            1.5569          B-7             # 3500 LBS FORCE IN NEWTONS
MDOTAPS         2DEC            0.05135         B-3             # 11.32 LBS/SEC IN KGS/CS
ATDECAY         2DEC            -10                             

# ************************************************************************

FRCS4           2DEC            0.17792         B-7             # 400 LBS FORCE IN NEWTONS
FRCS2           2DEC            0.08896         B-7             # 200 LBS FORCE IN NEWTONS

                SETLOC          P40S1                           
                BANK                                            
                COUNT*          $$/P40                          

# *** APS IMPULSE DATA FOR P42 *******************************************

K1VAL           2DEC            124.55          B-23            # 2800 LB-SEC
K2VAL           2DEC            31.138          B-24            # 700 LB-SEC
K3VAL           2DEC            1.5569          B-10            # FAPS (3500 LBS THRUST)

# ************************************************************************

S40.136         2DEC            .4671           B-9             # .4671 M NEWTONS (DPS)
S40.136_        2DEC            .4671           B+1             # S40.136 SHIFTED LEFT 10.

                SETLOC          ASENT1                          
                BANK                                            
                COUNT*          $$/P70                          

(1/DV)A         2DEC            15.20           B-7             # 2 SECONDS WORTH OF INITIAL ASCENT
## Page 39
                                                                # STAGE ACCELERATION -- INVERTED (M/CS)
                                                                # 1) PREDICATED ON A LIFTOFF MASS OF
                                                                #    4869.9 KG (SNA-8-D-027 7/11/68)
                                                                # 2) PREDICATED ON A CONTRIBUTION TO VEH-
                                                                #    ICLE ACCELERATION FROM RCS THRUSTERS
                                                                #    EQUIV. TO 1 JET ON CONTINUOUSLY.

K(1/DV)         2DEC            436.70          B-9             # DPS ENGINE THRUST IN NEWTONS / 100 CS.

(AT)A           2DEC            3.2883          E-4     B9      # INITIAL ASC. STG. ACCELERATION ** M/CS.                                       
                                                                # ASSUMPTIONS SAME AS FOR (1/DV)A.
(TBUP)A         2DEC            91902           B-17            # ESTIMATED BURN-UP TIME OF THE ASCENT STG
                                                                # ASSUMPTIONS SAME AS FOR (1/DV)A WITH THE
                                                                # ADDITIONAL ASSUMPTION THAT NET MASS-FLOW
                                                                # RATE = 5.299 KG/SEC = 5.135 (APS) +
                                                                # .164 (1 RCS JET).
                SETLOC          ASENT                           
                BANK                                            
                COUNT*          $$/ASENT                        
AT/RCS          2DEC            .0000785        B+10            # 4 JETS IN A DRY LEM

                SETLOC          SERVICES                        
                BANK                                            
                COUNT*          $$/SERV                         

# *** THE ORDER OF THE FOLLOWING TWO CONSTANTS MUST NOT BE CHANGED *******

APSVEX          DEC             -3030           E-2     B-5     # 9942 FT/SEC IN M/CS.
DPSVEX          DEC*            -2.95588868     E+1     B-05*   # VE (DPS) +2.95588868E+ 3

# ************************************************************************

                SETLOC          F2DPS*31                        
                BANK                                            
                COUNT*          $$/F2DPS                        

TRIMACCL        2DEC*           +3.50132708     E-5     B+08*   # A (T) +3.50132708E- 1

## Page 40
# THROTTLING AND THRUST DETECTION PARAMETERS

                SETLOC          P40S                            
                BANK                                            
                COUNT*          $$/P40                          

THRESH1         DEC             24                              
THRESH3         DEC             12                              
HIRTHROT        =               BIT13                           

                SETLOC          FFTAG5                          
                BANK                                            
                COUNT*          $$/P40                          

THRESH2         DEC             308                             

                SETLOC          FTHROT                          
                BANK                                            
                COUNT*          $$/THROT                        

FMAXODD         DEC             +3841                           # FSAT          +4.81454413 E+4
FMAXPOS         DEC             +3467                           # FMAX          +4.34546769 E+4
THROTLAG        DEC             +20                             # TAU (TH)      +1.99999999 E-1
SCALEFAC        2DEC*           +7.97959872     E+2     B-16*   # BITPERF       +7.97959872 E-2

                SETLOC          F2DPS*32                        
                BANK                                            
                COUNT*          $$/F2DPS                        

DPSTHRSH        DEC             36                              # (THRESH1 + THRESH3 FOR P63)

## Page 41
# LM HARDWARE-RELATED PARAMETERS

                SETLOC          RADARUPT                        
                BANK                                            
                COUNT*          $$/RRUPT                        

LVELBIAS        DEC             -12288                          # LANDING RADAR BIAS FOR 153.6 KC.
RDOTBIAS        2DEC            17000                           # BIAS COUNT FOR RR RANGE RATE.

                SETLOC          LRS22                           
                BANK                                            
                COUNT*          $$/LRS22                        

RDOTCONV        2DEC            -.0019135344    B7              # CONVERTS RR RDOT READING TO M/CS AT 2(7)
RANGCONV        2DEC            2.859024        B-3             # CONVERTS RR RANGE READING TO M. AT 2(-29

                SETLOC          SERVICES                        
                BANK                                            
                COUNT*          $$/SERV                         

HBEAMANT        2DEC            -.4687018041                    # RANGE BEAM IN LR ANTENNA COORDINATES.
                2DEC            0                               
                2DEC            -.1741224271                    

HSCAL           2DEC            -.3288792                       # SCALES 1.079 FT/BIT TO 2(22)M.

# ***** THE SEQUENCE OF THE FOLLOWING CONSTANTS MUST BE PRESERVED ********

VZSCAL          2DEC            +.5410829105                    # SCALES .8668 FT/SEC/BIT TO 2(18) M/CS.
VYSCAL          2DEC            +.7565672446                    # SCALES 1.212 FT/SEC/BIT TO 2(18) M/CS.
VXSCAL          2DEC            -.4020043770                    # SCALES -.644 FT/SEC/BIT TO 2(18) M/CS.

# ************************************************************************

KPIP            DEC             .0512                           # SCALES DELV TO UNITS OF 2(5) M/CS.
KPIP1           2DEC            .0128                           # SCALES DELV TO UNITS OF 2(7) M/CS.
KPIP2           2DEC            .0064                           # SCALES DELV TO UNITS OF 2(8) M/CS.

## Page 42
ALTCONV         2DEC            1.399078846     B-4             # CONVERTS M*2(-24) TO BIT UNITS *2(-28).
ARCONV1         2DEC            656.167979      B-10            # CONV. ALTRATE COMP. TO BIT UNITS<

                SETLOC          R10                             
                BANK                                            
                COUNT*          $$/R10                          

ARCONV          OCT             24402                           # 656.1679798B-10 CONV ALTRATE TO BIT UNIT
ARTOA           DEC             .1066098        B-1             # .25/2.345 B-1 4X/SEC CYCLE RATE.
ARTOA2          DEC             .0021322        B8              # (.5)/(2.345)(100)
VELCONV         OCT             22316                           # 588.914 B-10 CONV VEL. TO BIT UNITS.
KPIP1(5)        DEC             .0512                           # SCALES DELV TO M/CS*2(-5).
MAXVBITS        OCT             00547                           # MAX. DISPLAYED VELOCITY 199.9989 FT/SEC.

                SETLOC          DAPS3                           
                BANK                                            
                COUNT*          $$/DAPAO                        

TORKJET1        DEC             .03757                          # 550 / .2 SCALED AT (+16) 64 / 180

## Page 43
# PARAMETERS RELATING TO MASS, INERTIA, AND VEHICLE DIMENSTIONS

                SETLOC          FRANDRES                        
                BANK                                            
                COUNT*          $$/START                        

FULLAPS         DEC             5050            B-16            # NOMINAL FULL ASCENT MASS -- 2(16) KG.

                SETLOC          LOADDAP1                        
                BANK                                            
                COUNT*          $$/R03                          

MINLMD          DEC             -2850           B-16            # MIN. DESCENT STAGE MASS -- 2(16) KG.
MINMINLM        DEC             -2200           B-16            # MIN ASCENT STAGE MASS -- 2(16) KG.
MINCSM          =               BIT11                           # MIN CSM MASS (OK FOR 1/ACCS) = 9050 LBS

                SETLOC          DAPS3                           
                BANK                                            
                COUNT*          $$/DAPAD                        

LOASCENT        DEC             2200            B-16            # MIN ASCENT LEM MASS -- 2(16) KG.
HIDESCNT        DEC             15300           B-16            # MAX DESCENT LEM MASS -- 2(16) KG.
LODESCNT        DEC             1750            B-16            # MIN DESCENT STAGE (ALONE) -- 2(16) KG.

## Page 44
# PHYSICAL CONSTANTS ( TIME - INVARIANT )

                SETLOC          IMU2                            
                BANK                                            
                COUNT*          $$/P07                          

OMEG/MS         2DEC            .24339048                       

                SETLOC          R30LOC                          
                BANK                                            
                COUNT*          $$/R30                          

# *** THE ORDER OF THE FOLLOWING TWO CONSTANTS MUST BE PRESERVED *********

1/RTMUM         2DEC*           .45162595       E-4     B14*    
1/RTMUE         2DEC*           .50087529       E-5     B17*    

# ************************************************************************

                SETLOC          P40S1                           
                BANK                                            
                COUNT*          $$/S40.9                        

EARTHMU         2DEC*           -3.986032       E10     B-36*   # M(3)/CS(2)

                SETLOC          ASENT1                          
                BANK                                            
                COUNT*          $$/P12                          

MUM(-37)        2DEC*           4.9027780       E8      B-37*   
MOONRATE        2DEC*           .26616994890062991E-7     B+19*   # RAD/CS.

                SETLOC          SERVICES                        
                BANK                                            
                COUNT*          $$/SERV                         

# *** THE ORDER OF THE FOLLOWING TWO CONSTANTS MUST BE PRESERVED *********

-MUDT           2DEC*           -7.9720645      E+12    B-44*   
-MUDT1          2DEC*           -9.8055560      E+10    B-44*   

# ************************************************************************

-MUDTMUN        2DEC*           -9.8055560      E+10    B-38*   
RESQ            2DEC*           40.6809913      E12     B-58*   

## Page 45
20J             2DEC            3.24692010      E-2             
2J              2DEC            3.24692010      E-3             

                SETLOC          P50S1                           
                BANK                                            
                COUNT*          $$/LOSAM                        

RSUBEM          2DEC            384402000       B-29            
RSUBM           2DEC            1738090         B-29            
RSUBE           2DEC            6378166         B-29            
ROE             2DEC            .00257125                       

                SETLOC          CONICS1                         
                BANK                                            
                COUNT*          $$/LT-LG                        

ERAD            2DEC            6373338         B-29            # PAD RADIUS
504RM           2DEC            1738090         B-29            # METERS B-29 (EQUATORIAL MOON RADIUS)

                SETLOC          CONICS1                         
                BANK                                            
                COUNT*          $$/CONIC                        

# *** THE ORDER OF THE FOLLOWING CONSTANTS MUST BE PRESERVED *************

MUTABLE         2DEC*           3.986032        E10     B-36*   # MUE
                2DEC*           .25087606       E-10    B+34*   # 1/MUE
                2DEC*           1.99650495      E5      B-18*   # SQRT(MUE)
                2DEC*           .50087529       E-5     B+17*   # 1/SQRT(MUE)
                2DEC*           4.902778        E8      B-30*   # MUM
                2DEC*           .203966         E-8     B+28*   # 1/MUM
                2DEC*           2.21422176      E4      B-15*   # SQRT(MUM)
                2DEC*           .45162595       E-4     B+14*   # 1/SQRT(MUM)

# ************************************************************************

## Page 46
                SETLOC          INTINIT                         
                BANK                                            
                COUNT*          $$/INTIN                        

OMEGMOON        2DEC*           2.66169947      E-8     B+23*   

                SETLOC          ORBITAL2                        
                BANK                                            
                COUNT*          $$/ORBIT                        

# *** THE ORDER OF THE FOLLOWING CONSTANTS MUST NOT BE CHANGED ***********

                2DEC*           1.32715445      E16     B-54*   # S
MUM             2DEC*           4.9027780       E8      B-30*   # M
MUEARTH         2DEC*           3.986032        E10     B-36*   
                2DEC            0                               
J4REQ/J3        2DEC*           .4991607391     E7      B-26*   
                2DEC            -176236.02      B-25            
2J3RE/J2        2DEC*           -.1355426363    E5      B-27*   
                2DEC*           .3067493316     E18     B-60*   
J2REQSQ         2DEC*           1.75501139      E21     B-72*   
3J22R2MU        2DEC*           9.20479048      E16     B-58*   

# ************************************************************************

                SETLOC          TOF-FF1                         
                BANK                                            
                COUNT*          $$/TFF                          

1/RTMU          2DEC*           .5005750271     E-5     B17*    # MODIFIED EARTH MU

                SETLOC          SBAND                           
                BANK                                            
                COUNT*          $$/R05                          

REMDIST         2DEC            384402000       B-29            # MEAN DISTANCE BETWEEN EARTH AND MOON.

## Page 47
# PHYSICAL CONSTANTS (TIME - VARIANT)

                SETLOC          STARTAB                         
                BANK                                            
                COUNT*          $$/STARS                        

                2DEC            +.8342971408    B-1             # STAR 37       X
                2DEC            -.2392481515    B-1             # STAR 37       Y
                2DEC            -.4966976975    B-1             # STAR 37       Z

                2DEC            +.8139832631    B-1             # STAR 36       X
                2DEC            -.5557243189    B-1             # STAR 36       Y
                2DEC            +.1691204557    B-1             # STAR 36       Z

                2DEC            +.4541086270    B-1             # STAR 35       X
                2DEC            -.5392368197    B-1             # STAR 35       Y
                2DEC            +.7092312789    B-1             # STAR 35       Z

                2DEC            +.3201817378    B-1             # STAR 34       X
                2DEC            -.4436021946    B-1             # STAR 34       Y
                2DEC            -.8370786986    B-1             # STAR 34       Z

                2DEC            +.5520184464    B-1             # STAR 33       X
                2DEC            -.7933187400    B-1             # STAR 33       Y
                2DEC            -.2567508745    B-1             # STAR 33       Z

                2DEC            +.4537196908    B-1             # STAR 32       X
                2DEC            -.8779508801    B-1             # STAR 32       Y
                2DEC            +.1527766153    B-1             # STAR 32       Z

                2DEC            +.2069525789    B-1             # STAR 31       X
                2DEC            -.8719885748    B-1             # STAR 31       Y
                2DEC            -.4436288486    B-1             # STAR 31       Z

                2DEC            +.1217293692    B-1             # STAR 30       X
                2DEC            -.7702732847    B-1             # STAR 30       Y
## Page 48
                2DEC            +.6259880410    B-1             # STAR 30       Z

                2DEC            -.1124304773    B-1             # STAR 29       X
                2DEC            -.9694934200    B-1             # STAR 29       Y
                2DEC            +.2178116072    B-1             # STAR 29       Z

                2DEC            -.1146237858    B-1             # STAR 28       X
                2DEC            -.3399692557    B-1             # STAR 28       Y
                2DEC            -.9334250333    B-1             # STAR 28       Z

                2DEC            -.3516499609    B-1             # STAR 27       X
                2DEC            -.8240752703    B-1             # STAR 27       Y
                2DEC            -.4441196390    B-1             # STAR 27       Z

                2DEC            -.5326876930    B-1             # STAR 26       X
                2DEC            -.7160644554    B-1             # STAR 26       Y
                2DEC            +.4511047742    B-1             # STAR 26       Z

                2DEC            -.7861763936    B-1             # STAR 25       X
                2DEC            -.5217996305    B-1             # STAR 25       Y
                2DEC            +.3311371675    B-1             # STAR 25       Z

                2DEC            -.6898393233    B-1             # STAR 24       X
                2DEC            -.4182330640    B-1             # STAR 24       Y
                2DEC            -.5909338474    B-1             # STAR 24       Z

                2DEC            -.5812035376    B-1             # STAR 23       X
                2DEC            -.2909171294    B-1             # STAR 23       Y
                2DEC            +.7599800468    B-1             # STAR 23       Z

                2DEC            -.9170097662    B-1             # STAR 22       X
                2DEC            -.3502146628    B-1             # STAR 22       Y
                2DEC            -.1908999176    B-1             # STAR 22       Z

## Page 49
                2DEC            -.4523440203    B-1             # STAR 21       X
                2DEC            -.0493710140    B-1             # STAR 21       Y
                2DEC            -.8904759346    B-1             # STAR 21       Z

                2DEC            -.9525211695    B-1             # STAR 20       X
                2DEC            -.0593434796    B-1             # STAR 20       Y
                2DEC            -.2986331746    B-1             # STAR 20       Z

                2DEC            -.9656605484    B-1             # STAR 19       X
                2DEC            +.0525933156    B-1             # STAR 19       Y
                2DEC            +.2544280809    B-1             # STAR 19       Z

                2DEC            -.8608205219    B-1             # STAR 18       X
                2DEC            +.4636213989    B-1             # STAR 18       Y
                2DEC            +.2098647835    B-1             # STAR 18       Z

                2DEC            -.7742591356    B-1             # STAR 17       X
                2DEC            +.6152504197    B-1             # STAR 17       Y
                2DEC            -.1482892839    B-1             # STAR 17       Z

                2DEC            -.4657947941    B-1             # STAR 16       X
                2DEC            +.4774785033    B-1             # STAR 16       Y
                2DEC            +.7450164351    B-1             # STAR 16       Z

                2DEC            -.3612508532    B-1             # STAR 15       X
                2DEC            +.5747270840    B-1             # STAR 15       Y
                2DEC            -.7342932655    B-1             # STAR 15       Z

                2DEC            -.4118589524    B-1             # STAR 14       X
                2DEC            +.9065485360    B-1             # STAR 14       Y
                2DEC            +.0924226975    B-1             # STAR 14       Z

                2DEC            -.1820751783    B-1             # STAR 13       X
## Page 50
                2DEC            +.9404899869    B-1             # STAR 13       Y
                2DEC            -.2869271926    B-1             # STAR 13       Z

                2DEC            -.0614937230    B-1             # STAR 12       X
                2DEC            +.6031563286    B-1             # STAR 12       Y
                2DEC            -.7952489957    B-1             # STAR 12       Z

                2DEC            +.1371725575    B-1             # STAR 11       X
                2DEC            +.6813721061    B-1             # STAR 11       Y
                2DEC            +.7189685267    B-1             # STAR 11       Z

                2DEC            +.2011399589    B-1             # STAR 10       X
                2DEC            +.9690337941    B-1             # STAR 10       Y
                2DEC            -.1432348512    B-1             # STAR 10       Z

                2DEC            +.3507315038    B-1             # STAR 9        X
                2DEC            +.8926333307    B-1             # STAR 9        Y
                2DEC            +.2831839492    B-1             # STAR 9        Z

                2DEC            +.4105636020    B-1             # STAR 8        X
                2DEC            +.4988110001    B-1             # STAR 8        Y
                2DEC            +.7632988371    B-1             # STAR 8        Z

                2DEC            +.7032235469    B-1             # STAR 7        X
                2DEC            +.7075846047    B-1             # STAR 7        Y
                2DEC            +.0692868685    B-1             # STAR 7        Z

                2DEC            +.5450107404    B-1             # STAR 6        X
                2DEC            +.5314955466    B-1             # STAR 6        Y
                2DEC            -.6484410356    B-1             # STAR 6        Z

                2DEC            +.0130968840    B-1             # STAR 5        X
                2DEC            +.0078062795    B-1             # STAR 5        Y
## Page 51
                2DEC            +.9998837600    B-1             # STAR 5        Z

                2DEC            +.4917678276    B-1             # STAR 4        X
                2DEC            +.2204887125    B-1             # STAR 4        Y
                2DEC            -.8423473935    B-1             # STAR 4        Z

                2DEC            +.4775639450    B-1             # STAR 3        X
                2DEC            +.1166004340    B-1             # STAR 3        Y
                2DEC            +.8708254803    B-1             # STAR 3        Z

                2DEC            +.9342640400    B-1             # STAR 2        X
                2DEC            +.1735073142    B-1             # STAR 2        Y
                2DEC            -.3115219339    B-1             # STAR 2        Z

                2DEC            +.8748658918    B-1             # STAR 1        X
                2DEC            +.0260879174    B-1             # STAR 1        Y
                2DEC            +.4836621670    B-1             # STAR 1        Z

CATLOG          DEC             6970                            

# ************************************************************************

                SETLOC          EPHEM1                          
                BANK                                            
                COUNT*          $$/EPHEM                        

KONMAT          2DEC            1.0             B-1             #         *************
                2DEC            0                               #                     *
                2DEC            0                               #                     *
                2DEC            0                               #                     *
                2DEC            .91745          B-1             # K1 COS(OBL)         *
                2DEC            -.03571         B-1             # K2 SIN(OBL)SIN(IM)  *
                2DEC            0                               #                     *
                2DEC            .39784          B-1             # K3 SIN(OBL)         *
## Page 52
                2DEC            .082354         B-1             # K4 COS(OBL)SIN(IM)  *
CSTODAY         2DEC            8640000         B-33            #                     * NOTE           *
RCB-13          OCT             00002                           #                     * TABLES CONTAIN *
                OCT             00000                           #                     * CONSTANTS FOR  *
RATESP          2DEC            .03660098       B+4             # LOMR                * 1969 - 1970    *
                2DEC            .00273779       B+4             # LOSR
                2DEC            -.00014719      B+4             # LONR
                2DEC            .815282336                      # LOMO
                2DEC            .274674910                      # LOSO
                2DEC            .986209499                      # LONO
VAL67           2DEC*           .01726666666    B+1*            # AMOD
                2DEC            .530784445                      # AARG
                2DEC            .036291712      B+1             # 1/27
                2DEC            .003505277      B+1             # BMOD
                2DEC            .585365625                      # BARG
                2DEC            .03125          B+1             # 1/32
                2DEC            .005325277      B+1             # CMOD
                2DEC            -.01106341036                   # CARG
                2DEC            .002737925      B+1             # 1/365

# ************************************************************************

                SETLOC          PLANTIN2                        
                BANK                                            
                COUNT*          $$/LUROT                        

COSI            2DEC            .99964173       B-1             # COS (5521.5 SEC) B-1
SINI            2DEC            .02676579       B-1             # SIN (5521.5 SEC) B-1
NODDOT          2DEC            -.457335121     E-2             # REVS/CSEC B+28 = -1.07047011 E-8 RAD/SEC
FDOT            2DEC            .570863327                      # REVS/CSEC B+27 =  2.67240410 E-6 RAD/SEC
## Page 53
BDOT            2DEC            -3.07500686     E-8             # REVS/CSEC B+28=-7.19757301 E-14 RAD/SEC
NODIO           2DEC            .986209434                      # REVS B-D    = 6.19653663041 RAD
FSUBO           2DEC            .829090536                      # REVS B-D    = 5.20932947829 RAD
BSUBO           2DEC            .0651201393                     # REVS B-D    = 0.40916190299 RAD
WEARTH          2DEC            .973561595                      # REVS/CSEC B+23= 7.29211494 E-5 RAD/SEC


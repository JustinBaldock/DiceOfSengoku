
 � ( � 60000 : � FUNCTION - SETUP . � T( � 55000 � FUNCTION - TITLE SCREEN Z2 � y< � 50000 : � CREATE PLAYERS �A � GOSUB 62000 :REM CHECK DICE ROLL �F � PROCESS PLAYER TURN �G � CHECK FOR AVAILABLE TERRITORY BEFORE EACH TURN 	P � PL � 0 � MP "	Z � GOSUB PROCESS PLAYER TURN. -	d � 2000 _	n � IF TERRITORY IS TRUE THEN GOSUB PLAYER-TURN �	x � TE � 1 � � PL : � IF TERRITORY IS TRUE �	� � GAME HAS ENDED �	� � DISPLAY SCORES �	� � 45000 �	� � �	� � DP(6) :� DICEPOOL �	� � 1000 �	� � 
�� ROLL DICE 
�� DICE = 1 = SAMURAI 2
�� DICE = 2 = ARCHER I
�� DICE = 3 = HORSE g
�� DICE = 4 = 3 X SWORDMAN �
�� DICE = 5 = 2 X SWORDMAN �
�� DICE = 6 = 1 X SWORDMAN �
�� RND(X) TAKES A SEED X, WE ARE PUTTING TIME �
�� I � 0 � 6 �
�DP(I) � 1��(�(0)�6) � I 
� -�� CHECK IF TERRITORY AVAILABLE Q�TE�0 : � SET TERRITORY TO FALSE b�� I � 0 � 13 ��� TE(I,0)�0 � TE�1:� PRINT"TERRITORY AVAILABLE." ��� I �� �ȯ� FUNCTION - DISPLAY SCORES �ү� �PÏ FUNCTION - CREATE PLAYERS QÏ LOCAL VARIABLES; P= NUMBER PLAYERS CRÏ X= LOOP COUNTER, S= TEMP STRING VARIABLE `SÏ GLOBAL VARIABLES; PL() mZÙ �(147) �dÙ "HOW MANY PLAYERS (2-6)": � P �hË (P�2) � (P�6) � � 50020 : � INPUT WAS NOT VALID INPUT nÏ PRINT "NOW DECIDE IF PLAYERS ARE CPU / HUMAN" xÁ X � 1 � P &�Ù "IS PLAYER ",X G�Ù "CPU OR HUMAN [C/H]": � S$ o�Ë (S$ � "C") � (S$ � "H") � � 50070 ��É 50055 : � INPUT WAS NOT VALID ��Ë S$ � "C" � PL$(X,1)�"C" : PL$(X,2)�"CPU" ��Ë S$ � "H" � PL$(X,1)�"H" : � 51000 : � GET PLAYER NAME �Â X �Î "8Ǐ GET PLAYER NAME CBǙ "ENTER PLAYER NAME": � NA$ nLǙ "NAME IS ",NA$,"CORRECT? Y/N": � UI$ �Vǋ UI$ � "Y" � � 51050 �`ǉ 51010 : � PLAYER NAME NOT CORRECT �j�PL$(X,2)�NA$ �tǎ ��֏ FUNCTION - TITLE SCREEN ��֙ "DICE OF SENGOKU" �֎ <x� SET CHARACTERSET POINTER TO BLOCK 14 ADDRESS 14336 ]�� 53272, (�(53272)� 240)� 14 ��� ITERATE OVER CHARACTERS 122-127 ��� CH�0 � 127: ��� BYTE�0�7: � 8 BYTES PER CHACTER ��� READ NEXT BYTE OF CHARACTER DATA (CD) �� THEN SAVE THE DATA TO THE CHARACTER MEMORY !�� CD <�� 14336�(8�CH)�BYTE,CD W�� ITERATE TO NEXT BYTE b�� BYTE z�� DO NEXT CHARACTER ��� CH ��� �`� FUNCTION - SETUP �j� PL�0: � PL = CURRENT PLAYER �t� MP�1: � MP = MAX NUMBER PLAYERS ~� PL$(6,2): � ARRAY OF PLAYERS, MAX 6 PLAYERS H� EACH HAVING 2 ELEMENTS. CPU/HUMAN, NAME X�� TE(13,11) ��� ARRAY OF TERRITORY, MAX 14 TERRITORY, EACH HAVING 11 ELEMENTS?. ��� TE$(13) ��� SETUP TERRITORY ��� 60700 ��� SETUP CHARACTERS ��� 59000 ��� � SETUP TERRITORY DATA N� OWNER (0=NO ONE, 1-6 PLAYER), CLAN (0-4), SCORE (1-3) �� DEFENCE TYPE 1(1-4), DEFENCE NUM 1(1-10), DEFENCE TYPE 2(1-4) �� DEFENCE NUM 2(1-10) � � DEFENCE TYPE 3(1-4), DEFENCE NUM 3(1-10), DEFENCE TYPE 4(1-4) 
!� DEFENCE NUM 4(1-10) D"� 1=SAMURAI 2=ARCHER 3=HORSE 4=SWORD 5=ARCHER + HORSE V&� TERRITORY 0 l'�TE$(0)�"KUMANOTO" �(�TE(0,0)�0: TE(0,1)�0: TE(0,2)�3 �)�TE(0,3)�1: TE(0,4)�2: TE(0,5)�2: TE(0,6)�1 �*�TE(0,7)�3: TE(0,8)�1: TE(0,9)�4: TE(0,10)�4 0� TERRITORY 1 1�TE$(1)�"CASSANTODA" =2�TE(1,0)�0: TE(1,1)�1: TE(1,2)�2 l3�TE(1,3)�1: TE(1,4)�1: TE(1,5)�4: TE(1,6)�8 �4�TE(1,7)�0: TE(1,8)�0: TE(1,9)�0: TE(1,10)�0 �:� TERRITORY 2 �;�TE$(2)�"TAKAHASHI" �<�TE(2,0)�0: TE(2,1)�1: TE(2,2)�2 =�TE(2,3)�3: TE(2,4)�2: TE(2,5)�4: TE(2,6)�5 H>�TE(2,7)�4: TE(2,8)�2: TE(2,9)�0: TE(2,10)�0 ZD� TERRITORY 3 qE�TE$(3)�"MATSUYAMA" �F�TE(3,0)�0: TE(3,1)�2: TE(3,2)�2 �G�TE(3,3)�1: TE(3,4)�1: TE(3,5)�4: TE(3,6)�4 �H�TE(3,7)�4: TE(3,8)�4: TE(3,9)�0: TE(3,10)�0 N� TERRITORY 4 O�TE$(4)�"MARUGAME" @P�TE(4,0)�0: TE(4,1)�2: TE(4,2)�1 oQ�TE(4,3)�1: TE(4,4)�2: TE(4,5)�3: TE(4,6)�1 �R�TE(4,7)�0: TE(4,8)�0: TE(4,9)�0: TE(4,10)�0 �X� TERRITORY 5 �Y�TE$(5)�"ODANI" �Z�TE(5,0)�0: TE(5,1)�3: TE(5,2)�1 [�TE(5,3)�4: TE(5,4)�10: TE(5,5)�0: TE(5,6)�0 H\�TE(5,7)�0: TE(5,8)�0: TE(5,9)�0: TE(5,10)�0 Zb� TERRITORY 6 lc�TE$(6)�"GIFU" �d�TE(6,0)�0: TE(6,1)�3: TE(6,2)�1 �e�TE(6,3)�1: TE(6,4)�1: TE(6,5)�2: TE(6,6)�1 �f�TE(6,7)�3: TE(6,8)�1: TE(6,9)�0: TE(6,10)�0 l� TERRITORY 7 m�TE$(7)�"AZUCHI" 9n�TE(7,0)�0: TE(7,1)�3: TE(7,2)�3 ho�TE(7,3)�2: TE(7,4)�1: TE(7,5)�3: TE(7,6)�2 �p�TE(7,7)�4: TE(7,8)�5: TE(7,9)�0: TE(7,10)�0 �v� TERRITORY 8 �w�TE$(8)�"MATSUMOTO" �x�TE(8,0)�0: TE(8,1)�3: TE(8,2)�2 y�TE(8,3)�2: TE(8,4)�1: TE(8,5)�2: TE(8,6)�1 Dz�TE(8,7)�4: TE(8,8)�7: TE(8,9)�0: TE(8,10)�0 V�� TERRITORY 9 m��TE$(9)�"KITANOSHO" ���TE(9,0)�0: TE(9,1)�4: TE(9,2)�3 ���TE(9,3)�1: TE(9,4)�1: TE(9,5)�5: TE(9,6)�1 ���TE(9,7)�4: TE(9,8)�6: TE(9,9)�0: TE(9,10)�0 �� TERRITORY 10 ��TE$(10)�"KASUGAYMA" B��TE(10,0)�0: TE(10,1)�4: TE(10,2)�4 u��TE(10,3)�2: TE(10,4)�2: TE(10,5)�3: TE(10,6)�2 ���TE(10,7)�0: TE(10,8)�0: TE(10,9)�0: TE(10,10)�0 ��� TERRITORY 11 ���TE$(11)�"KIYOSU" ���TE(11,0)�0: TE(11,1)�5: TE(11,2)�2 +��TE(11,3)�1: TE(11,4)�1: TE(11,5)�2: TE(11,6)�1 _��TE(11,7)�3: TE(11,8)�1: TE(11,9)�4: TE(11,10)�3 r�� TERRITORY 12 ���TE$(12)�"INUYAMA" ���TE(12,0)�0: TE(12,1)�5: TE(12,2)�1 ���TE(12,3)�1: TE(12,4)�1: TE(12,5)�2: TE(12,6)�2 ��TE(12,7)�0: TE(12,8)�0: TE(12,9)�0: TE(12,10)�0 )�� TERRITORY 13 ;��TE$(13)�"EDO" b��TE(13,0)�0: TE(13,1)�5: TE(13,2)�3 ���TE(13,3)�5: TE(13,4)�1: TE(13,5)�5: TE(13,6)�1 ���TE(13,7)�4: TE(13,8)�3: TE(13,9)�0: TE(13,10)�0 ��� �H� FUNCTION TO TEST TERRITORY ARRAY R� I � 0 � 13 \� TE$(I) 9f� "OWNER="TE(I,0),"CLAN="TE(I,1) Ap� I G�� `0� CHECK ROLL OF DICE k:� 1000 {D� I � 0 � 6 �N� DP(I)�1 � DI$��(186) �X� DP(I)�2 � DI$��(187) �b� DP(I)�3 � DI$��(188) �l� DP(I)�4 � DI$��(189) v� DP(I)�5 � DI$��(190) �� DP(I)�6 � DI$��(191) 0�� "DICE",I,DI$ 8�� I >�� Y�� CUSTOM CHARACTER SET y"�� 60,102,110,110,96,98,60,0 �,�� 24,60,102,126,102,102,102,0 �6�� 124,102,102,124,102,102,124,0 �@�� 60,102,96,96,96,102,60,0 J�� 120,108,102,102,102,108,120,0 "T�� 126,96,96,120,96,96,126,0 A^�� 126,96,96,120,96,96,96,0 bh�� 60,102,96,110,102,102,60,0 �r�� 102,102,102,126,102,102,102,0 �|�� 60,24,24,24,24,24,60,0 ���� 30,12,12,12,12,108,56,0 ���� 102,108,120,112,120,108,102,0  ��� 96,96,96,96,96,96,126,0 # ��� 99,119,127,107,99,99,99,0 G ��� 102,118,126,126,110,102,102,0 i ��� 60,102,102,102,102,102,60,0 � ��� 124,102,102,124,96,96,96,0 � ��� 60,102,102,102,102,60,14,0 � ��� 124,102,102,124,120,108,102,0 � ��� 60,102,96,60,6,102,60,0 !��� 126,24,24,24,24,24,24,0 .!��� 102,102,102,102,102,102,60,0 P!��� 102,102,102,102,102,60,24,0 p!�� 99,99,99,107,127,119,99,0 �!�� 102,102,60,24,60,102,102,0 �!�� 102,102,102,60,24,24,24,0 �!&�� 126,6,12,24,48,96,126,0 �!0�� 60,48,48,48,48,48,60,0 ":�� 12,18,48,124,48,98,252,0 ("D�� 60,12,12,12,12,12,60,0 F"N�� 0,24,60,126,24,24,24,24 d"X�� 0,16,48,127,127,48,16,0 z"b�� 0,0,0,0,0,0,0,0 �"l�� 24,24,24,24,0,0,24,0 �"v�� 102,102,102,0,0,0,0,0 �"��� 102,102,255,102,255,102,102,0 �"��� 24,62,96,60,6,124,24,0 #��� 98,102,12,24,48,102,70,0 1#��� 60,102,60,56,103,102,63,0 I#��� 6,12,24,0,0,0,0,0 f#��� 12,24,48,48,48,24,12,0 �#��� 48,24,12,12,12,24,48,0 �#��� 0,102,60,255,60,102,0,0 �#��� 0,24,24,126,24,24,0,0 �#��� 0,0,0,0,0,24,24,48 �#��� 0,0,0,126,0,0,0,0 $��� 0,0,0,0,0,24,24,0  $��� 0,3,6,12,24,48,96,0 B$�� 60,102,110,118,102,102,60,0 `$�� 24,24,56,24,24,24,126,0 ~$�� 60,102,6,12,48,96,126,0 �$ �� 60,102,6,28,6,102,60,0 �$*�� 6,14,30,102,127,6,6,0 �$4�� 126,96,124,6,6,102,60,0 �$>�� 60,102,96,124,102,102,60,0 %H�� 126,102,12,24,24,24,24,0 6%R�� 60,102,102,60,102,102,60,0 U%\�� 60,102,102,62,6,102,60,0 m%f�� 0,0,24,0,0,24,0,0 �%p�� 0,0,24,0,0,24,24,48 �%z�� 14,24,48,96,48,24,14,0 �%��� 0,0,126,0,126,0,0,0 �%��� 112,24,12,6,12,24,112,0 �%��� 60,102,6,12,24,0,24,0 &��� 0,0,0,255,255,0,0,0 0&��� 8,28,62,127,127,28,62,0 N&��� 24,24,24,24,24,24,24,24 h&��� 0,0,0,255,255,0,0,0 �&��� 0,0,255,255,0,0,0,0 �&��� 0,255,255,0,0,0,0,0 �&��� 0,0,0,0,255,255,0,0 �&��� 48,48,48,48,48,48,48,48 �&��� 12,12,12,12,12,12,12,12 '��� 0,0,0,224,240,56,24,24 )'�� 24,24,28,15,7,0,0,0 F'�� 24,24,56,240,224,0,0,0 l'�� 192,192,192,192,192,192,255,255 �'$�� 192,224,112,56,28,14,7,3 �'.�� 3,7,14,28,56,112,224,192 �'8�� 255,255,192,192,192,192,192,192 �'B�� 255,255,3,3,3,3,3,3 
(L�� 0,60,126,126,126,126,60,0 $(V�� 0,0,0,0,0,255,255,0 C(`�� 54,127,127,127,62,28,8,0 a(j�� 96,96,96,96,96,96,96,96 {(t�� 0,0,0,7,15,28,24,24 �(~�� 195,231,126,60,60,126,231,195 �(��� 0,60,126,102,102,126,60,0 �(��� 24,24,102,102,24,24,60,0 �(��� 6,6,6,6,6,6,6,6 )��� 8,28,62,127,62,28,8,0 0)��� 24,24,24,255,255,24,24,24 R)��� 192,192,48,48,192,192,48,48 p)��� 24,24,24,24,24,24,24,24 �)��� 0,0,3,62,118,54,54,0 �)��� 255,127,63,31,15,7,3,1 �)��� 0,0,0,0,0,0,0,0 �)��� 240,240,240,240,240,240,240,240 *��� 0,0,0,0,255,255,255,255 * �� 255,0,0,0,0,0,0,0 2*
�� 0,0,0,0,0,0,0,255 X*�� 192,192,192,192,192,192,192,192 z*�� 204,204,51,51,204,204,51,51 �*(�� 3,3,3,3,3,3,3,3 �*2�� 0,0,0,0,204,204,51,51 �*<�� 255,254,252,248,240,224,192,128 �*F�� 3,3,3,3,3,3,3,3 +P�� 24,24,24,31,31,24,24,24  +Z�� 0,0,0,0,15,15,15,15 ;+d�� 24,24,24,31,31,0,0,0 X+n�� 0,0,0,248,248,24,24,24 r+x�� 0,0,0,0,0,0,255,255 �+��� 0,0,0,31,31,24,24,24 �+��� 24,24,24,255,255,0,0,0 �+��� 0,0,0,255,255,24,24,24 �+��� 24,24,24,248,248,24,24,24 ,��� 192,192,192,192,192,192,192,192 3,��� 224,224,224,224,224,224,224,224 I,��� 7,7,7,7,7,7,7,7 c,��� 255,255,0,0,0,0,0,0 ,��� 255,255,255,0,0,0,0,0 �,��� 0,0,0,0,0,255,255,255 �,��� 48,120,252,254,159,31,31,28 �,��� 48,40,36,255,36,36,40,48 �,��� 161,162,164,8,80,32,80,128 -�� 65,66,68,8,80,32,80,128 6-�� 1,2,4,8,80,32,80,128 W-�� 66,36,24,60,126,66,231,126   
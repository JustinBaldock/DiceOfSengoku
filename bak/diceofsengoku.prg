
 � DICE  � ****  � 9d � �(147):� CLEAR SCREEN Vn � 53281,0:� BLACK SCREEN sx � 53280,0:� BLACK BORDER �� � �(158):� YELLOW INK �� � �� � �20)"DICE" �� �:�:� �� � �12);"THIS PROGRAM ROLLS" �� � �15);"THREE DICE" �� � N�0 � 7 �� � 	� � N 	� � ***** 	� S$��(32) 4	� T$�S$:E$�S$�S$�S$�S$ B	� � N�0 � 4 O	S$�S$�S$ W	� N d	S$�S$�E$ �	"� S$ CONTAINS 36 SPACES �	,UP$��(145) �	6� N�0 � 2 �	@UP$�UP$�UP$ �	J� N �	T� UP$ CONTAINS 8 CURSOR UP CODES �	^R$��(188) �	hA$�R$�T$�T$ 
rB$�T$�R$�T$ 
|C$�T$�T$�R$ (
�D$�R$�T$�R$ F
�� DOT PATTERNS IN STRINGS W
�� DICE$(2,2) b
�� **** n
�� AGAIN �
�� �11)"PRESS ANY KEY TO ROLL" �
� W$:� W$�"" � 520 �
� WAIT FOR KEY �
� NO SPACE BETWEEN INVERTED COMMAS �
0� N�0 � 7 �
:� S$  D� N 
N� UP$ %X� CLEAR PREVIOUS THROW 0b� **** >l� N�0 � 2 OvVL%�1�6��(1) y�� VL% � 1000,2000,3000,4000,5000,6000 �� ��� GENERATE PATTERNS ��� **** ��� N�0 � 2 ���, DICE$(0,N),DICE$(1,N),DICE$(2,N) ��� ���:� ��� PRINT PATTERNS �� **** �� D�0 � 200:� $�� DELAY ?�� 500: � GO TO 'AGAIN' J� **** \� SUBROUTINES f � *** p�� ONE ��DICE$(N,0)�E$ ��DICE$(N,1)�B$ �DICE$(N,2)�E$ �� �� *** ��� TWO ��DICE$(N,0)�A$ ��DICE$(N,1)�E$ ��DICE$(N,2)�C$ ��� � *** �� THREE $�DICE$(N,0)�A$ 6�DICE$(N,1)�B$ H�DICE$(N,2)�C$ N�� Y�� **** d�� FOUR v�DICE$(N,0)�D$ ��DICE$(N,1)�E$ ��DICE$(N,2)�D$ ��� ��� **** ��� FIVE ��DICE$(N,0)�D$ ��DICE$(N,1)�B$ ��DICE$(N,2)�D$ ��� ��� **** p� SIX zDICE$(N,0)�D$ +�DICE$(N,1)�D$ =�DICE$(N,2)�D$ C�� N�� ****   
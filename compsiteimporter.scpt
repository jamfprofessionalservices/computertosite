FasdUAS 1.101.10   ��   ��    k             l     ��  ��     
!/bin/bash     � 	 	  ! / b i n / b a s h   
  
 l     ��  ��    i c###################################################################################################     �   � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #      l     ��������  ��  ��        l     ��  ��    D > Copyright (c) 2015, JAMF Software, LLC.  All rights reserved.     �   |   C o p y r i g h t   ( c )   2 0 1 5 ,   J A M F   S o f t w a r e ,   L L C .     A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    O I       Redistribution and use in source and binary forms, with or without     �   �               R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t      l     ��   ��    X R       modification, are permitted provided that the following conditions are met:      � ! ! �               m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t :   " # " l     �� $ %��   $ U O               * Redistributions of source code must retain the above copyright    % � & & �                               *   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t #  ' ( ' l     �� ) *��   ) T N                 notice, this list of conditions and the following disclaimer.    * � + + �                                   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . (  , - , l     �� . /��   . X R               * Redistributions in binary form must reproduce the above copyright    / � 0 0 �                               *   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t -  1 2 1 l     �� 3 4��   3 Z T                 notice, this list of conditions and the following disclaimer in the    4 � 5 5 �                                   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e 2  6 7 6 l     �� 8 9��   8 [ U                 documentation and/or other materials provided with the distribution.    9 � : : �                                   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 7  ; < ; l     �� = >��   = I C               * Neither the name of the JAMF Software, LLC nor the    > � ? ? �                               *   N e i t h e r   t h e   n a m e   o f   t h e   J A M F   S o f t w a r e ,   L L C   n o r   t h e <  @ A @ l     �� B C��   B [ U                 names of its contributors may be used to endorse or promote products    C � D D �                                   n a m e s   o f   i t s   c o n t r i b u t o r s   m a y   b e   u s e d   t o   e n d o r s e   o r   p r o m o t e   p r o d u c t s A  E F E l     �� G H��   G \ V                 derived from this software without specific prior written permission.    H � I I �                                   d e r i v e d   f r o m   t h i s   s o f t w a r e   w i t h o u t   s p e c i f i c   p r i o r   w r i t t e n   p e r m i s s i o n . F  J K J l     ��������  ��  ��   K  L M L l     �� N O��   N L F       THIS SOFTWARE IS PROVIDED BY JAMF SOFTWARE, LLC "AS IS" AND ANY    O � P P �               T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   J A M F   S O F T W A R E ,   L L C   " A S   I S "   A N D   A N Y M  Q R Q l     �� S T��   S V P       EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED    T � U U �               E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D R  V W V l     �� X Y��   X S M       WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE    Y � Z Z �               W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E W  [ \ [ l     �� ] ^��   ] O I       DISCLAIMED. IN NO EVENT SHALL JAMF SOFTWARE, LLC BE LIABLE FOR ANY    ^ � _ _ �               D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   J A M F   S O F T W A R E ,   L L C   B E   L I A B L E   F O R   A N Y \  ` a ` l     �� b c��   b W Q       DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    c � d d �               D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S a  e f e l     �� g h��   g Y S       (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;    h � i i �               ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ; f  j k j l     �� l m��   l X R       LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND    m � n n �               L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D k  o p o l     �� q r��   q W Q       ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    r � s s �               O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T p  t u t l     �� v w��   v Z T       (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS    w � x x �               ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S u  y z y l     �� { |��   { I C       SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    | � } } �               S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . z  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   �  #############    � � � �  # # # # # # # # # # # # # �  � � � l     �� � ���   � $ API script to push into a Site    � � � � < A P I   s c r i p t   t o   p u s h   i n t o   a   S i t e �  � � � l     �� � ���   � A ; Trey Howell, Professional Services Engineer, JAMF Software    � � � � v   T r e y   H o w e l l ,   P r o f e s s i o n a l   S e r v i c e s   E n g i n e e r ,   J A M F   S o f t w a r e �  � � � l     �� � ���   � L F  CSV must have two columns and no header      Serial number and site     � � � � �     C S V   m u s t   h a v e   t w o   c o l u m n s   a n d   n o   h e a d e r             S e r i a l   n u m b e r   a n d   s i t e   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ;###########################################################    � � � � v # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � " ####Ask for JSS API Username    � � � � 8 # # # # A s k   f o r   J S S   A P I   U s e r n a m e �  � � � l     ����� � I    �� � �
�� .sysodlogaskr        TEXT � m      � � � � � 8 E n t e r   u s e r n a m e   f o r   J S S   A P I   : � �� ���
�� 
dtxt � m     � � � � �  U s e r n a m e��  ��  ��   �  � � � l    ����� � r     � � � n     � � � 1   	 ��
�� 
ttxt � 1    	��
�� 
rslt � o      ���� 0 	your_user  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � # #####Ask for JSS API Password    � � � � : # # # # # A s k   f o r   J S S   A P I   P a s s w o r d �  � � � l    ����� � I   �� � �
�� .sysodlogaskr        TEXT � m     � � � � � 4 E n t e r   p a s s w o r d   f o r   J S S   A P I � �� � �
�� 
dtxt � m     � � � � �  P a s s w o r d � �� � �
�� 
disp � m    ��
�� stic     � �� ���
�� 
htxt � m    ��
�� boovtrue��  ��  ��   �  � � � l    ����� � r     � � � n     � � � 1    ��
�� 
ttxt � 1    ��
�� 
rslt � o      ���� 0 your_password  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  ######Ask for JSS Address    � � � � 2 # # # # # # A s k   f o r   J S S   A d d r e s s �  � � � l    ' ����� � I    '�� � �
�� .sysodlogaskr        TEXT � m     ! � � � � � N E n t e r   J S S   A d d r e s s   w i t h   N O   e n d i n g   S l a s h : � �� ���
�� 
dtxt � m   " # � � � � � , h t t p s : / / m y j s s . c o m : 8 4 4 3��  ��  ��   �  � � � l  ( / ����� � r   ( / � � � n   ( + � � � 1   ) +��
�� 
ttxt � 1   ( )��
�� 
rslt � o      ���� 0 your_jss  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � : 4###################################VERIFY ##########    � � � � h # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # V E R I F Y   # # # # # # # # # # �  � � � l     �� � ���   � H B######check if user can log in to jss API -- has 10 second timeout    � � � � � # # # # # # c h e c k   i f   u s e r   c a n   l o g   i n   t o   j s s   A P I   - -   h a s   1 0   s e c o n d   t i m e o u t �  � � � l  0 Q ����� � r   0 Q � � � b   0 M � � � b   0 I � � � b   0 G � � � b   0 C   b   0 ? b   0 ; b   0 9 b   0 5	 m   0 3

 � > c u r l   - - c o n n e c t - t i m e o u t   1 0   - k s u  	 o   3 4���� 0 	your_user   m   5 8 �  : o   9 :���� 0 your_password   m   ; > �    o   ? B���� 0 your_jss   � m   C F � > / J S S R e s o u r c e / a c c o u n t s / u s e r n a m e / � o   G H���� 0 	your_user   � m   I L � �   |   x p a t h   / a c c o u n t / n a m e [ 1 ]   |   s e d   ' s , < n a m e > , , ; s , < / n a m e > , , '   |   t a i l   - 1 � o      ���� 0 apiacct  ��  ��   �  l  R ]���� r   R ] I  R Y����
�� .sysoexecTEXT���     TEXT o   R U���� 0 apiacct  ��   o      ���� 0 
apiuserrun  ��  ��    l     ����    display dialog apiuserrun    � 2 d i s p l a y   d i a l o g   a p i u s e r r u n   l  ^M!����! Z   ^M"#��$" =   ^ e%&% o   ^ a���� 0 
apiuserrun  & m   a d'' �((  # k   h q)) *+* I  h o��,��
�� .sysodlogaskr        TEXT, m   h k-- �.. � T h e   u s e r   a c c o u n t   o r   p a s s w o r d   w a s   w r o n g ,   o r   d o e s n ' t   h a v e   A P I   R i g h t s��  + /��/  S   p q��  ��  $ k   tM00 121 I  t ���34
�� .sysodlogaskr        TEXT3 b   t 565 b   t {787 m   t w99 �:: 
 U s e r  8 o   w z���� 0 
apiuserrun  6 m   { ~;; �<<    e x i s t s   o n   J S S   a n d   c a n   q u e r y   A P I .   T h i s   p r o c e s s   w i l l   s t a r t   o n c e   b u t t o n   i s   c l i c k e d   a n d   c a n   t a k e   q u i t e   a   f e w   m i n u t e s   d e p e n d i n g   o n   h o w   m a n y   d e v i c e s .4 ��=��
�� 
btns= J   � �>> ?��? m   � �@@ �AA  R o g e r   T h a t��  ��  2 BCB l  � ���������  ��  ��  C DED l  � ���FG��  F i c###################################################################################################   G �HH � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #E IJI l  � ���~�}�  �~  �}  J KLK l  � ��|MN�|  M  #####Looking for Path   N �OO * # # # # # L o o k i n g   f o r   P a t hL PQP r   � �RSR l  � �T�{�zT I  � ��y�xU
�y .sysostdfalis    ��� null�x  U �wV�v
�w 
prmpV m   � �WW �XX z S e l e c t   t h e   C S V   f i l e   t h a t   c o n t a i n s   s e r i a l   N u m b e r   a n d   a s s e t   t a g�v  �{  �z  S o      �u�u 0 thefile theFileQ YZY l  � ��t�s�r�t  �s  �r  Z [\[ l  � ��q]^�q  ]  ## Read the Data   ^ �__   # #   R e a d   t h e   D a t a\ `a` r   � �bcb I  � ��pd�o
�p .rdwrread****        ****d o   � ��n�n 0 thefile theFile�o  c o      �m�m 0 f  a efe l  � ��l�k�j�l  �k  �j  f ghg l  � ��iij�i  i  ### Break data into rows   j �kk 0 # # #   B r e a k   d a t a   i n t o   r o w sh lml X   �=n�hon k   �8pp qrq l  � ��g�f�e�g  �f  �e  r sts l  � ��duv�d  u $ ###parse from comma Delimited    v �ww < # # # p a r s e   f r o m   c o m m a   D e l i m i t e d  t xyx r   � �z{z I   � ��c|�b�c 0 parsecsv parseCSV| }�a} c   � �~~ o   � ��`�` 0 row   m   � ��_
�_ 
ctxt�a  �b  { o      �^�^ 
0 fields  y ��� l  � ��]�\�[�]  �\  �[  � ��� l  � ��Z���Z  � ! ###Set Rows for Data Fields   � ��� 6 # # # S e t   R o w s   f o r   D a t a   F i e l d s� ��� r   � ���� n   � ���� 4   � ��Y�
�Y 
cobj� m   � ��X�X � o   � ��W�W 
0 fields  � o      �V�V 
0 serial  � ��� r   � ���� n   � ���� 4   � ��U�
�U 
cobj� m   � ��T�T � o   � ��S�S 
0 fields  � o      �R�R 0 site  � ��� l  � ��Q�P�O�Q  �P  �O  � ��� l  � ��N�M�L�N  �M  �L  � ��� l  � ��K���K  � < 6#### Setting Variable for xml file with asset variable   � ��� l # # # #   S e t t i n g   V a r i a b l e   f o r   x m l   f i l e   w i t h   a s s e t   v a r i a b l e� ��� r   ���� b   � ���� b   � ���� n   � ���� 1   � ��J
�J 
strq� m   � ��� ��� > < c o m p u t e r > < g e n e r a l > < s i t e > < n a m e >� o   � ��I�I 0 site  � n   � ���� 1   � ��H
�H 
strq� m   � ��� ��� F < / n a m e > < / s i t e > < / g e n e r a l > < / c o m p u t e r >� o      �G�G 0 dd  � ��� l �F�E�D�F  �E  �D  � ��� l �C���C  � ; 5##### This creates the XML file that will be imported   � ��� j # # # # #   T h i s   c r e a t e s   t h e   X M L   f i l e   t h a t   w i l l   b e   i m p o r t e d� ��� I �B��A
�B .sysoexecTEXT���     TEXT� b  ��� b  
��� m  �� ��� 
 e c h o  � o  	�@�@ 0 dd  � m  
�� ���     >   / t m p / s i t e . x m l�A  � ��� l �?�>�=�?  �>  �=  � ��� I 6�<��;
�< .sysoexecTEXT���     TEXT� b  2��� b  .��� b  *��� b  &��� b  "��� b  ��� b  ��� b  ��� m  �� ���  c u r l   - k   - s   - u  � o  �:�: 0 	your_user  � m  �� ���  :� o  �9�9 0 your_password  � m  !�� ���   � o  "%�8�8 0 your_jss  � m  &)�� ��� H / J S S R e s o u r c e / c o m p u t e r s / s e r i a l n u m b e r /� o  *-�7�7 
0 serial  � m  .1�� ��� 0   - T   / t m p / s i t e . x m l   - X   P U T�;  � ��6� l 77�5�4�3�5  �4  �3  �6  �h 0 row  o l  � ���2�1� n   � ���� 2  � ��0
�0 
cpar� o   � ��/�/ 0 f  �2  �1  m ��.� I >M�-��
�- .sysodlogaskr        TEXT� m  >A�� ���  U P L O A D   C O M P L E T E� �,��+
�, 
btns� J  DI�� ��*� m  DG�� ���  O K�*  �+  �.  ��  ��    ��� l     �)���)  � % ####needed for parseing the CSV   � ��� > # # # # n e e d e d   f o r   p a r s e i n g   t h e   C S V� ��� i     ��� I      �(��'�( 0 parsecsv parseCSV� ��&� o      �%�% 0 thetext theText�&  �'  � k     &�� ��� r     ��� J     �� ��� n       1    �$
�$ 
txdl  f     � �# m     �  ,�#  � J        o      �"�" 0 od   �! n     	
	 1    � 
�  
txdl
  f    �!  �  r     n     2   �
� 
citm o    �� 0 thetext theText o      �� 0 
parsedtext 
parsedText  r    # o    �� 0 od   n      1     "�
� 
txdl  f      � L   $ & o   $ %�� 0 
parsedtext 
parsedText�  � � l     ����  �  �  �       ��   ��� 0 parsecsv parseCSV
� .aevtoappnull  �   � **** ������ 0 parsecsv parseCSV� ��   �� 0 thetext theText�   ��
�	� 0 thetext theText�
 0 od  �	 0 
parsedtext 
parsedText ���
� 
txdl
� 
cobj
� 
citm� ')�,�lvE[�k/E�Z[�l/)�,FZO��-E�O�)�,FO� � ��!"�
� .aevtoappnull  �   � ****  k    M##  �$$  �%%  �&&  �''  �((  �))  �** ++ ��  �  �  ! � �  0 row  " ; ��� ��������� � ����������� � ���
������'-9;��@��W�����������������������������������������
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� 0 	your_user  
�� 
disp
�� stic    
�� 
htxt�� �� 0 your_password  �� 0 your_jss  �� 0 apiacct  
�� .sysoexecTEXT���     TEXT�� 0 
apiuserrun  
�� 
btns
�� 
prmp
�� .sysostdfalis    ��� null�� 0 thefile theFile
�� .rdwrread****        ****�� 0 f  
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt�� 0 parsecsv parseCSV�� 
0 fields  �� 
0 serial  �� 0 site  
�� 
strq�� 0 dd  �N���l O��,E�O������e� O��,E�O���l O��,E` Oa �%a %�%a %_ %a %�%a %E` O_ j E` O_ a   a j OY �a _ %a %a a kvl O*a a  l !E` "O_ "j #E` $O �_ $a %-[a &a 'l (kh  *�a )&k+ *E` +O_ +a 'k/E` ,O_ +a 'l/E` -Oa .a /,_ -%a 0a /,%E` 1Oa 2_ 1%a 3%j Oa 4�%a 5%�%a 6%_ %a 7%_ ,%a 8%j OP[OY��Oa 9a a :kvl  ascr  ��ޭ
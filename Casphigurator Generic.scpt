FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ! Enter in your JSS URL here.     � 	 	 6 E n t e r   i n   y o u r   J S S   U R L   h e r e .   
  
 l     ����  r         m        �   0 h t t p s : / / y o u . j s s . u r l : 8 4 4 3  o      ���� 0 
yourjssurl 
yourJSSurl��  ��        l     ��  ��   There are more varaibles to be set for your specific extension attrbutes, but I have yet to figure out a way to set them at the top of the script as we need to have nested variables defined in them later on. Do a find/text search in this script for "--Define extension attributes"     �  0 T h e r e   a r e   m o r e   v a r a i b l e s   t o   b e   s e t   f o r   y o u r   s p e c i f i c   e x t e n s i o n   a t t r b u t e s ,   b u t   I   h a v e   y e t   t o   f i g u r e   o u t   a   w a y   t o   s e t   t h e m   a t   t h e   t o p   o f   t h e   s c r i p t   a s   w e   n e e d   t o   h a v e   n e s t e d   v a r i a b l e s   d e f i n e d   i n   t h e m   l a t e r   o n .   D o   a   f i n d / t e x t   s e a r c h   i n   t h i s   s c r i p t   f o r   " - - D e f i n e   e x t e n s i o n   a t t r i b u t e s "      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    9 3prompt the user for their JSS username and password     �   f p r o m p t   t h e   u s e r   f o r   t h e i r   J S S   u s e r n a m e   a n d   p a s s w o r d       l    !���� ! I   �� " #
�� .sysodlogaskr        TEXT " m     $ $ � % % . E n t e r   y o u r   J S S   u s e r n a m e # �� &��
�� 
dtxt & m     ' ' � ( (  ��  ��  ��      ) * ) l    +���� + r     , - , l    .���� . l    /���� / n     0 1 0 1    ��
�� 
ttxt 1 l    2���� 2 1    ��
�� 
rslt��  ��  ��  ��  ��  ��   - o      ���� 0 jssuser jssUser��  ��   *  3 4 3 l     ��������  ��  ��   4  5 6 5 l    7���� 7 I   �� 8 9
�� .sysodlogaskr        TEXT 8 m     : : � ; ; & E n t e r   y o u r   p a s s w o r d 9 �� < =
�� 
dtxt < m     > > � ? ?   = �� @��
�� 
htxt @ m    ��
�� boovtrue��  ��  ��   6  A B A l   J C���� C Z    J D E�� F D >   # G H G n    ! I J I 1    !��
�� 
leng J l    K���� K n     L M L 1    ��
�� 
ttxt M l    N���� N 1    ��
�� 
rslt��  ��  ��  ��   H m   ! "����   E r   & + O P O l  & ) Q���� Q l  & ) R���� R n   & ) S T S 1   ' )��
�� 
ttxt T l  & ' U���� U 1   & '��
�� 
rslt��  ��  ��  ��  ��  ��   P o      ���� 0 jsspass jssPass��   F k   . J V V  W X W I  . ?�� Y Z
�� .sysodlogaskr        TEXT Y m   . / [ [ � \ \ l Y o u   d i d n ' t   e n t e r   a   p a s s w o r d !   R e - r u n   t h i s   s c r i p t   a g a i n . Z �� ] ^
�� 
btns ] v   2 7 _ _  `�� ` m   2 5 a a � b b  O K��   ^ �� c��
�� 
dflt c m   : ;���� ��   X  d�� d R   @ J���� e
�� .ascrerr ****      � ****��   e �� f��
�� 
errn f m   D G��������  ��  ��  ��   B  g h g l     ��������  ��  ��   h  i j i l     ��������  ��  ��   j  k l k l     �� m n��   m G Aset the variable for the credentials to be used in a curl command    n � o o � s e t   t h e   v a r i a b l e   f o r   t h e   c r e d e n t i a l s   t o   b e   u s e d   i n   a   c u r l   c o m m a n d l  p q p l  K V r���� r r   K V s t s b   K R u v u b   K P w x w o   K L���� 0 jssuser jssUser x m   L O y y � z z  : v o   P Q���� 0 jsspass jssPass t o      ���� 0 apiuser apiUser��  ��   q  { | { l     ��������  ��  ��   |  } ~ } l     ��  ���    T NA long set of prompts to guide the user to build the devices name to follow...    � � � � � A   l o n g   s e t   o f   p r o m p t s   t o   g u i d e   t h e   u s e r   t o   b u i l d   t h e   d e v i c e s   n a m e   t o   f o l l o w . . . ~  � � � l  W� ����� � Q   W� � � � � k   ZS � �  � � � r   Z c � � � m   Z ] � � � � �  i P a d   S e t u p � 1   ] b��
�� 
ppgd �  � � � r   d m � � � m   d g � � � � � : C o l l e c t i n g   N a m i n g   I n f o r m a t i o n � 1   g l��
�� 
ppga �  � � � l  n n��������  ��  ��   �  � � � l  n n��������  ��  ��   �  � � � l  n n�� � ���   � [ UPrompts the user to select the district which will be used to build the device's name    � � � � � P r o m p t s   t h e   u s e r   t o   s e l e c t   t h e   d i s t r i c t   w h i c h   w i l l   b e   u s e d   t o   b u i l d   t h e   d e v i c e ' s   n a m e �  � � � T   n � � � k   s � � �  � � � r   s � � � � J   s � � �  � � � m   s v � � � � �  D i s t r i c t   1 �  � � � m   v y � � � � �  D i s t r i c t   2 �  � � � m   y | � � � � �  D i s t r i c t   3 �  � � � m   |  � � � � �  D i s t r i c t   4 �  � � � m    � � � � � �  D i s t r i c t   5 �  ��� � m   � � � � � � �  D i s t r i c t   6��   � o      ���� (0 districtoptionlist DistrictOptionList �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� (0 districtoptionlist DistrictOptionList � �� ���
�� 
prmp � m   � � � � � � � 2 P l e a s e   s e l e c t   a   d i s t r i c t :��   � o      ����  0 chosendistrict chosenDistrict �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ��� � � =  � � � � � o   � �����  0 chosendistrict chosenDistrict � m   � ���
�� boovfals � l   � � � � � � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������   �   user cancelled     � � � �     u s e r   c a n c e l l e d  ��   � l   � � � � � � r   � � � � � n  � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � �����  0 chosendistrict chosenDistrict � o      ����  0 chosendistrict chosenDistrict �    extract choice from list     � � � � 4   e x t r a c t   c h o i c e   f r o m   l i s t   �  ��� � Z  � � � ����� � >  � � � � � o   � �����  0 chosendistrict chosenDistrict � m   � � � � � � �   �  S   � ���  ��  ��   �  � � � l  � �����~��  �  �~   �  � � � l  � ��} � ��}   � h bThis repeat takes the previous response and prompts the user to select a building in that district    � � � � � T h i s   r e p e a t   t a k e s   t h e   p r e v i o u s   r e s p o n s e   a n d   p r o m p t s   t h e   u s e r   t o   s e l e c t   a   b u i l d i n g   i n   t h a t   d i s t r i c t �  � � � T   � � � k   � � �  � � � l  � ��| � ��|   � * $big list of buildings to choose from    � � � � H b i g   l i s t   o f   b u i l d i n g s   t o   c h o o s e   f r o m �  � � � Z   �� � � ��{ � =  � � � � � o   � ��z�z  0 chosendistrict chosenDistrict � m   � � � � �    D i s t r i c t   1 � k   �  r   � � m   � � �  D 1 o      �y�y 0 districtabrv districtAbrv �x r   �	
	 J   �  m   � � �   H i g h   S c h o o l :   H H S  m   � � � $ M i d d l e   S c h o o l :   H M S  m   � � � ( A d u l t   E d u c a t i o n :   A D E  m   � � � & A d m i n i s t r a t i o n :   A D M  m   � � �   M a i n t e n a n c e :   M N T  �w  m   � !! �"" & T r a n s p o r t a t i o n :   T R N�w  
 o      �v�v (0 buildingoptionlist BuildingOptionList�x   � #$# = %&% o  �u�u  0 chosendistrict chosenDistrict& m  '' �((  D i s t r i c t   2$ )*) k  @++ ,-, r  ./. m  00 �11  D 2/ o      �t�t 0 districtabrv districtAbrv- 2�s2 r  @343 J  <55 676 m   88 �99  E a s t :   E S T7 :;: m   #<< �==  H e i g h t s :   H S T; >?> m  #&@@ �AA  J e f f e r s o n :   J E F? BCB m  &)DD �EE  W e s t :   W S TC FGF m  ),HH �II   H i g h   S c h o o l :   H H SG JKJ m  ,/LL �MM  M a p l e w o o d :   M A PK NON m  /2PP �QQ F M a i n t e n a n c e   a n d   T r a n s p o r t a t i o n :   M T CO RSR m  25TT �UU  V a n   R a a l t e :   V A NS V�rV m  58WW �XX & A d m i n i s t r a t i o n :   A D M�r  4 o      �q�q (0 buildingoptionlist BuildingOptionList�s  * YZY = CJ[\[ o  CF�p�p  0 chosendistrict chosenDistrict\ m  FI]] �^^  D i s t r i c t   3Z _`_ k  Mdaa bcb r  MTded m  MPff �gg  D 3e o      �o�o 0 districtabrv districtAbrvc h�nh r  Udiji J  U`kk lml m  UXnn �oo * E a r l y   o n   P r o g r a m :   E O Pm pqp m  X[rr �ss   Z e e l a n d   C B I :   Z C Bq t�mt m  [^uu �vv J C o o p e r s v i l e   P u p i l   A c c o u n t   O f f i c e :   C P A�m  j o      �l�l (0 buildingoptionlist BuildingOptionList�n  ` wxw = gnyzy o  gj�k�k  0 chosendistrict chosenDistrictz m  jm{{ �||  D i s t r i c t   4x }~} k  q� ��� r  qx��� m  qt�� ���  D 4� o      �j�j 0 districtabrv districtAbrv� ��i� r  y���� J  y��� ��� m  y|�� ���   H i g h   S c h o o l :   O H S� ��� m  |�� ��� $ M i d d l e   S c h o o l :   O M S� ��� m  ��� ��� * L o w e r   E l e m e n t a r y :   O L E� ��� m  ���� ��� * U p p e r   E l e m e n t a r y :   O U E� ��� m  ���� ��� D E a r l y   C h i l d   /   A d u l t   E d u c a t i o n :   O E C� ��h� m  ���� ��� 6 A d m i n   /   T r a n s p o r t a t i o n :   O A T�h  � o      �g�g (0 buildingoptionlist BuildingOptionList�i  ~ ��� = ����� o  ���f�f  0 chosendistrict chosenDistrict� m  ���� ���  D i s t r i c t   5� ��� k  ���� ��� r  ����� m  ���� ���  D 5� o      �e�e 0 districtabrv districtAbrv� ��d� r  ����� J  ���� ��� m  ���� ��� 2 H i g h   /   M i d d l e   S c h o o l :   S H S� ��� m  ���� ��� . D o u g l a s   E l e m e n t a r y :   D E S� ��� m  ���� ��� H C e n t r a l   O f f i c e   ( A d m i n i s t r a t i o n ) :   A D M� ��� m  ���� ��� & T r a n s p o r t a t i o n :   T R N� ��c� m  ���� ���  P r e s c h o o l :   P R E�c  � o      �b�b (0 buildingoptionlist BuildingOptionList�d  � ��� = ����� o  ���a�a  0 chosendistrict chosenDistrict� m  ���� ���  D i s t r i c t   6� ��`� k  ���� ��� r  ����� m  ���� ���  D 6� o      �_�_ 0 districtabrv districtAbrv� ��^� r  ����� J  ���� ��� m  ���� ���   H i g h   S c h o o l :   S L H� ��� m  ���� ��� $ M i d d l e   S c h o o l :   S L M� ��� m  ���� ���  A l t   E d :   S A E� ��� m  ���� ��� & T r a n s p o r t a t i o n :   S T R� ��� m  ���� ���   M a i n t e n a n c e :   S M A� ��]� m  ���� ��� > F i t n e s s   a n d   A q u a t i c   C e n t e r :   F A C�]  � o      �\�\ (0 buildingoptionlist BuildingOptionList�^  �`  �{   � ��[� Z ����Z�Y� > ����� o  ���X�X 0 districtabrv districtAbrv� m  ���� ���  �  S  ���Z  �Y  �[   � ��� l �W�V�U�W  �V  �U  � ��� l �T���T  �  update device baseName   � ��� , u p d a t e   d e v i c e   b a s e N a m e� ��� r     o  �S�S 0 districtabrv districtAbrv o      �R�R 0 basename baseName�  l �Q�P�O�Q  �P  �O    l �N�N   Z Tprompt user to select a building. BuildingOptionList is set by the previous repeat.	    � � p r o m p t   u s e r   t o   s e l e c t   a   b u i l d i n g .   B u i l d i n g O p t i o n L i s t   i s   s e t   b y   t h e   p r e v i o u s   r e p e a t . 	 	
	 T  ] k  X  r  & I "�M
�M .gtqpchltns    @   @ ns   o  �L�L (0 buildingoptionlist BuildingOptionList �K�J
�K 
prmp m   � 2 P l e a s e   s e l e c t   a   b u i d l i n g :�J   o      �I�I  0 chosenbuilding chosenBuilding  Z  'H�H = ', o  '*�G�G  0 chosenbuilding chosenBuilding m  *+�F
�F boovfals l  /9 R  /9�E�D 
�E .ascrerr ****      � ****�D    �C!�B
�C 
errn! m  36�A�A���B     user cancelled     �""     u s e r   c a n c e l l e d  �H   l  <H#$%# r  <H&'& n <D()( 4  ?D�@*
�@ 
cobj* m  BC�?�? ) o  <?�>�>  0 chosenbuilding chosenBuilding' o      �=�=  0 chosenbuilding chosenBuilding$    extract choice from list    % �++ 4   e x t r a c t   c h o i c e   f r o m   l i s t   ,�<, Z IX-.�;�:- > IP/0/ o  IL�9�9  0 chosenbuilding chosenBuilding0 m  LO11 �22  .  S  ST�;  �:  �<  
 343 l ^^�8�7�6�8  �7  �6  4 565 l ^^�578�5  7 o iAll of the building name options contain their abbreviation as the last word, we'll use that in the name.   8 �99 � A l l   o f   t h e   b u i l d i n g   n a m e   o p t i o n s   c o n t a i n   t h e i r   a b b r e v i a t i o n   a s   t h e   l a s t   w o r d ,   w e ' l l   u s e   t h a t   i n   t h e   n a m e .6 :;: r  ^j<=< l ^f>�4�3> n ^f?@? 4 af�2A
�2 
cworA m  de�1�1��@ o  ^a�0�0  0 chosenbuilding chosenBuilding�4  �3  = o      �/�/ 0 buildingabrv buildingAbrv; BCB l kk�.�-�,�.  �-  �,  C DED l kk�+�*�)�+  �*  �)  E FGF l kk�(HI�(  H  update device basename   I �JJ , u p d a t e   d e v i c e   b a s e n a m eG KLK r  k~MNM b  kzOPO b  kvQRQ b  krSTS o  kn�'�' 0 districtabrv districtAbrvT m  nqUU �VV  -R o  ru�&�& 0 buildingabrv buildingAbrvP m  vyWW �XX 
 - I P A -N o      �%�% 0 basename baseNameL YZY l �$�#�"�$  �#  �"  Z [\[ T  �]] k  ��^^ _`_ l ���!ab�!  a ) #get room, cart or department number   b �cc F g e t   r o o m ,   c a r t   o r   d e p a r t m e n t   n u m b e r` ded I ��� fg
�  .sysodlogaskr        TEXTf b  ��hih b  ��jkj b  ��lml b  ��non b  ��pqp b  ��rsr m  ��tt �uu � Y o u ' r e   d o i n g   g r e a t .   S o   f a r   y o u ' v e   n a m e d   t h e   b a s e   n a m e   o f   t h e s e   i P a d s   t o :s o  ���
� 
ret q o  ���
� 
ret o o  ���� 0 basename baseNamem o  ���
� 
ret k o  ���
� 
ret i m  ��vv �ww � T h i s   i s   t h e   h a r d   p a r t ,   h o w   a r e   t h e s e   i P a d s   g o i n g   t o   b e   i d e n t i f i e d   i n   t h i s   b u i d l i n g .   I s   i t   b y . . . ?g �x�
� 
btnsx J  ��yy z{z m  ��|| �}}  C a r t   N u m b e r{ ~~ m  ���� ���  R o o m   N u m b e r ��� m  ���� ��� , D e p a r t m e n t   A b r i v i a t i o n�  �  e ��� Z  ������� = ����� l ������ n  ����� 1  ���
� 
bhit� l ������ 1  ���
� 
rslt�  �  �  �  � m  ���� ���  C a r t   N u m b e r� k  �U�� ��� r  ����� m  ���� ���  C a r t   N u m b e r� o      �� 0 groupidchoice groupIDchoice� ��� r  ���� J  ��� ��� m  ���� ���  0 1� ��� m  ���� ���  0 2� ��� m  ���� ���  0 3� ��� m  ���� ���  0 4� ��� m  ���� ���  0 5� ��� m  ���� ���  0 6� ��� m  ���� ���  0 7� ��� m  ���� ���  0 8� ��� m  ���� ���  0 9� ��� m  ���� ���  1 0� ��� m  ���� ���  1 1� ��� m  ���� ���  1 2� ��� m  ���� ���  1 3� ��� m  ���� ���  1 4� ��� m  ���� ���  1 5� ��� m  ���� ���  1 6� ��� m  ���� ���  1 7� ��� m  ���� ���  1 8� ��� m  ���� ���  1 9� ��� m  ��� ���  2 0� ��� m  �� ���  2 1� ��� m  �� ���  2 2� ��� m  �� ���  2 3� ��� m  �� ���  2 4� ��� m  �� �    2 5�  � o      �� &0 numberchoiceslist numberChoiceslist�  r  + I '�
� .gtqpchltns    @   @ ns   o  �� &0 numberchoiceslist numberChoiceslist ��

� 
prmp m   # �		 * S e l e c t   c a r t ' s   n u m b e r :�
   o      �	�	 0 chosennumber chosenNumber 
�
 Z  ,U� = ,1 o  ,/�� 0 chosennumber chosenNumber m  /0�
� boovfals l  4> R  4>��
� .ascrerr ****      � ****�   ��
� 
errn m  8;� � ���     user cancelled     �     u s e r   c a n c e l l e d  �   k  AU  l  AM r  AM n AI 4  DI�� 
�� 
cobj  m  GH����  o  AD���� 0 chosennumber chosenNumber o      ���� 0 chosennumber chosenNumber    extract choice from list     �!! 4   e x t r a c t   c h o i c e   f r o m   l i s t   "��" r  NU#$# o  NQ���� 0 chosennumber chosenNumber$ o      ���� 0 groupid groupID��  �  � %&% = Xa'(' l X])����) n  X]*+* 1  Y]��
�� 
bhit+ l XY,����, 1  XY��
�� 
rslt��  ��  ��  ��  ( m  ]`-- �..  R o o m   N u m b e r& /0/ k  d�11 232 r  dk454 m  dg66 �77  R o o m   N u m b e r5 o      ���� 0 groupidchoice groupIDchoice3 898 I l���:;
�� .sysodlogaskr        TEXT: b  l{<=< b  lw>?> b  ls@A@ m  loBB �CC  O k a y .   E n t e r   t h eA 1  or��
�� 
spac? o  sv���� 0 groupidchoice groupIDchoice= m  wzDD �EE  :; ��F��
�� 
dtxtF m  |GG �HH  ��  9 I��I r  ��JKJ l ��L����L n  ��MNM 1  ����
�� 
ttxtN l ��O����O 1  ����
�� 
rslt��  ��  ��  ��  K o      ���� 0 groupid groupID��  0 PQP = ��RSR l ��T����T n  ��UVU 1  ����
�� 
bhitV l ��W����W 1  ����
�� 
rslt��  ��  ��  ��  S m  ��XX �YY , D e p a r t m e n t   A b r i v i a t i o nQ Z��Z k  ��[[ \]\ r  ��^_^ m  ��`` �aa , D e p a r t m e n t   A b r i v i a t i o n_ o      ���� 0 groupidchoice groupIDchoice] bcb I ����de
�� .sysodlogaskr        TEXTd b  ��fgf b  ��hih b  ��jkj m  ��ll �mm  O k a y .   E n t e r   t h ek 1  ����
�� 
spaci o  ������ 0 groupidchoice groupIDchoiceg m  ��nn �oo  :e ��p��
�� 
dtxtp m  ��qq �rr  ��  c s��s r  ��tut l ��v����v n  ��wxw 1  ����
�� 
ttxtx l ��y����y 1  ����
�� 
rslt��  ��  ��  ��  u o      ���� 0 groupid groupID��  ��  �  � z��z Z ��{|����{ > ��}~} o  ������ 0 groupid groupID~ m  �� ���  |  S  ����  ��  ��  \ ��� l ����������  ��  ��  � ��� l ��������  � , &update the device's base name variable   � ��� L u p d a t e   t h e   d e v i c e ' s   b a s e   n a m e   v a r i a b l e� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ������ 0 districtabrv districtAbrv� m  ���� ���  -� o  ������ 0 buildingabrv buildingAbrv� m  ���� ��� 
 - I P A -� o  ������ 0 groupid groupID� o      ���� 0 basename baseName� ��� I ������
�� .sysodlogaskr        TEXT� b  ����� b  ����� m  ���� ��� ` S o   f a r   s o   g o o d .   D e v i c e   b a s e   n a m e   i s   n o w   s e t   t o   '� o  ������ 0 basename baseName� m  ���� ���  ' .��  � ��� l ��������  ��  ��  � ��� l ������  � J Dprompt the user to enter what number to start numbering devices at		   � ��� � p r o m p t   t h e   u s e r   t o   e n t e r   w h a t   n u m b e r   t o   s t a r t   n u m b e r i n g   d e v i c e s   a t 	 	� ��� T  B�� k  =�� ��� I ����
�� .sysodlogaskr        TEXT� m  �� ���B E n t e r   t h e   s t a r t i n g   n u m b e r   f o r   t h e   n a m i n g   s e q u e n c e .   I f   t h i s   i s   a   n e w   c a r t ,   s t a r t   a t   1 .   O t h e r w i s e ,   d o u b l e   c h e c k   t h e   J S S   o r   T e c h n i c i a n   f o r   w h e r e   t h i s   c a r t   l e f t   o f f .� �����
�� 
dtxt� m  �� ���  1��  � ���� Q  =���� k  0�� ��� r  "��� c  ��� l ������ l ������ n  ��� 1  ��
�� 
ttxt� l ������ 1  ��
�� 
rslt��  ��  ��  ��  ��  ��  � m  ��
�� 
long� o      ����  0 startingnumber startingNumber� ���� Z #0������� ? #(��� o  #&����  0 startingnumber startingNumber� m  &'����  �  S  +,��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � I 8=������
�� .sysobeepnull��� ��� long��  ��  ��  � ��� l CC��������  ��  ��  � ��� l CC������  � M Gtell the user they did a great job and let them double check their work   � ��� � t e l l   t h e   u s e r   t h e y   d i d   a   g r e a t   j o b   a n d   l e t   t h e m   d o u b l e   c h e c k   t h e i r   w o r k� ��� I CZ�����
�� .sysodlogaskr        TEXT� b  CV��� b  CR��� b  CN��� b  CJ��� m  CF�� ��� j G r e a t !   W e ' l l   s t a r t   n a m i n g   t h e s e   i P a d s   s t a r t i n g   f r o m   '� o  FI���� 0 basename baseName� m  JM�� ���  '   w i t h   n u m b e r  � o  NQ����  0 startingnumber startingNumber� m  RU�� ���  .��  � ��� l [[��������  ��  ��  � ��� l [[������  � C =prompt the user to enter a username to assign the devices to	   � ��� z p r o m p t   t h e   u s e r   t o   e n t e r   a   u s e r n a m e   t o   a s s i g n   t h e   d e v i c e s   t o 	� ��� I [f����
�� .sysodlogaskr        TEXT� m  [^�� ��� � E n t e r   t h e   u s e r n a m e   t h i s   d e v i c e s   i s   b e i n g   a s s i g n e d   t o .   I f   n o t   u s e r ,   l e a v e   b l a n k .� �����
�� 
dtxt� m  _b�� ���  ��  � ��� r  gn��� l gj������ l gj������ n  gj��� 1  hj��
�� 
ttxt� l gh������ 1  gh��
�� 
rslt��  ��  ��  ��  ��  ��  � o      ���� ,0 assigneduserusername assignedUserUsername� ��� l oo��������  ��  ��  � � � l oo����   d ^prompt the user to select the app distribution lists they want the devices to be subscribed to    � � p r o m p t   t h e   u s e r   t o   s e l e c t   t h e   a p p   d i s t r i b u t i o n   l i s t s   t h e y   w a n t   t h e   d e v i c e s   t o   b e   s u b s c r i b e d   t o   l oo����   { uYou'll need to have corresponding smart groups looking for this criteria, and apps scoped to those groups on your JSS    � � Y o u ' l l   n e e d   t o   h a v e   c o r r e s p o n d i n g   s m a r t   g r o u p s   l o o k i n g   f o r   t h i s   c r i t e r i a ,   a n d   a p p s   s c o p e d   t o   t h o s e   g r o u p s   o n   y o u r   J S S 	
	 r  o� I o���
�� .gtqpchltns    @   @ ns   J  o�  m  or �  K i n d e r g a r t e n  m  ru � 
 F i r s t  m  ux �  S e c o n d  m  x{ �  A p p l e - i L i f e  !  m  {~"" �## 
 M u s i c! $��$ m  ~�%% �&&  G o o g l e D r i v e A p p s��   ��'(
�� 
appr' m  ��)) �** , A p p   D i s t r i b u t i o n   L i s t s( ��+,
�� 
prmp+ m  ��-- �.. � S e l e c t   a p p   l i s t s   t h i s   i P a d   s h o u l d   s u b s c r i b e   t o .   H o l d   d o w n   t h e   c o m m a n d   k e y   t o   c h o o s e   m o r e   t h a n   o n e ., ��/0
�� 
mlsl/ m  ����
�� boovtrue0 ��/�
�� 
empL�   o      �~�~ 0 applist AppList
 121 l ���}�|�{�}  �|  �{  2 343 l ���z�y�x�z  �y  �x  4 565 l ���w�v�u�w  �v  �u  6 787 r  ��9:9 m  ��;; �<<  i P a d   S e t u p: 1  ���t
�t 
ppgd8 =>= r  ��?@? m  ��AA �BB > C o l l e c t i n g   I n f o r m a t i o n   o n   i P a d s@ 1  ���s
�s 
ppga> CDC l ���r�q�p�r  �q  �p  D EFE l ���oGH�o  G ) #prep configurator to rename devices   H �II F p r e p   c o n f i g u r a t o r   t o   r e n a m e   d e v i c e sF JKJ O  �LML k  �NN OPO l ���nQR�n  Q !  get data of chosen devices   R �SS 6   g e t   d a t a   o f   c h o s e n   d e v i c e sP T�mT s  �UVU I      �lW�k�l F0 !cnfgdevicesmatchingspecifiedclass !CNFGdevicesMatchingSpecifiedClassW XYX m  ��ZZ �[[  i P a dY \�j\ m  ���i
�i boovfals�j  �k  V l 	    ]�h�g] J      ^^ _`_ l 
    a�f�ea o      �d�d 0 devicecount deviceCount�f  �e  ` bcb l 
    d�c�bd o      �a�a  0 propertytitles propertyTitles�c  �b  c efe l 
    g�`�_g o      �^�^ $0 thesedeviceecids theseDeviceECIDs�`  �_  f hih l 
    j�]�\j o      �[�[ (0 thesedeviceclasses theseDeviceClasses�]  �\  i klk l 
    m�Z�Ym o      �X�X $0 thesedevicetypes theseDeviceTypes�Z  �Y  l n�Wn o      �V�V $0 thesedevicenames theseDeviceNames�W  �h  �g  �m  M 4  ���Uo
�U 
scpto m  ��pp �qq * C o n f i g u r a t i o n   U t i l i t yK rsr l �T�S�R�T  �S  �R  s tut r  $vwv m  xx �yy  i P a d   S e t u pw 1  #�Q
�Q 
ppgdu z{z r  %.|}| m  %(~~ � @ R e n a m i n g   D e v i c e s   i n   C o n f i g u r a t o r} 1  (-�P
�P 
ppga{ ��� l //�O�N�M�O  �N  �M  � ��� l //�L�K�J�L  �K  �J  � ��� l //�I���I  � ; 5rename devices with the information the user entered	   � ��� j r e n a m e   d e v i c e s   w i t h   t h e   i n f o r m a t i o n   t h e   u s e r   e n t e r e d 	� ��H� O  /S��� k  :R�� ��� l ::�G���G  �   rename the devices   � ��� &   r e n a m e   t h e   d e v i c e s� ��F� r  :R��� I  :N�E��D�E \0 ,cnfgrenamespecifieddevicesusingnumericsuffix ,CNFGrenameSpecifiedDevicesUsingNumericSuffix� ��� o  ;>�C�C $0 thesedeviceecids theseDeviceECIDs� ��� o  >A�B�B 0 basename baseName� ��� o  AD�A�A  0 startingnumber startingNumber� ��� m  DE�@�@ � ��?� m  EH�� ���  -�?  �D  � o      �>�> 0 devicesinfo devicesInfo�F  � 4  /7�=�
�= 
scpt� m  36�� ��� * C o n f i g u r a t i o n   U t i l i t y�H   � R      �<��
�< .ascrerr ****      � ****� o      �;�; 0 errormessage errorMessage� �:��9
�: 
errn� o      �8�8 0 errornumber errorNumber�9   � Z  [����7�6� > [`��� o  [\�5�5 0 errornumber errorNumber� m  \_�4�4��� I c��3��
�3 .sysodisAaleR        TEXT� m  cf�� ��� 
 E R R O R� �2��
�2 
mesS� o  ij�1�1 0 errormessage errorMessage� �0��
�0 
btns� J  mr�� ��/� m  mp�� ���  C a n c e l�/  � �.��
�. 
dflt� m  uv�-�- � �,��+
�, 
cbtn� m  yz�*�* �+  �7  �6  ��  ��   � ��� l     �)�(�'�)  �(  �'  � ��� l ����&�%� r  ����� m  ���� ���  i P a d   S e t u p� 1  ���$
�$ 
ppgd�&  �%  � ��� l ����#�"� r  ����� m  ���� ��� . S e n d i n g   D a t a   t o   t h e   J S S� 1  ���!
�! 
ppga�#  �"  � ��� l     � ���   �  �  � ��� l     ����  �  �  � ��� l     ����  � b \get the device serials and names from configurator to later use that to send data to the JSS   � ��� � g e t   t h e   d e v i c e   s e r i a l s   a n d   n a m e s   f r o m   c o n f i g u r a t o r   t o   l a t e r   u s e   t h a t   t o   s e n d   d a t a   t o   t h e   J S S� ��� l ������ O  ����� k  ���� ��� l ������  �  �  � ��� s  ����� I      ���� B0 cnfgvaluesofspecifiedproperties CNFGvaluesOfSpecifiedProperties� ��� m  ���� ���  a l l� ��� J  ���� ��� m  ���� ���  E C I D� ��� m  ���� ���  s e r i a l N u m b e r� ��� m  ���� ���  n a m e�  � ��� m  ���
� boovfals�  �  � l 	    ���� J      �� ��� l 
    ���� o      �� 0 devicecount deviceCount�  �  � ��� l 
    ��
�	� o      ��  0 propertytitles propertyTitles�
  �	  � ��� l 
    ���� o      �� $0 thesedeviceecids theseDeviceECIDs�  �  � ��� l 
     ��  o      �� (0 theseserialnumbers theseSerialNumbers�  �  � � o      � �  0 
thesenames 
theseNames�  �  �  �  l ����������  ��  ��    l ����������  ��  ��    l ����	��   _ Ythis is were things can get complicated. We're trying to run unix commands in AppleScript   	 �

 � t h i s   i s   w e r e   t h i n g s   c a n   g e t   c o m p l i c a t e d .   W e ' r e   t r y i n g   t o   r u n   u n i x   c o m m a n d s   i n   A p p l e S c r i p t  r  � b  �� o  ������ 0 
yourjssurl 
yourJSSurl m  �� � P / J S S R e s o u r c e / m o b i l e d e v i c e s / s e r i a l n u m b e r / o      ���� 0 
jssapipath 
jssAPIpath  Y  ���� k    r   n   4  ��
�� 
cobj o  ���� 0 i   o  ���� $0 thesedeviceecids theseDeviceECIDs o      ���� 0 thisecid thisECID  !  r  '"#" n  #$%$ 4  #��&
�� 
cobj& o  !"���� 0 i  % o  ���� (0 theseserialnumbers theseSerialNumbers# o      ���� $0 thisserialnumber thisSerialNumber! '(' r  (4)*) n  (0+,+ 4  +0��-
�� 
cobj- o  ./���� 0 i  , o  (+���� 0 
thesenames 
theseNames* o      ���� 0 thisname thisName( ./. r  5F010 b  5B232 b  5>454 b  5:676 o  56���� 0 
yourjssurl 
yourJSSurl7 m  6988 �99 P / J S S R e s o u r c e / m o b i l e d e v i c e s / s e r i a l n u m b e r /5 o  :=���� $0 thisserialnumber thisSerialNumber3 m  >A:: �;;   1 o      ���� &0 thisdeviceapipath thisDeviceAPIpath/ <=< r  GV>?> b  GR@A@ b  GNBCB m  GJDD �EE  c u r l   - k   - s   - u  C o  JM���� 0 apiuser apiUserA m  NQFF �GG   ? o      ���� 0 curlcommand curlCommand= HIH r  WbJKJ m  WZLL �MM   K n     NON 1  ]a��
�� 
txdlO 1  Z]��
�� 
ascrI PQP l cc��������  ��  ��  Q RSR l cc��������  ��  ��  S TUT l cc��VW��  V ! Define extension attributes   W �XX 6 D e f i n e   e x t e n s i o n   a t t r i b u t e sU YZY l cc��[\��  [ � zsince extension attributes vary from system to system, I've tried to define them here to make it (maybe?) a little easier.   \ �]] � s i n c e   e x t e n s i o n   a t t r i b u t e s   v a r y   f r o m   s y s t e m   t o   s y s t e m ,   I ' v e   t r i e d   t o   d e f i n e   t h e m   h e r e   t o   m a k e   i t   ( m a y b e ? )   a   l i t t l e   e a s i e r .Z ^_^ l cc��`a��  ` r lYou can get the XML data from your JSS by going to you.jss.url/api under "/mobiledeviceextensionattributes"	   a �bb � Y o u   c a n   g e t   t h e   X M L   d a t a   f r o m   y o u r   J S S   b y   g o i n g   t o   y o u . j s s . u r l / a p i   u n d e r   " / m o b i l e d e v i c e e x t e n s i o n a t t r i b u t e s " 	_ cdc r  cjefe m  cfgg �hh h < s i t e > < i d > 8 < / i d > < n a m e > J o s h ' s   T e s t   S i t e < / n a m e > < / s i t e >f o      ���� 0 	groupsite 	groupSited iji r  kzklk b  kvmnm b  kropo m  knqq �rr � < e x t e n s i o n _ a t t r i b u t e > < i d > 1 0 < / i d > < n a m e > A p p   D i s t r i b u t i o n   G r o u p < / n a m e > < t y p e > S t r i n g < / t y p e > < v a l u e >p o  nq���� 0 applist AppListn m  russ �tt < < / v a l u e > < / e x t e n s i o n _ a t t r i b u t e >l o      ���� &0 extatappdistgroup extAtAppDistGroupj uvu r  {�wxw b  {�yzy b  {�{|{ m  {~}} �~~ � < e x t e n s i o n _ a t t r i b u t e > < i d > 9 < / i d > < n a m e > A s s i g n e d   N a m e < / n a m e > < t y p e > S t r i n g < / t y p e > < v a l u e >| o  ~����� 0 thisname thisNamez m  �� ��� < < / v a l u e > < / e x t e n s i o n _ a t t r i b u t e >x o      ���� &0 extatassignedname extAtAssignedNamev ��� r  ����� m  ���� ��� � < e x t e n s i o n _ a t t r i b u t e > < i d > 1 1 < / i d > < n a m e > S t a t u s < / n a m e > < t y p e > S t r i n g < / t y p e > < v a l u e > A c t i v e < / v a l u e > < / e x t e n s i o n _ a t t r i b u t e >� o      ���� 0 extatstatus extAtStatus� ��� r  ����� m  ���� ��� � < e x t e n s i o n _ a t t r i b u t e > < i d > 6 < / i d > < n a m e > A s s i g n e d   T o   ( G e n e r i c   O n l y ) < / n a m e > < t y p e > S t r i n g < / t y p e > < v a l u e / > < / e x t e n s i o n _ a t t r i b u t e >� o      ���� $0 extatgenericuser extAtGenericUser� ��� r  ����� m  ���� ��� � < e x t e n s i o n _ a t t r i b u t e > < i d > 5 < / i d > < n a m e > N o t e s < / n a m e > < t y p e > S t r i n g < / t y p e > < v a l u e / > < / e x t e n s i o n _ a t t r i b u t e >� o      ���� 0 
extatnotes 
extAtNotes� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � 2 ,prep and XML file to use for the PUT request   � ��� X p r e p   a n d   X M L   f i l e   t o   u s e   f o r   t h e   P U T   r e q u e s t� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� X e c h o   " < m o b i l e _ d e v i c e > < g e n e r a l > < d i s p l a y _ n a m e >� o  ������ 0 thisname thisName� m  ���� ��� 8 < / d i s p l a y _ n a m e > < d e v i c e _ n a m e >� o  ������ 0 thisname thisName� m  ���� ��� ( < / d e v i c e _ n a m e > < n a m e >� o  ������ 0 thisname thisName� m  ���� ���  < / n a m e >� o  ������ 0 	groupsite 	groupSite� m  ���� ��� < < / g e n e r a l > < l o c a t i o n > < u s e r n a m e >� o  ������ ,0 assigneduserusername assignedUserUsername� m  ���� ��� � < / u s e r n a m e > < r e a l _ n a m e / > < e m a i l _ a d d r e s s / > < p o s i t i o n / > < p h o n e / > < d e p a r t m e n t / > < b u i l d i n g / > < r o o m / > < / l o c a t i o n > < e x t e n s i o n _ a t t r i b u t e s >� o  ������ &0 extatappdistgroup extAtAppDistGroup� o  ������ &0 extatassignedname extAtAssignedName� o  ������ 0 extatstatus extAtStatus� o  ������ $0 extatgenericuser extAtGenericUser� o  ������ 0 
extatnotes 
extAtNotes� m  ���� ��� � < / e x t e n s i o n _ a t t r i b u t e s > < / m o b i l e _ d e v i c e > "   >   / t m p / d e v i c e C o n f i g P u t T e m p . x m l� o      ���� 0 putxmlforfile PutXMLforFile� ��� I �������
�� .sysoexecTEXT���     TEXT� o  ������ 0 putxmlforfile PutXMLforFile��  � ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ���� b  �
��� b  ���� o  ����� 0 curlcommand curlCommand� o  ���� &0 thisdeviceapipath thisDeviceAPIpath� m  	�� ��� P - T   " / t m p / d e v i c e C o n f i g P u t T e m p . x m l "   - X   P U T� o      ���� 0 
putrequest 
putRequest� ���� I �����
�� .sysoexecTEXT���     TEXT� o  ���� 0 
putrequest 
putRequest��  ��  �� 0 i   m  ����  l 	������ o  	���� 0 devicecount deviceCount��  ��  ��   ��� l ��������  ��  ��  � ��� r  %��� m  �� ���  i P a d   S e t u p� 1  $��
�� 
ppgd� ��� r  &/��� m  &)�� ��� J S e n d i n g   U p d a t e   D e v i c e   C o m m a n d s   t o   J S S� 1  ).��
�� 
ppga� ��� l 00��������  ��  ��  � ��� l 00��������  ��  ��  � ��� l 00������  � � |smart groups wont get recaluclated by the new data we've added until the devices do an Inventory update. Sets up commands...   � ��� � s m a r t   g r o u p s   w o n t   g e t   r e c a l u c l a t e d   b y   t h e   n e w   d a t a   w e ' v e   a d d e d   u n t i l   t h e   d e v i c e s   d o   a n   I n v e n t o r y   u p d a t e .   S e t s   u p   c o m m a n d s . . .� ��� r  0Q� � I 0M����
�� .sysoexecTEXT���     TEXT b  0I b  0E b  0A b  0=	 b  0;

 b  07 m  03 �  c u r l   - s   - k   - u   o  36���� 0 apiuser apiUser m  7: �   	 o  ;<���� 0 
yourjssurl 
yourJSSurl m  =@ � B / J S S R e s o u r c e / m o b i l e d e v i c e s / m a t c h / o  AD���� 0 basename baseName m  EH � � *   |   x p a t h   ' / / m o b i l e _ d e v i c e s / m o b i l e _ d e v i c e / i d '   2 > & 1   |   a w k   - F ' < i d > | < / i d > '   ' { p r i n t   $ 2 } '   |   t a i l   - n   + 3��    o      ���� "0 getjssdeviceids getJSSdeviceIDs�  l RR��������  ��  ��    r  R] n RY 1  UY��
�� 
txdl 1  RU��
�� 
ascr o      ���� 0 olddelim oldDelim  l ^^��������  ��  ��    !  r  ^i"#" o  ^a��
�� 
ret # n     $%$ 1  dh��
�� 
txdl% 1  ad��
�� 
ascr! &'& l jj��������  ��  ��  ' ()( r  ju*+* n  jq,-, 2 mq��
�� 
citm- o  jm���� "0 getjssdeviceids getJSSdeviceIDs+ o      ���� 0 thelist theList) ./. l vv��������  ��  ��  / 010 r  v�232 m  vy44 �55  ,3 n     676 1  |���
�� 
txdl7 1  y|��
�� 
ascr1 898 l ����������  ��  ��  9 :;: r  ��<=< c  ��>?> o  ������ 0 thelist theList? m  ����
�� 
TEXT= o      ���� 0 theliststring theListString; @A@ l ����~�}�  �~  �}  A BCB r  ��DED b  ��FGF o  ���|�| 0 
yourjssurl 
yourJSSurlG m  ��HH �II z / J S S R e s o u r c e / m o b i l e d e v i c e c o m m a n d s / c o m m a n d / U p d a t e I n v e n t o r y / i d /E o      �{�{ *0 jsscommandurlupdate JSScommandURLupdateC JKJ l ���z�y�x�z  �y  �x  K LML r  ��NON b  ��PQP o  ���w�w 0 
yourjssurl 
yourJSSurlQ m  ��RR �SS n / J S S R e s o u r c e / m o b i l e d e v i c e c o m m a n d s / c o m m a n d / B l a n k P u s h / i d /O o      �v�v 00 jsscommandurlblankpush JSScommandURLblankPushM TUT l ���u�t�s�u  �t  �s  U VWV r  ��XYX I ���rZ�q
�r .sysoexecTEXT���     TEXTZ b  ��[\[ b  ��]^] b  ��_`_ b  ��aba b  ��cdc m  ��ee �ff  c u r l   - s   - k   - u  d o  ���p�p 0 apiuser apiUserb m  ��gg �hh   ` o  ���o�o *0 jsscommandurlupdate JSScommandURLupdate^ o  ���n�n 0 theliststring theListString\ m  ��ii �jj    - X   P O S T�q  Y o      �m�m 0 updatedevices updateDevicesW klk l ���l�k�j�l  �k  �j  l mnm r  ��opo I ���iq�h
�i .sysoexecTEXT���     TEXTq b  ��rsr b  ��tut b  ��vwv b  ��xyx b  ��z{z m  ��|| �}}  c u r l   - s   - k   - u  { o  ���g�g 0 apiuser apiUsery m  ��~~ �   w o  ���f�f 00 jsscommandurlblankpush JSScommandURLblankPushu o  ���e�e 0 theliststring theListStrings m  ���� ���    - X   P O S T�h  p o      �d�d 0 	blankpush 	blankPushn ��� l ���c�b�a�c  �b  �a  � ��� l ���`���`  � V Pcreates update commands to force the JSS to recalculate the devices smart groups   � ��� � c r e a t e s   u p d a t e   c o m m a n d s   t o   f o r c e   t h e   J S S   t o   r e c a l c u l a t e   t h e   d e v i c e s   s m a r t   g r o u p s� ��� o  ���_�_ 0 updatedevices updateDevices� ��� l ���^���^  � u ocreates blank push because (at least on my system) it makes things happen faster--this is probably a bad thing.   � ��� � c r e a t e s   b l a n k   p u s h   b e c a u s e   ( a t   l e a s t   o n   m y   s y s t e m )   i t   m a k e s   t h i n g s   h a p p e n   f a s t e r - - t h i s   i s   p r o b a b l y   a   b a d   t h i n g .� ��� I ���]��\
�] .sysodelanull��� ��� nmbr� m  ���[�[ �\  � ��� o  ���Z�Z 0 	blankpush 	blankPush� ��� l ���Y�X�W�Y  �X  �W  � ��V� l ���U�T�S�U  �T  �S  �V  � 4  ���R�
�R 
scpt� m  ���� ��� * C o n f i g u r a t i o n   U t i l i t y�  �  � ��� l     �Q�P�O�Q  �P  �O  � ��� l ����N�M� O  ����� I ���L�K�J
�L .miscactvnull��� ��� null�K  �J  � m  �����                                                                                      @ alis    �  Macintosh SSD              ГS�H+  �#Apple Configurator 2.app                                       Nv��C�y        ����  	                Applications    Г�      �Cչ    �#  4Macintosh SSD:Applications: Apple Configurator 2.app  2  A p p l e   C o n f i g u r a t o r   2 . a p p    M a c i n t o s h   S S D  %Applications/Apple Configurator 2.app   / ��  �N  �M  � ��� l     �I�H�G�I  �H  �G  � ��F� l  ��E�D� I  �C��B
�C .sysodlogaskr        TEXT� m   �� ���  A l l   d o n e !�B  �E  �D  �F       �A���A  � �@
�@ .aevtoappnull  �   � ****� �?��>�=���<
�? .aevtoappnull  �   � ****� k    ��  
��  ��  )��  5��  A��  p��  ��� ��� ��� ��� ��� ��;�;  �>  �=  � �:�9�8�: 0 errormessage errorMessage�9 0 errornumber errorNumber�8 0 i  � �7 $�6 '�5�4�3�2 : >�1�0�/�. [�- a�,�+�* y�) ��( ��' � � � � � ��&�%�$ ��#�"�! � �� !�'08<@DHLPTW�]fnru{��������������������������1��UWt�v|�����������������������������������-6B�DGX`lnq�����������������"%�
)-�	���;A�pZ����� ����x~��������������������������������������8:��DF��L����g��qs��}������������������������������������4����H��R��egi��|~����������7 0 
yourjssurl 
yourJSSurl
�6 
dtxt
�5 .sysodlogaskr        TEXT
�4 
rslt
�3 
ttxt�2 0 jssuser jssUser
�1 
htxt�0 
�/ 
leng�. 0 jsspass jssPass
�- 
btns
�, 
dflt
�+ 
errn�*���) 0 apiuser apiUser
�( 
ppgd
�' 
ppga�& �% (0 districtoptionlist DistrictOptionList
�$ 
prmp
�# .gtqpchltns    @   @ ns  �"  0 chosendistrict chosenDistrict
�! 
cobj�  0 districtabrv districtAbrv� (0 buildingoptionlist BuildingOptionList� 	� � 0 basename baseName�  0 chosenbuilding chosenBuilding
� 
cwor� 0 buildingabrv buildingAbrv
� 
ret 
� 
bhit� 0 groupidchoice groupIDchoice� � &0 numberchoiceslist numberChoiceslist� 0 chosennumber chosenNumber� 0 groupid groupID
� 
spac
� 
long�  0 startingnumber startingNumber�  �  
� .sysobeepnull��� ��� long� ,0 assigneduserusername assignedUserUsername
�
 
appr
�	 
mlsl
� 
empL� � 0 applist AppList
� 
scpt� F0 !cnfgdevicesmatchingspecifiedclass !CNFGdevicesMatchingSpecifiedClass� 0 devicecount deviceCount�  0 propertytitles propertyTitles� $0 thesedeviceecids theseDeviceECIDs�  (0 thesedeviceclasses theseDeviceClasses�� $0 thesedevicetypes theseDeviceTypes�� $0 thesedevicenames theseDeviceNames�� \0 ,cnfgrenamespecifieddevicesusingnumericsuffix ,CNFGrenameSpecifiedDevicesUsingNumericSuffix�� 0 devicesinfo devicesInfo�� 0 errormessage errorMessage� ������
�� 
errn�� 0 errornumber errorNumber��  
�� 
mesS
�� 
cbtn
�� .sysodisAaleR        TEXT�� B0 cnfgvaluesofspecifiedproperties CNFGvaluesOfSpecifiedProperties�� (0 theseserialnumbers theseSerialNumbers�� 0 
thesenames 
theseNames�� 0 
jssapipath 
jssAPIpath�� 0 thisecid thisECID�� $0 thisserialnumber thisSerialNumber�� 0 thisname thisName�� &0 thisdeviceapipath thisDeviceAPIpath�� 0 curlcommand curlCommand
�� 
ascr
�� 
txdl�� 0 	groupsite 	groupSite�� &0 extatappdistgroup extAtAppDistGroup�� &0 extatassignedname extAtAssignedName�� 0 extatstatus extAtStatus�� $0 extatgenericuser extAtGenericUser�� 0 
extatnotes 
extAtNotes�� 0 putxmlforfile PutXMLforFile
�� .sysoexecTEXT���     TEXT�� 0 
putrequest 
putRequest�� "0 getjssdeviceids getJSSdeviceIDs�� 0 olddelim oldDelim
�� 
citm�� 0 thelist theList
�� 
TEXT�� 0 theliststring theListString�� *0 jsscommandurlupdate JSScommandURLupdate�� 00 jsscommandurlblankpush JSScommandURLblankPush�� 0 updatedevices updateDevices�� 0 	blankpush 	blankPush
�� .sysodelanull��� ��� nmbr
�� .miscactvnull��� ��� null�<�E�O���l O��,E�O����e� O��,�,j 
��,E�Y �a a ka k� O)a a lhO�a %�%E` O�a *a ,FOa *a ,FO ghZa a a a a a  a !vE` "O_ "a #a $l %E` &O_ &f  )a a lhY _ &a 'k/E` &O_ &a ( Y h[OY��O/hZ_ &a )  'a *E` +Oa ,a -a .a /a 0a 1a !vE` 2Y �_ &a 3  0a 4E` +Oa 5a 6a 7a 8a 9a :a ;a <a =a >vE` 2Y �_ &a ?  a @E` +Oa Aa Ba CmvE` 2Y �_ &a D  'a EE` +Oa Fa Ga Ha Ia Ja Ka !vE` 2Y ^_ &a L  $a ME` +Oa Na Oa Pa Qa Ra SvE` 2Y 2_ &a T  'a UE` +Oa Va Wa Xa Ya Za [a !vE` 2Y hO_ +a \ Y h[OY��O_ +E` ]O LhZ_ 2a #a ^l %E` _O_ _f  )a a lhY _ _a 'k/E` _O_ _a ` Y h[OY��O_ _a ai/E` bO_ +a c%_ b%a d%E` ]OZhZa e_ f%_ f%_ ]%_ f%_ f%a g%a a ha ia jmvl O�a k,a l  �a mE` nOa oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE` �O_ �a #a �l %E` �O_ �f  )a a lhY _ �a 'k/E` �O_ �E` �Y o�a k,a �  ,a �E` nOa �_ �%_ n%a �%�a �l O��,E` �Y 9�a k,a �  ,a �E` nOa �_ �%_ n%a �%�a �l O��,E` �Y hO_ �a � Y h[OY��O_ +a �%_ b%a �%_ �%E` ]Oa �_ ]%a �%j O >hZa ��a �l O ��,a �&E` �O_ �j Y hW X � �*j �[OY��Oa �_ ]%a �%_ �%a �%j Oa ��a �l O��,E` �Oa �a �a �a �a �a �a !va �a �a #a �a �ea �ea � %E` �Oa �*a ,FOa �*a ,FO)a �a �/ X*a �fl+ �E[a 'k/EQ` �Z[a 'l/EQ` �Z[a 'm/EQ` �Z[a '�/EQ` �Z[a 'a S/EQ` �Z[a 'a !/EQ` �ZUOa �*a ,FOa �*a ,FO)a �a �/ *_ �_ ]_ �la �a S+ �E` �UW 0X � ʡa  "a �a ̠a a �kva ka �ka � �Y hOa �*a ,FOa �*a ,FO)a �a �/O*a �a �a �a �mvfm+ �E[a 'k/EQ` �Z[a 'l/EQ` �Z[a 'm/EQ` �Z[a '�/EQ` �Z[a 'a S/EQ` �ZO�a �%E` �Ok_ �kh _ �a '�/E` �O_ �a '�/E` �O_ �a '�/E` �O�a �%_ �%a �%E` �Oa �_ %a �%E` �Oa �_ �a �,FOa �E` �Oa �_ �%a �%E` �Oa �_ �%a �%E` �Oa �E` �Oa �E` �Oa �E` �Oa �_ �%a �%_ �%a �%_ �%a �%_ �%a �%_ �%a �%_ �%_ �%_ �%_ �%_ �%a �%E` �O_ �j �Oa �_ �a �,FO_ �_ �%a %E`O_j �[OY��Oa*a ,FOa*a ,FOa_ %a%�%a%_ ]%a%j �E`O_ �a �,E`	O_ f_ �a �,FO_a
-E`Oa_ �a �,FO_a&E`O�a%E`O�a%E`Oa_ %a%_%_%a%j �E`Oa_ %a%_%_%a%j �E`O_OljO_OPUOa *jUOaj ascr  ��ޭ
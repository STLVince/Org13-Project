.text 0x00000000
start:
//��ʼ�����ֵ�ַ����
addi $s0, $zero, 0x00000800	//�����ĵ�ַ
addi $s1, $zero, 0x00000828	//��ɫ�ĵ�ַ
addi $s2, $zero, 0x00000834	//ǽ��y����ĵ�ַ
addi $s3, $zero, 0x00000844	//��ȵĵ�ַ
addi $s4, $zero, 0x0000084c	//IO��ַ�ĵ�ַ
addi $s6, $zero, 0 //curent x
addi $s7, $zero ,0 //curent y

wbackground:
//д������ɫ��
add $t1, $zero, $zero	//���ڱ�����Ļ��x
add $t2, $zero, $zero	//���ڱ�����Ļ��y
addi $t3, $zero, 640	//��Ļ����
addi $t4, $zero, 480	//��Ļ���
lw $t5, 12($s4)		//��ȡ�洢��vram��ַ
lw $t7, 0($s1)		//��ȡ��ɫ������
wbg:
//ѭ��
sw $t7, 0($t5)
addi $t5, $t5, 1
addi $t1, $t1, 1
bne $t1, $t3, wbg
add $t1, $zero, $zero
addi $t2, $t2, 1
bne $t2, $t4, wbg
//д�������


.data 0x00000800		//d4096
//s0
kbup: 	.word 629	//h275��
kbdown:	.word 626	//h272��
kbleft:	.word 619	//h26b��
kbright:	.word 628	//h274��
kbenter:	.word 90	//h5a �س�
swup:	.word 2048	//sw11 ��
swdown:	.word 1024	//sw10 ��
swleft:	.word 512	//sw9 ��
swright:	.word 256	//sw8 ��
swenter:	.word 4096	//sw12 �س�

//s1
red:	.word 0x00f	//h00f��ɫ
green:	.word 0x3b7	//��ɫ
blue:	.word 0xcc4	//��ɫ����

//s2
wall_y1:	.word 100
wall_y2:	.word 400
wall_y3:	.word 300
wall_y4:	.word 200

//s3
playerlen:	.word 32	//��ҵĳ���
openinglen:	.word 80	//ȱ�ڵĿ��

//s4
LEDcounter:	.word 0xf0000000	//f0000000��ַ LED��Ӳ��countersw ��ַ
seg7:	.word 0xe0000000	//e0000000��ַ �߶���ʾ��
keyborad:	.word 0xd0000000	//d0000000��ַ keyboard
vram:	.word 0xc0000000	//c0000000��ַ vram
background:	.word 0xb0000000	//b0000000��ַ picstart
character:	.word 0xa0000000	//a0000000��ַ picwall
wall:	.word 0x90000000	//90000000��ַ picbird
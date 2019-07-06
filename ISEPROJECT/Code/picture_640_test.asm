.text 0x00000000
start:
//初始化各种地址参数
addi $s0, $zero, 0x00000800	//按键的地址
addi $s1, $zero, 0x00000828	//颜色的地址
addi $s2, $zero, 0x00000834	//墙壁y坐标的地址
addi $s3, $zero, 0x00000844	//宽度的地址
addi $s4, $zero, 0x0000084c	//IO地址的地址
addi $s6, $zero, 0 //curent x
addi $s7, $zero ,0 //curent y

wbackground:
//写背景大色块
add $t1, $zero, $zero	//用于遍历屏幕的x
add $t2, $zero, $zero	//用于遍历屏幕的y
addi $t3, $zero, 640	//屏幕长度
addi $t4, $zero, 480	//屏幕宽度
lw $t5, 12($s4)		//读取存储的vram地址
lw $t7, 0($s1)		//读取颜色（蓝）
wbg:
//循环
sw $t7, 0($t5)
addi $t5, $t5, 1
addi $t1, $t1, 1
bne $t1, $t3, wbg
add $t1, $zero, $zero
addi $t2, $t2, 1
bne $t2, $t4, wbg
//写背景完成


.data 0x00000800		//d4096
//s0
kbup: 	.word 629	//h275上
kbdown:	.word 626	//h272下
kbleft:	.word 619	//h26b左
kbright:	.word 628	//h274右
kbenter:	.word 90	//h5a 回车
swup:	.word 2048	//sw11 上
swdown:	.word 1024	//sw10 下
swleft:	.word 512	//sw9 左
swright:	.word 256	//sw8 右
swenter:	.word 4096	//sw12 回车

//s1
red:	.word 0x00f	//h00f红色
green:	.word 0x3b7	//绿色
blue:	.word 0xcc4	//蓝色背景

//s2
wall_y1:	.word 100
wall_y2:	.word 400
wall_y3:	.word 300
wall_y4:	.word 200

//s3
playerlen:	.word 32	//玩家的长宽
openinglen:	.word 80	//缺口的宽度

//s4
LEDcounter:	.word 0xf0000000	//f0000000地址 LED和硬件countersw 地址
seg7:	.word 0xe0000000	//e0000000地址 七段显示器
keyborad:	.word 0xd0000000	//d0000000地址 keyboard
vram:	.word 0xc0000000	//c0000000地址 vram
background:	.word 0xb0000000	//b0000000地址 picstart
character:	.word 0xa0000000	//a0000000地址 picwall
wall:	.word 0x90000000	//90000000地址 picbird
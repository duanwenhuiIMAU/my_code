/*
单片机中用c编程时头文件reg51.h及reg52.h解析

 

我们在用c语言编程是往往第一行就是reg51.h或者其他的自定义头文件，我们怎么样来理解呢？

1）“文件包含”处理。

程序的第一行是一个“文件包含”处理。

所谓“文件包含”是指一个文件将另外一个文件的内容全部包含进来。程序中包含REG51.h

文件的目的是为了要使用P1 （还有其他更多的符号）这个符号，即通知C 编译器，程序中所写的P1 是指80C51 单片机的P1 端口而不是其它变量。这是如何做到的呢？

打开reg51.h 可以看到这样的一些内容：

（此文件一般在C:/KEIL/C51/INC下 ,INC文件夹根目录里有不少头文件，并且里面还有很多以公司分类的文件夹，里面也都是相关产品的头文件。如果我们要使用自己写的头文件，使用的时候只需把对应头文件拷贝到INC文件夹里就可以了。）
*/
/*--------------------------------------------------------------------------

REG51.H

 

Header file for generic 80C51 and 80C31 microcontroller.

Copyright (c) 1988-2002 Keil Elektronik GmbH and Keil Software, Inc.

All rights reserved.

--------------------------------------------------------------------------*/

 

#ifndef __REG51_H__

#define __REG51_H__

 

/* BYTE Register */

sfr P0   = 0x80;

sfr P1   = 0x90;

sfr P2   = 0xA0;

sfr P3   = 0xB0;

sfr PSW = 0xD0;

sfr ACC = 0xE0;

sfr B   = 0xF0;

sfr SP   = 0x81;

sfr DPL = 0x82;

sfr DPH = 0x83;

sfr PCON = 0x87;

sfr TCON = 0x88;

sfr TMOD = 0x89;

sfr TL0 = 0x8A;

sfr TL1 = 0x8B;

sfr TH0 = 0x8C;

sfr TH1 = 0x8D;

sfr IE   = 0xA8;

sfr IP   = 0xB8;

sfr SCON = 0x98;

sfr SBUF = 0x99;

 

 

/* BIT Register */

/* PSW   */

sbit CY   = 0xD7;

sbit AC   = 0xD6;

sbit F0   = 0xD5;

sbit RS1 = 0xD4;

sbit RS0 = 0xD3;

sbit OV   = 0xD2;

sbit P    = 0xD0;

 

/* TCON */

sbit TF1 = 0x8F;

sbit TR1 = 0x8E;

sbit TF0 = 0x8D;

sbit TR0 = 0x8C;

sbit IE1 = 0x8B;

sbit IT1 = 0x8A;

sbit IE0 = 0x89;

sbit IT0 = 0x88;

 

/* IE   */

sbit EA   = 0xAF;

sbit ES   = 0xAC;

sbit ET1 = 0xAB;

sbit EX1 = 0xAA;

sbit ET0 = 0xA9;

sbit EX0 = 0xA8;

 

/* IP   */

sbit PS   = 0xBC;

sbit PT1 = 0xBB;

sbit PX1 = 0xBA;

sbit PT0 = 0xB9;

sbit PX0 = 0xB8;

 

/* P3 */

sbit RD   = 0xB7;

sbit WR   = 0xB6;

sbit T1   = 0xB5;

sbit T0   = 0xB4;

sbit INT1 = 0xB3;

sbit INT0 = 0xB2;

sbit TXD = 0xB1;

sbit RXD = 0xB0;

 

/* SCON */

sbit SM0 = 0x9F;

sbit SM1 = 0x9E;

sbit SM2 = 0x9D;

sbit REN = 0x9C;

sbit TB8 = 0x9B;

sbit RB8 = 0x9A;

sbit TI   = 0x99;

sbit RI   = 0x98;

 

#endif

 

熟悉80C51 内部结构的读者不难看出，这里都是一些符号的定义，即规定符号名与地

址的对应关系。注意其中有

sfr P1 = 0x90;

这样的一行，即定义P1 与地址0x90 对应，P1 口的地址就是0x90

（0x90 是C 语言中十六进制数的写法，相当于汇编语言中写90H）。

从这里还可以看到一个频繁出现的词：sfr

sfr 并非标准C 语言的关键字，而是Keil 为能直接访问80C51 中的SFR 而提供了一个新

的关键词，其用法是：

sfrt 变量名=地址值。

 

2）符号P1_0 来表示P1.0 引脚。

在C 语言里，如果直接写P1.0，C 编译器并不能识别，而且P1.0 也不是一个合法的C

语言变量名，所以得给它另起一个名字，这里起的名为P1_0，可是P1_0 是不是就是P1.0

呢？你这么认为，C 编译器可不这么认为，所以必须给它们建立联系，这里使用了Keil C

的关键字sbit 来定义，sbit 的用法有三种：

第一种方法：sbit 位变量名＝地址值

第二种方法：sbit 位变量名＝SFR 名称^变量位地址值

第三种方法：sbit 位变量名＝SFR 地址值^变量位地址值

如定义PSW 中的OV 可以用以下三种方法：

sbit OV=0xd2 （1）说明：0xd2 是OV 的位地址值

sbit OV=PSW^2 （2）说明：其中PSW 必须先用sfr 定义好

sbit OV=0xD0^2 （3）说明：0xD0 就是PSW 的地址值

因此这里用sfr P1_0=P1^0;就是定义用符号P1_0 来表示P1.0 引脚，如果你愿意也可以

起P10 一类的名字，只要下面程序中也随之更改就行了。

 

 

下面再附上reg52.h的头文件内容：

/*--------------------------------------------------------------------------

REG52.H

 

Header file for generic 80C52 and 80C32 microcontroller.

Copyright (c) 1988-2002 Keil Elektronik GmbH and Keil Software, Inc.

All rights reserved.

--------------------------------------------------------------------------*/

 

#ifndef __REG52_H__

#define __REG52_H__

 

/* BYTE Registers */

sfr P0    = 0x80;

sfr P1    = 0x90;

sfr P2    = 0xA0;

sfr P3    = 0xB0;

sfr PSW   = 0xD0;

sfr ACC   = 0xE0;

sfr B     = 0xF0;

sfr SP    = 0x81;

sfr DPL   = 0x82;

sfr DPH    = 0x83;

sfr PCON = 0x87;

sfr TCON = 0x88;

sfr TMOD = 0x89;

sfr TL0   = 0x8A;

sfr TL1   = 0x8B;

sfr TH0   = 0x8C;

sfr TH1   = 0x8D;

sfr IE    = 0xA8;

sfr IP    = 0xB8;

sfr SCON = 0x98;

sfr SBUF = 0x99;

 

/* 8052 Extensions */

sfr T2CON = 0xC8;

sfr RCAP2L = 0xCA;

sfr RCAP2H = 0xCB;

sfr TL2    = 0xCC;

sfr TH2    = 0xCD;

 

 

/* BIT Registers */

/* PSW */

sbit CY    = PSW^7;
sbit AC    = PSW^6;

sbit F0    = PSW^5;

sbit RS1   = PSW^4;

sbit RS0   = PSW^3;

sbit OV    = PSW^2;

sbit P     = PSW^0; //8052 only

 

/* TCON */

sbit TF1   = TCON^7;

sbit TR1   = TCON^6;

sbit TF0   = TCON^5;

sbit TR0   = TCON^4;

sbit IE1   = TCON^3;

sbit IT1   = TCON^2;

sbit IE0   = TCON^1;

sbit IT0   = TCON^0;

 

/* IE */

sbit EA    = IE^7;

sbit ET2   = IE^5; //8052 only

sbit ES    = IE^4;

sbit ET1   = IE^3;

sbit EX1   = IE^2;

sbit ET0   = IE^1;

sbit EX0   = IE^0;

 

/* IP */

sbit PT2   = IP^5;

sbit PS    = IP^4;

sbit PT1   = IP^3;

sbit PX1   = IP^2;

sbit PT0   = IP^1;

sbit PX0   = IP^0;

 

/* P3 */

sbit RD    = P3^7;

sbit WR    = P3^6;

sbit T1    = P3^5;

sbit T0    = P3^4;

sbit INT1 = P3^3;

sbit INT0 = P3^2;

sbit TXD   = P3^1;

sbit RXD   = P3^0;

 

/* SCON */

sbit SM0   = SCON^7;

sbit SM1   = SCON^6;

sbit SM2   = SCON^5;

sbit REN   = SCON^4;

sbit TB8    = SCON^3;

sbit RB8   = SCON^2;

sbit TI    = SCON^1;

sbit RI    = SCON^0;

 

/* P1 */

sbit T2EX = P1^1; // 8052 only

sbit T2    = P1^0; // 8052 only

            

/* T2CON */

sbit TF2    = T2CON^7;

sbit EXF2   = T2CON^6;

sbit RCLK   = T2CON^5;

sbit TCLK   = T2CON^4;

sbit EXEN2 = T2CON^3;

sbit TR2    = T2CON^2;

sbit C_T2   = T2CON^1;

sbit CP_RL2 = T2CON^0;

 

#endif

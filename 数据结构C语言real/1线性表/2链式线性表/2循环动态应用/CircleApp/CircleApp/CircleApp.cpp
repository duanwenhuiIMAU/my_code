// CircleApp.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//
// debug printf("\n  %d   _________ fin_______________7__ \n ", L.next->next->next->next->next->next->next->date);

//++j先用后加
#include "pch.h"
// 循环单链线性表的应用—约瑟夫环  (动态)
#include<stdio.h>
#include<stdlib.h>//与malloc 和 realloc 有关

typedef struct ListNodeCircle {
	int date;
	ListNodeCircle *next;
}*ListNodeCircle_pointer;

ListNodeCircle CiLnInitlist(int);//
	 //构造一个空的线性表    
ListNodeCircle CiLnInsertRepeat(int);
ListNodeCircle CiLnInsertRepeatHead(int);
void CiLnOutput(ListNodeCircle &,int,int);
void LnOutput(ListNodeCircle);

int main() {
	ListNodeCircle L;

	int numberCode=20;//循环初次密码
	int numberCircleTime=7;//循环次数
	int numberHowToInsert;//循环方法 
	/*
	printf("请输入初次循环密码 ：");
	scanf_s("%d", &numberCode,1);
	printf("请输入循环次数（或参加游戏的人数） ：");
	scanf_s("%d", &numberCircleTime,1);
	*/
	printf("请输入循环方法 ：[1]:用尾插初始化 %d 人的密码  [2]:用头插初始化 %d 人的密码 :  ",numberCircleTime,numberCircleTime);
	printf("8 3 2 4 1 7 4\n");
	scanf_s("%d", &numberHowToInsert, 1);
	if (numberHowToInsert == 1) {
		L = CiLnInsertRepeat(numberCircleTime);
		LnOutput(L);
	}
	if (numberHowToInsert == 2) {
		L = CiLnInsertRepeatHead(numberCircleTime);
		//LnOutput(L);
		CiLnOutput(L,numberCode,numberCircleTime);
	}
	return 0;
}

void LnOutput(ListNodeCircle  L) {
	ListNodeCircle_pointer p = &L;
	printf("     ");
	int i = 1;
	while (i++ <= 20)
	{
		p = p->next;
		printf("%d     ", p->date);
	}
}

void CiLnOutput(ListNodeCircle &L,int numberCode,int numberCircleTime) {
	ListNodeCircle_pointer p = &L;
	ListNodeCircle_pointer head = p;
	p = p->next;
	printf("         ");
	typedef int COUNT;
	COUNT j = 2;
	while (j++ <numberCircleTime)
	{
		//最后两个数据无法用 p->next->date 表示
		COUNT i = 2;//循环 numberCode-1 次
		while (i < numberCode)
		{
			p = p->next;
			i++;
		}
		numberCode = p->next->date;
		printf("     %d  ", p->next->date);
		/*if (p->next->next == head->next) {
			ListNodeCircle *s = p->next->next;
			p->next = head->next;
			free(s);
		}*/
		//else{
			ListNodeCircle *s = p->next;
			p->next = s->next;
			free(s);
		//}
		p = p->next;
	}
	printf("     %d  ", p->date);
	printf("     %d  ", p->next->date);
}

ListNodeCircle CiLnInitlist(int numberCircleTime) {
	//构造一个链式线性表头节点 s 并输出且将循环次数写入头节点
	ListNodeCircle *head = (ListNodeCircle_pointer)malloc(sizeof(ListNodeCircle));
	head->next = NULL;
	return *head;
}

ListNodeCircle CiLnInsertRepeat(int numberCircleTime) {
	//用尾插法给这一线性表输入赋值最后一个指针指向头节点 still not done 
	int e;
	printf("请输入%d个数 以空格断开 :  ",numberCircleTime);
	ListNodeCircle L=CiLnInitlist(numberCircleTime);
	//L.date = numberCircleTime + 1;
	ListNodeCircle_pointer move = &L;
	ListNodeCircle_pointer head = &L;//不动的头节点指针
	//ListNodeCircle_pointer move = &CiLnInitlist(numberCircleTime);
	for (int i = 0; i < numberCircleTime; i++) {
		ListNodeCircle *create = (ListNodeCircle_pointer)malloc(sizeof(ListNodeCircle));
		move->next = create;
		scanf_s("%d", &e, 1);
		create->date = e;
		move = create;
		move->next = NULL;
	}
	ListNodeCircle *create = (ListNodeCircle_pointer)malloc(sizeof(ListNodeCircle));
	move = create;
	create->next = head;
	return L;
}

ListNodeCircle CiLnInsertRepeatHead(int numberCircleTime) {
	//用头插法给这一线性表输入赋值最后一个指针指向头节点的下一个节点
	int e;
	printf("请输入%d个数 以空格断开 :  ", numberCircleTime);
	ListNodeCircle_pointer head = &CiLnInitlist(numberCircleTime);//不动的头节点指针
	ListNodeCircle_pointer move = &CiLnInitlist(numberCircleTime);
	ListNodeCircle *create = (ListNodeCircle_pointer)malloc(sizeof(ListNodeCircle));
	move->next = create;
	scanf_s("%d", &e, 1);
	create->date = e;
	create->next = NULL;
	move = create;
	for (int i = 1; i < numberCircleTime; i++) {
		ListNodeCircle *create_repeate = (ListNodeCircle_pointer)malloc(sizeof(ListNodeCircle));
		create_repeate->next = move;
		head->next = create_repeate;
		scanf_s("%d", &e, 1);
		create_repeate->date = e;
		move = create_repeate;
	}
	create->next = move;
	//free();
	//free();
	return *head;
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门提示: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件

// ListNode.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

//  有没有头节点   有      全部功能都实现

#include "pch.h"
// 链式线性表的初始化 插 删 访 历  (动态)
#include<stdio.h>
#include<stdlib.h>//与malloc 和 realloc 有关

#define OK 1
#define ERROR 0
#define OPERATE 100

typedef struct ListNode {
	int data;
	ListNode *next;
}*ListNode_pointer;

//构造一个空的线性表
ListNode LnInitlist();    
ListNode LnInsertRepeat(int);
void LnOutput(ListNode);
int LnLenght(ListNode &);//返回线性表元素个数
bool LnInsert(ListNode &, int, int);
int  LnDelete(ListNode &, int);
int  LnLocate(ListNode &, int);
ListNode LnInsertRepeatHead(int);
bool LnDestroy(ListNode &);//销毁线性表

int main() {
	ListNode L;
	
	int pos;
	int e;
	
	printf("请输入一个数字来执行程序：\n     [1]:尾插初始化  [2]:遍历   [3]:插入   [4]:删除   [5]:查找  [6]:头插初始化   [7]:销毁\n                1 2 3 4 5 6 7 8 9 10  \n");
	for (int i = 0; i < OPERATE; i++) {
		int numberOperate;
		scanf_s("%d", &numberOperate);

		switch (numberOperate) {
		case 1:L = LnInsertRepeat(10); break;
		case 2:LnOutput(L); printf("  共 %d 个元素", LnLenght(L)); printf("\n"); break;
		case 3:printf("输入要插入的位置和数据   :  "); scanf_s("%d", &pos, 1); scanf_s("%d", &e, 1); LnInsert(L, pos, e); break;
		case 4:printf("输入要删除的位置   :  "); scanf_s("%d", &pos, 1);  LnDelete(L, pos); break;
		case 5:printf("输入要查找的元素   :  "); scanf_s("%d", &e, 1); printf("要查找的元素在第 %d 个位置上", LnLocate(L, e)); break;
		case 6:L = LnInsertRepeatHead(10); break;
		case 7:LnDestroy(L); printf("         已销毁！\n");
		}
	}
	return 0;
}

ListNode LnInitlist() {
	//构造一个链式线性表头节点 s 并输出
	ListNode *head= (ListNode_pointer)malloc(sizeof(ListNode));
	head->next = NULL;
	return *head;
}

ListNode LnInsertRepeat(int repeat) {
	//用尾插法给这一线性表输入赋值
	int e;
	printf("请输入10个数 以空格断开 :  ");
	ListNode L = LnInitlist();
	ListNode_pointer move = &L;
	for (int i = 0; i < repeat; i++) {
		ListNode *create = (ListNode_pointer)malloc(sizeof(ListNode));
		move->next = create;
		scanf_s("%d", &e, 1);
		create->data = e;
		create->next = NULL;
		move = create;
	}
	//不可以用free(move);
	return L;
}

void LnOutput(ListNode L) {
	ListNode_pointer p = &L;
	p = p->next;
	printf("             ");
	while (p->next)
	{
		printf("%d ", p->data);
		p = p->next;
	}
}

int LnLenght(ListNode &L) {
	ListNode *p = &L;
	int j = 0;
	while (p) {
		p = p->next;
		j++;
	}
	return j - 1;
}

bool LnInsert(ListNode &L, int pos, int e) {
	//在线性表中第pos个位置之前插入新元素 e 
	//平均时间复杂度   n
	ListNode *p = &L;
	int j = 0;
	while (p&&j++ < pos-1) {
		p = p->next;
	}
	printf("              j: %d",j);
	if (!p || j >pos )return ERROR;//pos 要小于等于链表长度 若不满足条件则再执行一次
	ListNode *s = (ListNode_pointer)malloc(sizeof(ListNode));
	//以下两个语句不可变位置													//	以下两个语句为删除时所用
	s->next = p->next;															//  s = p->next;
	p->next = s;																//  p->next = s->next;
	s->data = e;
	return OK;
	
	//在线性表中第pos个位置之前插入新元素 e
	//while (p&&j++ < pos)         变为        while (p&&j++ < pos-1)
	
}

int LnDelete(ListNode &L, int pos) {
	//在线性表中删除第pos个位置并用log返回
	//平均时间复杂度   n
	int log;
	ListNode *p = &L;
	int j = 0;
	while (p->next&&j++ < pos -1) {
		p = p->next;
	}
	if (!(p->next) || pos > j)return ERROR;
	ListNode *s;
	//以下两个语句不可变位置
	s = p->next;	//s 与 p的下两个节点相连			
	p->next = s->next;
	log = s->data;
	free(s);
	return j;
}

int  LnLocate(ListNode &L, int checkElement) {
	ListNode *p = &L;
	int j = 0;
	while (p&&p->data != checkElement) {
		p = p->next;
		j++;
	}
	return j;
}

ListNode LnInsertRepeatHead(int repeat) {
	//用头插法给这一线性表输入赋值
	int e;
	printf("请输入10个数 以空格断开 :  ");
	ListNode_pointer head = &LnInitlist();
	ListNode_pointer move = &LnInitlist();
	ListNode *create = (ListNode_pointer)malloc(sizeof(ListNode));
	move->next = create;//等价与  p->next = s;
	scanf_s("%d", &e, 1);
	create->data = e;
	create->next = NULL;
	move = create;
	for (int i = 1; i < repeat; i++) {
		ListNode *create = (ListNode_pointer)malloc(sizeof(ListNode));
		create->next = move;
		head->next = create;
		scanf_s("%d", &e, 1);
		create->data = e;
		move = create;
	}
	free(create);
	free(move);
	return *head;
}

bool LnDestroy(ListNode &L) {
	ListNode *p = &L.next;
	//ListNode *s = p->next;		
	while (p->next) {
		p = p->next;
		free(p);
	}
	free(&L);
	//没有销毁头节点
	return OK; 
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

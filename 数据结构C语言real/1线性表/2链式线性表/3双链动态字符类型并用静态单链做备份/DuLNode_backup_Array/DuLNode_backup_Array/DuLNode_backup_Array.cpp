// ListNode.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

//  有没有头节点   有      全部功能都实现

#include "pch.h"
// 链式线性表的初始化 插 删 访 历  (动态)
#include<stdio.h>
#include<stdlib.h>//与malloc 和 realloc 有关
//#include<string>
#include<iostream>

using namespace std;

#define OPERATE 100
#define PRIOR 1
#define NEXT 2
#define MIDDLE 3
#define OK 1
#define ERROR 0
#define OPERATE 100
#define MAXSIZE 100
#define ARRAY_SIZE 20
#define PRIOR 1
#define NEXT 2
#define MIDDLE 3
#define HEAD 1
#define TAIL 2
#define LENGHT 3

typedef char DATA;
typedef int COUNT;
typedef int POS;
typedef int JUDGE_POS;

typedef struct  DuLNode {
	DATA character;
	DuLNode *prior;
	DuLNode *next;
}*DuLNode_pointer;

//构造一个空的线性表
DuLNode_pointer DuLnInitlist();
bool DuLnInsertRepeat(COUNT);
bool DuLnOutput(DuLNode_pointer);
bool DuLnOutput_prior(DuLNode_pointer);
bool DuLnInsert(DuLNode_pointer, POS, DATA, JUDGE_POS);
char DuLnDelete(DuLNode_pointer, POS, JUDGE_POS);
int  DuLnLocate(DuLNode_pointer, DATA);
bool DuLnInsertRepeatHead(COUNT);
bool DuLnDestroy(DuLNode_pointer);//销毁线性表


typedef struct DuLNode_log {
	DuLNode_pointer head;
	DuLNode_pointer tail;
	int length;
}*DuLNode_log_pointer;


typedef struct component_backup {
	DATA character;
	int cur;
};

//全局变量对全局有效

DuLNode_log get_pointer;

int main(){
	
	int pos,judge;
	DATA e;

	printf("请输入一个数字来执行程序：\n  int   [1]:尾插初始化  [2]:遍历   [3]:插入   [4]:删除   [5]:查找  [6]:头插初始化   [7]:销毁\n               a b c d e f g h i j   \n");
	
	DuLnInsertRepeatHead(10);
	printf("共 %d 个元素 ",get_pointer.length); DuLnOutput(get_pointer.head); printf("            "); 
	DuLnOutput_prior(get_pointer.tail);

	for (int i = 0; i < OPERATE; i++) {
		int numberOperate;
		scanf_s("%d", &numberOperate);
		switch (numberOperate) {
		case 1:DuLnInsertRepeat(10);break;
		case 2:printf("共 %d 个元素 ",get_pointer.length);DuLnOutput(get_pointer.head); printf("            "); DuLnOutput_prior(get_pointer.tail);break;
		case 3:printf("输入要插入的位置和数据及再其前（1）或后（2）插入   :  "); cin >> pos; cin >> e; cin >> judge; DuLnInsert(get_pointer.head, pos, e, judge); break;
		case 4:printf("输入要删除的位置   :  "); cin >> pos ;cout<<"删除的元素为 : "<<DuLnDelete(get_pointer.head, pos, PRIOR);break;
		case 5:printf("输入要查找的元素   :  "); scanf_s("%c", &e, 1); printf("要查找的元素在第 %d 个位置上", DuLnLocate(get_pointer.head, e)); break;
		case 6:DuLnInsertRepeatHead(10);break;
		case 7:DuLnDestroy(get_pointer.head); printf("         已销毁！\n");break;
		}
	}
	return 0;
}

DuLNode_pointer DuLnInitlist() {
	//构造一个链式线性表头节点 s 并输出
	DuLNode_pointer head = (DuLNode_pointer)malloc(sizeof(DuLNode));
	head->next = NULL;
	head->prior = NULL;
	return head;
}

bool DuLnInsertRepeat(COUNT repeat) {
	//用尾插法给这一线性表输入赋值
	DATA input;
	get_pointer.head = DuLnInitlist();
	DuLNode_pointer move = get_pointer.head;
	get_pointer.length = repeat;
	printf("请输入10个字符 以空格断开 :  ");
	for (int i = 0; i < repeat; i++) {
		DuLNode *create = (DuLNode_pointer)malloc(sizeof(DuLNode));
		create->prior = move;
		move->next = create;
		//scanf_s("%c",&input,1);
		cin >> input;
		create->character = input;
		move = create;
	}
	DuLNode_pointer create_tail = (DuLNode_pointer)malloc(sizeof(DuLNode));
	move->next = create_tail;
	create_tail->prior = move;
	create_tail->next = NULL;
	get_pointer.tail = create_tail;
	//不可以用free(move);
	return OK;
}

bool DuLnOutput(DuLNode_pointer move) {
	move = move->next;
	while (move->next) {
		cout << move->character << "  ";
		//printf(" %c ", move->character);
		move = move->next;
	}
	return OK;
}

bool DuLnOutput_prior(DuLNode_pointer move) {
	move = move->prior;
	while (move->prior) {
		cout << move->character << "  ";
		//printf(" %c ", move->character);
		move = move->prior;
	}
	return OK;
}

bool DuLnInsert(DuLNode_pointer move, POS pos, DATA e, JUDGE_POS prior_next) {
	//平均时间复杂度   n
	int j = 0;
	while (move&&j++ < pos) {
		move = move->next;
	}
	//if (!move || j > pos-1 )return ERROR;//pos 要小于等于链表长度
	DuLNode *s = (DuLNode_pointer)malloc(sizeof(DuLNode));
	if (prior_next == PRIOR) {
		//在线性表中第pos个位置之前插入新元素 e 
		//以下4个语句不可变位置
		s->prior = move->prior;
		s->next = move;
		move->prior->next = s;
		move->prior = s;
		s->character = e;
	}
	if (prior_next == NEXT) {
		//在线性表中第pos个位置之后插入新元素 e 
		//以下4个语句不可变位置													
		s->next = move->next;
		s->prior = move;
		move->next->prior = s;
		move->next = s;
		s->character = e;
	}
	get_pointer.length++;
	return OK;
}

char DuLnDelete(DuLNode_pointer move, POS pos, JUDGE_POS prior_next) {
	//在线性表中删除第pos个位置并用log返回
	//平均时间复杂度   n
	DATA log_date;
	int j = 0;
	while (move&&j++ < pos - 1) {
		move = move->next;
	}
	//if (!move || j > pos - 1)return ERROR;
	DuLNode_pointer s;
	if (prior_next == PRIOR) {
		log_date = move->character;
		//以下两个语句不可变位置
		s = move->next;	//s 与 p的下两个节点相连	
		move->next = s->next;
		s->next->prior = move;
		free(s);
	}
	if (prior_next == MIDDLE) {
		move = move->next;
		log_date = move->character;
		cout << log_date;
		//以下两个语句不可变位置   有bug
		s = move;
		move->prior->next = s;	//s 与 p的下两个节点相连
		s->prior = move->next;
		free(s);
	}
	if (prior_next == NEXT) {
		move = move->next;
		move = move->next;
		log_date = move->character;
		//还没做以下的
		//以下两个语句不可变位置
		s = move->next;	//s 与 p的下两个节点相连	
		move->next = s->next;
		free(s);
	}
	get_pointer.length--;
	return log_date;
}

int  DuLnLocate(DuLNode_pointer move, DATA checkElement) {
	int j = 0;
	while (move&&move->character != checkElement) {
		move = move->next;
		j++;
	}
	return j;
}

bool DuLnInsertRepeatHead(COUNT repeat) {
	//用头插法给这一线性表输入赋值
	DATA e;
	printf("请输入10个数 以空格断开 :  ");
	get_pointer.length = repeat;
	DuLNode_pointer head = DuLnInitlist();
	get_pointer.head = head;
	get_pointer.head->prior = NULL;
	DuLNode_pointer move = head;
	DuLNode_pointer create = (DuLNode_pointer)malloc(sizeof(DuLNode));
	move->next = create;//等价与  p->next = s;
	create->prior = move;
	create->next = NULL;
	get_pointer.tail = create;
	move = create;
	for (int i = 0; i < repeat; i++) {
		DuLNode_pointer create = (DuLNode_pointer)malloc(sizeof(DuLNode));
		create->next = move;
		move->prior = create;
		head->next = create;
		cin >> e;
		create->character = e;
		move = create;
	}
	return OK;
}

bool DuLnDestroy(DuLNode_pointer move) {
	DuLNode *s = move->next;
	while (s->next) {
		free(move);
		s = s->next;
	}
	free(move);
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

// decToOct.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;

#define OK 1
#define ERROR 0
#define FALSE 0
#define TRUE 1
#define OVERFLOW 1
#define STACK_SIZE 100
#define STACKINCREMENT 10

typedef int DATA;

typedef struct SqStack {
	int stackSize;
	DATA *top;
	DATA *bottom;
}*SqStack_pointer;

SqStack_pointer InitStack();
bool DestroyStack(SqStack_pointer);
bool ClearStack(SqStack_pointer);
bool StackEmpty(SqStack_pointer);
int StackLength(SqStack_pointer);
DATA GetTop(SqStack_pointer);
bool Push(SqStack_pointer, int);
DATA Pop(SqStack_pointer);
bool visit(SqStack_pointer, int);
bool StackTraverse(SqStack_pointer);

int main() {
	SqStack_pointer S = InitStack();
	int n;
	cout<<"请输入一个十进制数 1245255(dec) 4600107（oct）：";
	cin >> n;
	
	while (n) {
		Push(S, n % 8);
		n = n / 8;
	}
	cout<<GetTop(S);
	cout<<"将输出一个八进制数 ：";
	while (!StackEmpty(S)) {
		cout<< Pop(S);
	}
	return 0;
}

SqStack_pointer InitStack() {
	SqStack_pointer s = (SqStack_pointer)malloc(sizeof(SqStack));
	if (!s)exit(OVERFLOW);
	s->bottom = (DATA *)malloc(STACK_SIZE * sizeof(DATA));
	if (!s->bottom)exit(OVERFLOW);
	s->stackSize = STACK_SIZE;
	s->top = s->bottom;
	return s;
}

bool DestroyStack(SqStack_pointer s) {
	free(s);
	return OK;
}

bool ClearStack(SqStack_pointer s) {
	DestroyStack(s);
	s = InitStack();
	return OK;
}

bool StackEmpty(SqStack_pointer s) {
	if (s->top == s->bottom)return OK;
	else return FALSE;
}

int StackLength(SqStack_pointer s) {
	if (!StackEmpty(s))return s->stackSize;
	else return ERROR;
}

DATA GetTop(SqStack_pointer s) {
	if (!StackEmpty(s))return *s->top;
	else return ERROR;
}

bool Push(SqStack_pointer s, int trans) {//上移
	if (s->top - s->bottom >= s->stackSize){//先判断 别递归
		s->bottom = (DATA *)realloc(s->bottom, (s->stackSize + STACKINCREMENT) * sizeof(DATA));
		if (!s->bottom)exit(OVERFLOW);
		s->top = s->bottom + s->stackSize;
		s->stackSize += STACKINCREMENT;
	}
	*++s->top = trans;//配套的Pop为*s->top--; 还可以  *s->top++ = trans;  *--s->top;
	return OK;
}

DATA Pop(SqStack_pointer s) {//下移
	if (!StackEmpty(s)) return *s->top--;
	else return ERROR;
}

bool visit(SqStack_pointer s, int i) {
	if (*(s->top + i) = NULL) return ERROR;
	else return OK;
}

bool StackTraverse(SqStack_pointer s) {
	int j = s->stackSize - 1;
	while (j--) {
		if (visit(s, j + 1))return ERROR;
	}
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
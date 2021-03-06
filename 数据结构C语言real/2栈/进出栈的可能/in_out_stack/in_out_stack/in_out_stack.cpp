// in_out_stack.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <iostream>
using namespace std;

#define OK 1
#define ERROR 0
#define FALSE 0
#define TRUE 1
#define OVERFLOW 1
#define STACK_INIT_SIZE 100
#define STACKINCREMENT 10

typedef char DATA;

typedef struct SqStack {
	int stackSize;
	DATA *top;
	DATA *bottom;
}*SqStack_pointer;

typedef struct DateBank {
	char str_bank[9]={ 'A','B','C','D','E','F','G','H','I' };
	int *pos;
}*DateBank_pointer;

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
	char str_bank[9] = { 'A','B','C','D','E','F','G','H','I' };
	char check;
	int i = 0;
	cout << "请输入一个字符串的最大元素  :  ";
	cin >> check;
	int space = check - 'A' + 1;
	char *str_scource = (char*)malloc(space * sizeof(char));
	char *str_target = (char*)malloc(space * sizeof(char));
	str_scource[0] = str_bank[0];
	while (check > str_scource[i]) {//导入我需要的数据
		i++;
		str_scource[i] = str_bank[i];
	}


	//进一出一
	for (int i = 0,int j = 0; i < space; i++,j++) {
		Push(S,str_scource[i]);
		str_target[j] = Pop(S);
	}
	//进二出一
	for (int i = 0, int j = 0; i < space; i++) {
		Push(S, str_scource[i]);
		Push(S, str_scource[i]);
		if (i == 1) {
			str_target[j] = Pop(S);
		}
	}
	//进2出2
	int in, out;
	cout << "  输入输出进多少出多少  \n";
	cin >> in;
	cin >> out;
	int k, i=0, j=0;
	for (int i = 0; i < 100; i++)
	{
		if (in < out) cout << " 输入有误 \n";
		if (in == out) {
			for (; i < in; i++) {
				Push(S, str_scource[i]);
				str_target[j] = Pop(S);
				cout << str_target[j] << " ";
			}
		}
		else {
			for (; i < in; i++) {
				Push(S, str_scource[i]);
			}
			for (; j < out; j++) {
				str_target[j] = Pop(S);
				cout << str_target[j] << " ";
			}
			for (; i < in; i++) {
				Push(S, str_scource[i]);
			}
		}
		cout << "  输入输出进多少出多少  \n";
		cin >> in;
		cin >> out;
	} 

	/*
	while (n) {
		Push(S, n % 8);
		n = n / 8;
	}
	cout << GetTop(S);
	cout << "将输出一个八进制数 ：";
	while (!StackEmpty(S)) {
		cout << Pop(S);
	}*/
	return 0;
}

DateBank_pointer InitDateBank(int space) {
	DateBank *b = (DateBank*)malloc(sizeof(DateBank));
	if (!b)exit(OVERFLOW);
	b->pos = (int *)malloc(space * sizeof(int));
	for (int i = 0; i < space; i++) {
		*(b->pos + i) = i;
	}
	return b;
}


SqStack_pointer InitStack() {
	SqStack_pointer s = (SqStack_pointer)malloc(sizeof(SqStack));
	if (!s)exit(OVERFLOW);
	s->bottom = (DATA *)malloc(STACK_INIT_SIZE * sizeof(DATA));
	if (!s->bottom)exit(OVERFLOW);
	s->stackSize = STACK_INIT_SIZE;
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
	if (s->top - s->bottom >= s->stackSize) {//先判断 别递归
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
// Hanoi.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//  栈的模板

#include "pch.h"
#include <stdio.h>
#include <stdlib.h>
#include<iostream>
using namespace std;

#define OK 1
#define ERROR 0
#define FALSE 0
#define TRUE 1
#define OVERFLOW 1

typedef char DATA;

typedef struct SqStack {
	int stackSize;
	DATA *array;
	DATA *top;
	DATA *bottom;
}*SqStack_pointer;

SqStack_pointer InitStack(int);
bool StackEmtpy(SqStack_pointer);
DATA GetTop(SqStack_pointer);
bool Push(SqStack_pointer,DATA);
DATA Pop(SqStack_pointer);
bool theStackToOTher(SqStack_pointer,SqStack_pointer);
void StackOutput(SqStack_pointer, SqStack_pointer, SqStack_pointer,int);

int main() {

	int stackSize;
	char ch;
	cout << "请输入X栈的最下层字符(A-E)：C" << endl;
	cin >> ch;
	stackSize = ch - 'A'+1;
	SqStack_pointer X = InitStack(stackSize);
	SqStack_pointer Y = InitStack(stackSize);
	SqStack_pointer Z = InitStack(stackSize);

	Push(X, 'C');
	Push(X, 'B');
	Push(X, 'A');
	cout << "初始字符位置 ";
	StackOutput(X, Y, Z, stackSize);
	cout << " [1] : X->Y  [2] : X->Z  \n ";
	cout << " [3] : Y->X  [4] : Y->Z  \n";
	cout << " [5] : Z->X  [6] : Z->Y  \n";

	for (int i = 0; i < 100; i++) {
		int numberOperate;
		cout << " 动作 ";
		cin >> numberOperate;
		switch (numberOperate) {
		case 1:theStackToOTher(X, Y); StackOutput(X, Y, Z, stackSize); break;
		case 2:theStackToOTher(X, Z); StackOutput(X, Y, Z, stackSize); break;
		case 3:theStackToOTher(Y, X); StackOutput(X, Y, Z, stackSize); break;
		case 4:theStackToOTher(Y, Z); StackOutput(X, Y, Z, stackSize); break;
		case 5:theStackToOTher(Z, X); StackOutput(X, Y, Z, stackSize); break;
		case 6:theStackToOTher(Z, Y); StackOutput(X, Y, Z, stackSize); break;
		case 7:; break;
		}
	}
	return 0;
}

SqStack_pointer InitStack(int stackSize) {
	SqStack_pointer s = (SqStack_pointer)malloc(sizeof(SqStack));
	if (!s)exit(OVERFLOW);
	s->array = (DATA *)malloc((stackSize+1) * sizeof(DATA));
	if (!s->array)exit(OVERFLOW);
	s->stackSize = 0;
	s->bottom = s->top = s->array;
	return s;
}

bool StackEmtpy(SqStack_pointer s) {
	if (s->top == s->bottom)return OK;
	else return FALSE;
}

DATA GetTop(SqStack_pointer s) {
	if (!StackEmtpy(s))return *s->top;
	else return ERROR;
}

bool Push(SqStack_pointer s,DATA input) {//上移
	s->stackSize++;
	s->top = (s->array + s->stackSize);
	*s->top = input;
	return OK;
}

DATA Pop(SqStack_pointer s) {//下移
	DATA log;
	log = *s->top;
	*s->top = NULL;
	s->stackSize--;
	s->top = (s->array + s->stackSize);
	return log;
}

bool theStackToOTher(SqStack_pointer scouce, SqStack_pointer target) {
	if (StackEmtpy(target))Push(target, Pop(scouce));
	else if ((int)GetTop(scouce)<(int)GetTop(target)){
		Push(target, Pop(scouce));
	}
	else cout << "\n要移动的字符大于其下字符\n";
	return OK;
}


void StackOutput(SqStack_pointer x, SqStack_pointer y, SqStack_pointer z,int stackSize) {
	int j = 1;
	cout<<"\nX  :        ";
	while (j<=stackSize) {
		cout<<x->array[j]<<"   ";
		j++;
	}
	j = 1;
	cout << "\nY  :        ";
	while (j <= stackSize) {
		cout << y->array[j] << "   ";
		j++;
	}
	j = 1;
	cout << "\nZ  :        ";
	while (j <= stackSize) {
		cout << z->array[j] << "   ";
		j++;
	}
	printf("\n");
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
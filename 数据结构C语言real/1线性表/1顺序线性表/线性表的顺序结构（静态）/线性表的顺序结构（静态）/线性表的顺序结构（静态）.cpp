// 线性表的顺序结构（静态）.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"


// 顺序线性表的初始化 插 删 访 历  (静态)
#include<stdio.h>

#define TRUE 1
#define FALSE 0
#define OK 1
#define ERROR 0
#define INFEASIBLE -1
#define OVERFLOW -2
#define LIST_INIT_SIZE 100
#define LISTINCREMENT 10


typedef struct {
	int element[LIST_INIT_SIZE];
	int lenght;
	int listsize;
}Sqlist;

bool SqInitlist(Sqlist &);
bool SqInsert(Sqlist &, int, int);
int  SqDelete(Sqlist &, int);
int  SqLocate(Sqlist &, int);
void SqOutput(Sqlist &);
void checkFunction(int);

int main() {
	Sqlist L;
	L.lenght = LISTINCREMENT;

	int pos = 2;
	int e = 5;

	checkFunction(SqInitlist(L));
	SqOutput(L);
	checkFunction(SqInsert(L, pos, e));
	SqOutput(L);
	printf(" the deleted element : %d\n ", SqDelete(L, pos));
	SqOutput(L);
	return 0;
}

bool SqInitlist(Sqlist &L) {
	for (int i = 0; i < L.lenght; i++) {
		L.element[i] = i;
	}
	return OK;
}

bool SqInsert(Sqlist &L, int pos, int e) {
	L.lenght++;
	for (int i = L.lenght; i >= pos; i--) {
		L.element[i + 1] = L.element[i];
	}
	e = L.element[pos];
	return OK;
}

int SqDelete(Sqlist &L, int pos) {
	int log = L.element[pos];
	for (int i = pos; i < L.lenght; i++) {
		L.element[pos] = L.element[pos + 1];
	}
	return log;
	L.lenght--;
}

int  SqLocate(Sqlist &L, int checkElement) {
	for (int i = 0; i < L.lenght; i++) {
		if (checkElement == L.element[i]) {
			return i;
		}
	}
}

void Sqoutput(Sqlist &L) {
	for (int i = 0; i < L.lenght; i++) {
		printf("%d", L.element[i]);
	}
	printf("/n");
}

void checkFunction(int fun) {
	if (fun == 1) {
		printf("OK!\n");
	}
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

// 线性表的顺序结构（动态）.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//
// 线性表的顺序结构（动态）.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
// 顺序线性表的初始化 插 删 访 历  (动态)

#include<stdio.h>
#include<stdlib.h>//与malloc 和 realloc 有关

#define FORMERGE 10
#define OPERATE 100
#define TRUE 1
#define FALSE 0
#define OK 1
#define ERROR 0
#define INFEASIBLE -1
#define OVERFLOW -2
#define LIST_INIT_SIZE 100
#define LISTINCREMENT 10

typedef struct Sqlist {
	int *element;
	int length;
	int listsize;
}Sqlist;

Sqlist SqInitlist(Sqlist &);//
	 //构造一个空的线性表    
void SqInsertRepeat(Sqlist &, int);
bool SqDestroy(Sqlist &);//
	 //已有线性表的条件下销毁线性表
Sqlist SqClear(Sqlist &);//
	 //已有线性表的条件下重置线性表
bool SqEmpty(Sqlist);   //不需要改变线性表故不用引用符号  &
	 //已有线性表的条件下若为空表返回TRUE 否则返回 FALSE
int SqLenght(Sqlist); //
	 //已有线性表的条件下返回线性表元素个数

//int SqGetElement(Sqlist,int position,int dataReturned);//
	 //已有线性表的条件下,1<=position<=L.length,用dataReturned 返回position上的数据

bool SqInsert(Sqlist &, int, int);
int  SqDelete(Sqlist &, int);
int  SqLocate(Sqlist &, int);
void SqOutput(Sqlist &);
void SqMerge(Sqlist&, Sqlist&);

int main() {
	Sqlist L;
	Sqlist LisForMerge;
	int pos;
	int e;
	SqInitlist(LisForMerge);
	for (int i = 0; i <= FORMERGE; i++) {
		LisForMerge.element[i] = 10 + i;
	}
	printf("请输入一个数字来执行程序：\n     [1]:初始化  [2];遍历   [3];插入   [4]:删除   [5];查找  [6];合并 \n");
	for (int i = 0; i < OPERATE; i++) {
		int numberOperate;
		scanf_s("%d", &numberOperate);

		switch (numberOperate) {
		case 1:SqInitlist(L); SqInsertRepeat(L, 10); break;
		case 2:SqOutput(L); break;
		case 3:printf("输入要插入的位置和数据   :  "); scanf_s("%d", &pos, 1); scanf_s("%d", &e, 1); SqInsert(L, pos, e); break;
		case 4:printf("输入要删除的位置   :  "); scanf_s("%d", &pos, 1); SqDelete(L, pos); break;
		case 5:printf("输入要查找的元素   :  "); scanf_s("%d", &e, 1); printf("要查找的元素在第 %d 个位置上", SqLocate(L, e)); break;
		case 6:SqMerge(L, LisForMerge); break;
		}
	}
	return 0;
}

Sqlist SqInitlist(Sqlist &L) {
	//构造一个空的线性表L
	L.element = (int*)malloc(LIST_INIT_SIZE * sizeof(L.element));
	if (!L.element)exit(OVERFLOW);
	L.length = 10;
	L.listsize = LIST_INIT_SIZE;
	return L;
}

void SqInsertRepeat(Sqlist &L, int repeat) {
	int e;
	printf("请输入10个数 以空格断开 :  ");
	for (int i = 0; i < repeat; i++) {
		scanf_s("%d", &e, 1);
		L.element[i] = e;
	}
}

bool SqDestroy(Sqlist &L) {
	free(&L);
	return OK;
}

Sqlist SqClear(Sqlist &L) {
	SqDestroy(L);
	return SqInitlist(L);
}

bool SqEmpty(Sqlist L) {
	if (0 == L.length)return TRUE;
	else return FALSE;
}

int SqLenght(Sqlist L) {
	return L.length;
}

bool SqInsert(Sqlist &L, int pos, int e) {
	//在线性表中第pos个位置之前插入新元素 e 
	// 1<=pos<=L.lenght+1合法
	//平均时间复杂度   n/2
	if (pos < 1 || pos>L.length + 1)return ERROR;//pos 的值不合法
	if (L.length >= L.listsize) {  //储存空间已满需再开辟10个
		int *newbase = (int*)realloc(L.element, (L.listsize + LISTINCREMENT) * sizeof(L.element));
		if (!newbase)exit(OVERFLOW);//开辟失败
		L.element = newbase;//新基址
		L.listsize += LISTINCREMENT;//增加储存容量
	}
	int *q = &(L.element[pos - 1]);//q为插入位置
	for (int *p = &(L.element[L.length - 1]); p >= q; --p) {//插入位置后的元素右移   //时间复杂度为
		*(p + 1) = *p;
	}
	*q = e;
	++L.length;
	return OK;
}

int SqDelete(Sqlist &L, int pos) {
	//在线性表中删除第pos个位置并用log返回
	// 1<=pos<=L.lenght+1合法
	//平均时间复杂度   (n-1)/2
	if (pos < 1 || pos>L.length + 1)return ERROR;//pos 的值不合法
	int *p = &(L.element[pos - 1]);//被删除元素的位置
	int *log = p;
	int *q = &(L.element[L.length - 1]);//表尾元素的位置
	for (++p; p <= q; ++p) {//删除位置的后元素左移 
		*(p - 1) = *p;
	}
	L.length--;
	return *log;
}

int  SqLocate(Sqlist &L, int checkElement) {
	for (int i = 0; i < L.length; i++) {
		if (checkElement == L.element[i]) {
			return i;
		}
	}
}

void SqOutput(Sqlist &L) {
	for (int i = 0; i < L.length; i++) {
		printf("%d", L.element[i]);
		printf("  ");
	}
	printf("\n");
}

void SqMerge(Sqlist &L, Sqlist &LisForMerge) {
	//已知线性表L和LisForMerge的元素按递减排列
	//归并L和LisForMerge得新的Lc,Lc的元素也按递减排列
	Sqlist Lc;
	Lc = SqInitlist(Lc);
	int *pa = L.element;
	int *pb = LisForMerge.element;
	Lc.listsize = Lc.length = L.length + LisForMerge.length;
	int *pc = Lc.element = (int*)malloc(Lc.listsize * sizeof(Lc.element));
	if (!Lc.element)exit(OVERFLOW);
	int *pa_last = (int*)L.element[L.length - 1];
	int *pb_last = (int*)LisForMerge.element[LisForMerge.length - 1];
	while (pa <= pa_last && pb <= pb_last) {
		if (*pa <= *pb)*pc++ = *pa++;
		else*pc++ = *pb++;
	}
	while (pa <= pa_last)*pc++ = *pa++;
	while (pb <= pb_last)*pc++ = *pb++;
	for (int i = 0; i <= Lc.length; i++) {
		printf("%d", Lc.element[i]);
		printf("  ");
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

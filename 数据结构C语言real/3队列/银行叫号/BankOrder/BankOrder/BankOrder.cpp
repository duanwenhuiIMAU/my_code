// BankOrder.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
using namespace std;


#define MAXQSIZE 5 //顺序队列长度
#define OK 1
#define ERROR 0

typedef struct SqQuene {
	char *base;
	int front;//头指针
	int rear;//尾指针
	int rank;
}*SqQuene_pt;
SqQuene_pt InitQuene() {
	SqQuene_pt q = (SqQuene_pt)malloc(sizeof(SqQuene));
	q->base = (char *)malloc(MAXQSIZE * sizeof(char));
	q->front = q->rear = 0;
	q->rank=0;
	return q;
}
int QueneLength(SqQuene_pt q) {
	//返回队列长度既元素多少
	//1 % 7 = 1;
	return(q->rear - q->front + MAXQSIZE) % MAXQSIZE;
}
int QueneRank(SqQuene_pt q) {
	return q->rank;
}
bool EnQuene(SqQuene_pt q, char e) {
	//插入元素e为q的新队尾元素
	//该方法通过牺牲一个元素空间（队列头的前一个位置，其位置随着头指针变化）来表示队列满的状态
	if ((q->rear + 1) % MAXQSIZE == q->front)return ERROR; //每次都移动到下一位置，当队列满时该位置为空并且其加一为头指针
	q->base[q->rear] = e;
	q->rear = (q->rear + 1) % MAXQSIZE;//将其移动到尾元素的下一位置
	q->rank++;
	return OK;
}
char DeQuene(SqQuene_pt q) {
	//若队列不空，则删除q的队头元素，用log返回其值
	//否则返回ERROR
	if (q->front == q->rear)return ERROR;//队列为空
	char log = q->base[q->front];
	q->front = (q->front + 1) % MAXQSIZE;
	return log;
}
int main()
{
	SqQuene_pt q = InitQuene();
	char bank_customer[9] = { 'A','B','C','D','E','F','G','H','I' };
	cout << "       [1] : 客户取号  [2] : 客户离开  \n";
	int count = 0;
	for (int i = 0; i < 100; i++) {
		int order;
		
		cin >> order;
		switch(order) {
		case 1:
			cout << count<<"count   \n";
			EnQuene(q, bank_customer[count]);
			if (QueneLength(q) == 1) {
				cout << "请"<< QueneRank(q) <<"号客户到窗口办理\n";
			}
			else {
				cout << "您的客户号为 " << QueneRank(q) << "\n";
				cout << "包括您还有 " << QueneLength(q)-1 << "位客户在等待\n";
			}; count++; break;
		case 2:cout <<"离开的客户为"<< DeQuene(q) << "\n"; break;
		}
	}
	return 0;
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

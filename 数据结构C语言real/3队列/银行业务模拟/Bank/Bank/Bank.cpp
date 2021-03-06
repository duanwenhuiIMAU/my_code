// Bank.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "pch.h"
#include <iostream>
#include <ctime>

#define MAXQSIZE 10 //顺序队列长度
#define OK 1
#define ERROR 0
//________________队列需要的数据_______________________
typedef struct QElemType {
	int ArrivalTime;//到达时间  24小时
	int Duration;//办理业务所需时间
}Customer;//队列的数据元素类型

//________________队列的插删数据_______________________
typedef struct SqQuene{
	QElemType  *base;
	int front;//头指针
	int rear;//尾指针
}*SqQuene_pt;
SqQuene_pt InitQuene() {
	SqQuene_pt q = (SqQuene_pt)malloc(sizeof(SqQuene));
	q->base = (QElemType *)malloc(MAXQSIZE * sizeof(QElemType));
	q->base->ArrivalTime = 0;
	q->base->Duration = 0;
	q->front = q->rear = 0;
	return q;
}
int QueneLength(SqQuene_pt q) {
	//返回队列长度既元素多少
	//1 % 7 = 1;
	return(q->rear - q->front + MAXQSIZE) % MAXQSIZE;
}
int Minimum() {
	//输出最小队列数组的下标
	int min_index = 0; 
	int i;
	for (i = 1; i <= 5; i++) {
		if (QueneLength(q[i]) < QueneLength(q[i - 1])) {
			min_index = i;
		}
	}
	return min_index;
}
bool EnQuene(SqQuene_pt q, int e) {
	//插入元素e为q的新队尾元素
	//该方法通过牺牲一个元素空间（队列头的前一个位置，其位置随着头指针变化）来表示队列满的状态
	if ((q->rear + 1) % MAXQSIZE == q->front)return ERROR; //每次都移动到下一位置，当队列满时该位置为空并且其加一为头指针
	q->base[q->rear].ArrivalTime = e;
	q->base[q->rear].Duration= e;
	q->rear = (q->rear + 1) % MAXQSIZE;//将其移动到尾元素的下一位置
	return OK;
}
bool DeQuene(SqQuene_pt q, QElemType log) {
	//若队列不空，则删除q的队头元素，用log返回其值
	//否则返回ERROR
	if (q->front == q->rear)return ERROR;//队列为空
	log = q->base[q->front];
	q->front = (q->front + 1) % MAXQSIZE;
	return OK;
}
SqQuene_pt q[5];//四个客户队列（全局变量）

//__________________事件_____________________
typedef struct {
	int OccurTime;//事件发生时刻  可以是到达也可以是离开
	int NType;//事件类型 ，1到4 表示四个窗口的到达事件,4 到8 表示四个窗口的离开事件
}Event,ElemType;

int cmp(Event change, Event stable) {
	if (change.OccurTime < stable.OccurTime) return 1;//change事件发生于stable事件前
	else if (change.OccurTime = stable.OccurTime) return 0;//change事件与stable事件同时发生
	else return -1; //change事件发生于stable事件后
}

typedef struct ListNode {
	//int date;//队列中的某个元素
	Event ev;//每个客户需要两个节点且二者最多相距6个节点，这时该客户在四个窗口正在办理业务的客户中最先到最后走
	ListNode *next;
}*ListNode_pointer, *EventList_pointer, EventList;
EventList_pointer LnInitlist() {
	//构造一个链式线性表头节点 s 并输出
	ListNode_pointer head = (ListNode_pointer)malloc(sizeof(ListNode));
	ListNode_pointer tail = (ListNode_pointer)malloc(sizeof(ListNode));
	head->next = tail;
	tail->next = NULL;
	head->ev.OccurTime = 0600;//开门时间
	head->ev.NType = 0;
	tail->ev.OccurTime = 1800;//关门时间
	tail->ev.NType = 0;
	return head;
}


void OrderInsert(ListNode_pointer p, Event stable) {
	//调用cmp(a, b)
	//该函数中有事件输入事件与其做比较
	//还不知道如何做
	//按时间顺序插入
	while (p->next->next&&cmp(p->ev, stable)) {
		p = p->next;
	}
	printf("              j: %d", j);
	if (!p || j > pos)return ERROR;//pos 要小于等于链表长度 若不满足条件则再执行一次
	ListNode *s = (ListNode_pointer)malloc(sizeof(ListNode));
	//以下两个语句不可变位置													//	以下两个语句为删除时所用
	s->next = p->next;															//  s = p->next;
	p->next = s;																//  p->next = s->next;
	s->date = e;
	return OK;

	//在线性表中第pos个位置之前插入新元素 e
	//while (p&&j++ < pos)         变为        while (p&&j++ < pos-1)

}

void OpenForDay() {
	//初始化
	TotalTime = 0;//累计时间
	CustomerNum = 0;//客户数
	EventList_pointer ev = LnInitlist();//事件链表为空
	//OrderInsert(ev, en);
	for (int i = 1; i <= 4; i++)q[i]=InitQuene();
}

void CustomerArrived() {
	//处理客户到达事件，en.NType=0。
	++CustomerNum;
	srand(time(NULL) * 10 * i);//Random(durtime, intertime);
	int intertime = (rand()%24)*100 +rand()%60;
	t = en.OccurTime + intertime;
	if (t < CloseTime)
		OrderInsert(ev, (t, 0), cmp);

}

void CustomerDeparture() {

}

void Bank_Simulation(int CloseTime) {
	//银行业务模拟，统计一天内客户在银行停留平均时间
	OpenForDay();
	while (MoreEvent) {
		EventDrived(OccurTime, ElemType);
		switch (ElemType) {
			case 1; CustomerArrived(); break;//处理客户到达事件
			case 2: CustomerDeparture(); break;//处理客户离开事件
			default:Invalid();
		}

	}
}
//_______________________________________
int TotalTime;//总时间
int CustomerNum;//客户人数

int main()
{
    std::cout << "Hello World!\n"; 
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

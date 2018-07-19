//班级  计科2  学号  2017122104071   姓名  段文慧
//#include "stdafx.h"
#include<iostream>
using namespace std;
class Student
{
public:
	void setStudent();
	void showStudent();
	float showAverage();
	Student judgeAverage(Student&t1, Student&t2);
	void rank();
	void showName();
private:
	long number;
	char sname[20];
	int grade[5];
	float sum;
	float average;
};
void Student::setStudent()
{
	cin >> number >> sname;
	sum = 0;
	for (int i = 0; i < 5; i++)
	{
		cin >> grade[i];
		sum += grade[i];
	}
	average = sum / 5;
}
void Student::showStudent()
{
	cout << "  学号:" << number;
	cout << "    姓名:" << sname;
	cout << "    总分:" << sum;
	cout << "    平均分:" << average;
}
float Student::showAverage()
{
	return average;
}
Student Student::judgeAverage(Student&t1, Student&t2)
{
	Student t;
	if (t1.showAverage() < t2.showAverage())
	{
		Student change(t1);
		t = t2;
		t2 = change;
	}
	else
	{
		Student change(t2);
		t = t1;
		t2 = change;
	}
	return t;
}
void Student::rank()
{
	cout << "    学号: " << number;
	cout << "    姓名: " << sname;
	cout << "    平均分:" << average;//delete
}
void Student::showName()
{
	cout << "低于均分人名: " << sname << endl;
}
int main()
{
	int n;
	cout << "输入学生人数" << endl;
	cin >> n;
	cout << "输入学生基本信息：学号， 姓名， 成绩（5）" << endl;
	Student*p = new Student[n];
	for (int i = 0; i <n; i++)
	{
		(p + i)->setStudent();
	}
	cout << "***********            请选择要查询的内容            ***********" << endl << "*** [1] ***" << endl << "*** [2] ***" << endl << "*** [3] ***" << endl << "*** [4] ***" << endl;
	cout << "****************************************************************** " << endl;
	for (int i = 0; i <4; i++)
	{
		int act;
		cin >> act;
		if (act == 1)
			for (int i = 0; i < n; i++)
			{
				(p + i)->showStudent();
				cout << endl;
			}
		if (act == 2 || act == 3 || act == 4)
		{
			for (int i = 0; i < n; i++)
			{
				for (int j = i; j < n; j++)
					*(p + j) = (p + j)->judgeAverage(*(p + j), *(p + j + 1));
			}
			if (act == 2)
				for (int i = 0; i < n; i++)
				{
					cout << "排名:  " << i + 1;
					(p + i)->rank();
					cout << endl;
				}
			if (act == 3 || act == 4)
			{
				float a, sa = 0;
				for (int i = 0; i < n; i++)
				{
					a = (p + i)->showAverage();
					sa += a;
				}
				sa = sa / n;
				cout << "            " << sa << endl;//delete
				if (act == 3)
				{
					int scount = 0;
					for (int i = 0; i < n; i++)
						if (sa >(p + i)->showAverage())
							scount++;
					cout << "低于均分人数: " << scount << endl;
				}
				if (act == 4)
					for (int i = 0; i < n; i++)
					{
						if (sa >(p + i)->showAverage())
							(p + i)->showName();
					}
			}
		}
	}
	delete p;
	return 0;
}

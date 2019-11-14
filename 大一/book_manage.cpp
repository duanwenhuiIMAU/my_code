// BookManage.cpp: 定义控制台应用程序的入口点。
//
#include "stdafx.h"
#include<iostream>
#include<string>
using namespace std;
class Book
{
public:
	Book(string b="无", string a="无", string p="无") :bookname(b), author(a ), publish(p) {}
	void setBookname(string b) { bookname = b; }
	string getBookname() { return bookname; }
	void setAuthor(string a) { author = a; }
	string getAuthor() { return author; }
	void setPublish(string p) { publish = p; }
	string getPublish() { return publish; }	
private:
	string bookname;
	string author;
	string publish;
};
class BookManage:public Book
{
public:
	BookManage(string b = "无", string a = "无", string p = "无", string l = "无", int ma = -1) :Book(b, a, p), location(l), amount(ma ) {}
	void setLocation(string l) { location = l; }
	string getLocation() { return location; }
	void setAmount(int a) { amount = a; }
	int getAmount() { return amount; }
	
	void add(string b, string a, string p, string l, int ma);
	void query() { cout << "	bookname:" << getBookname() << "		author:" << getAuthor() << "		publish:" << getPublish() << "		location:" << getLocation() << "		amount:" << getAmount() << endl; }
	int judge(string book_name1, string book_name2);
	BookManage query(  BookManage&);
	void deletebook() {	cout << "	bookname:" << "无" << "		author:" << "无" << "		publish:" << "无" << "		location:" << "无" << "		amount:" << "0" << endl;}
	void update(BookManage&, string b, string a, string p, string l, int ma);
	void changeAmount(int);
private:
	string location;
	int amount;
};
void BookManage::add(string b, string a, string p, string l, int ma)//01
{
	setBookname(b);
	setAuthor(a);
	setPublish(p);
	setLocation(l);
	setAmount(ma);
}
int BookManage::judge(string book_name1, string book_name2) 
{
	if (book_name1 == book_name2)
		return 0;
	else
		return 1;
}
BookManage BookManage::query( BookManage&t)
{
	return t;
}
void BookManage::update(BookManage&t, string b, string a, string p, string l, int ma)
{
	t.add(b,a, p, l, ma);
}
void BookManage::changeAmount(int act)
{
	if (act == 12)
		amount--;
	if (act == 13)
		amount++;
}

BookManage bm[100];
Student stu[100];
int main()
{
	cout << "         题中文字      00 01 02 03 04 05 10 11 12 13能借书                   " << endl;
	int scount =0;
	for (int i = 0; i <= 100; i++)
	{
		int act;
		cin >> act;
		string b, a, p, l,bb;
		int ma,number;
		int count;//bookmanager
		int student_count;
		string snam, sn, d, bo;
		switch (act)
		{
		case 00:cout << "      正在退出图书管理系统。。。。。。" << endl; break;
		case 01:cout << "      请添加" << endl << "   如果数量为0就退出。     " << endl;
			do
			{
				cin >> b >> a >> p >> l >> ma;
				bm[scount].add(b, a, p, l, ma);
				number = bm[scount].getAmount();
				scount++;
			} while (number != 0||scount==97); break;
		case 02:cout << "      以下为所有图书信息。" << endl;
			for (int i = 0; i < scount - 1; i++)
				bm[i].query();break;
		case 03:cout << "      您要查询的图书信息。" << endl;
			cin >>  bb;
			bm[99].setBookname(bb);
			for (i = 0; i < scount - 1; i++)
				for (int i = 0; i < scount - 1; i++)
				{
					if (bm[i].judge(bm[99].getBookname(), bm[i].getBookname()) == 0)
					{
						count = i;
						break;
					}
				}bm[99].query(bm[count]).query(); break;
		case 04:cout << "      删除该图书信息。" << endl;
			cin >> bb;
			bm[99].setBookname(bb);
			for (int i = 0; i < scount - 1; i++)
			{
				if (bm[i].judge(bm[99].getBookname(), bm[i].getBookname()) == 0)
				{
					count = i;
					break;
				}
			}
			bm[count] = bm[98];
			bm[98].deletebook();
			break;
		case 05:cout << "      重置该图书信息。" << endl;
			cin >> bb>> b >> a >> p >> l >> ma;
			bm[99].setBookname(bb);
			for (int i = 0; i < scount - 1; i++)
			{
				if (bm[i].judge(bm[99].getBookname(), bm[i].getBookname()) == 0)
				{
					count = i;
					break;
				}
			}
			bm[count].update( bm[count], b, a, p, l, ma);
			bm[count].query(); break;
		case 10:cout << "      正在退出借书系统。。。。。。" << endl; break;
		case 11:cout << "      您要查询的图书信息。" << endl;
			cin >> bb;
			bm[99].setBookname(bb);
			for (int i = 0; i < scount - 1; i++)
			{
				if (bm[i].judge(bm[99].getBookname(), bm[i].getBookname()) == 0)
				{
					count = i;
					break;
				}
			}
			if (bm[count].getAmount() == 0 || bm[count].getAmount() == -1)
				cout << "      您要借的图书已经全部借阅出去了。" << endl;
			else
				bm[count].query(); break;
		case 12:cout << "      请输入您要借阅的图书及您的信息。" << endl;
			cin >> bb >> snam>>sn>> d>> bo;
			bm[99].setBookname(bb);
			for (int i = 0; i < scount - 1; i++)
			{
				if (bm[i].judge(bm[99].getBookname(), bm[i].getBookname()) == 0)
				{
					count = i;
					break;
				}
			}
			if (bm[count].getAmount() == 0 || bm[count].getAmount() == -1)
				cout << "      您要借的图书已经全部借阅出去了。" << endl;
			else
			{
				Student::plus_studentCount();
				bm[count].changeAmount(12);
				stu[Student::get_studentCount()].borrow(stu[Student::get_studentCount()], snam, sn, d, bo);
				//stu[Student::get_studentCount()].show();
				bm[count].query();
			}break;
		case 13:cout << "      请输入您要归还的图书。" << endl;
			cin >> bb >> snam >> sn >> d >> bo;
			bm[99].setBookname(bb);
			stu[99].setSno(sn);
			for (int i = 0; i < scount - 1; i++)
			{
				if (bm[i].judge(bm[99].getBookname(), bm[i].getBookname()) == 0)
				{
					count = i;
					break;
				}
			}
			for (int i = 0; i < Student::get_studentCount(); i++)
			{
				if (stu[i].judge(stu[99].getSno(), stu[i].getSno()) == 0)
				{
					student_count = i;
					break;
				}
			}
			bm[count].changeAmount(13);
			stu[99]=stu[99].ression(stu[student_count]);
			stu[student_count].show();
			cout << "成功归回图书。"; break;
		}
	}
	return 0;
}




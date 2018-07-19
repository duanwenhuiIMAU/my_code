// 日期计算OOD.cpp: 定义控制台应用程序的入口点。
//beta
#include "stdafx.h"
#include<iostream>
using namespace std;
class date
{
public:
	void getDate();
	void printDate();
private:
	int judgeBC();
	int judgeGotdate();
	int judgeDate();
	int judgeLeap();
	int calculateBC5();
	int calculateDate_year();
	int calculateDate_month();
	int calculateDate_day();
	int year1;
	int year2;
	int month1;
	int month2;
	int day1;
	int day2;
};
void date::getDate()
{
	cout << "输入一个年 月 日";
	cout << endl;
	cin >> year1 >> month1 >> day1;
	cout << "输入再一个年 月 日";
	cout << endl;
	cin >> year2 >> month2 >> day2;
}
int date::judgeGotdate()
{
	if (month1 > 12 || month2 > 12)
		return 4;
	if (month1 == 1 || month1 == 3 || month1 == 5 || month1 == 7 || month1 == 8 || month1 == 10 || month1 == 12)
		if (day1>31)
			return 4;
	if (month2 == 4 || month1 == 6 || month1 == 9 || month1 == 11)
		if (day1>30)
			return 4;
	if (month1 == 2)
	{
		if (year1 % 400 == 0 || year1 % 4 == 0 && year1 % 100 != 0)
			if (day1 > 29)
				return 4;
			else
				;
		else
			if (day1 > 28)
				return 4;
	}
	if (month2 == 1 || month2 == 3 || month2 == 5 || month2 == 7 || month2 == 8 || month2 == 10 || month2 == 12)
		if (day2>31)
			return 4;
	if (month2 == 4 || month2 == 6 || month2 == 9 || month2 == 11)
		if (day2>30)
			return 4;
	if (month2 == 2)
	{
		if (year2 % 400 == 0 || year2 % 4 == 0 && year2 % 100 != 0)
			if (day2 > 29)
				return 4;
			else
				return 0;
		else
			if (day2 > 28)
				return 4;
	}
	if (year2 == 0)
		return 9;
	if (year1 == 0)
		return 9;
}
int date::judgeBC()
{
	if (year1 < 0 && year2>0)
		return 7;
	if (year1 > 0 && year2 < 0)
		return 6;
	if (year1 < 0 && year2<0)
		return 5;
	if (year1 > 0 && year2 > 0)
		return 8;
}
int date::calculateBC5()
{
	year1 = -year1;
	year2 = -year2;
	if (judgeDate() == 1)
		return calculateDate_year();
	else if (judgeDate() == 2)
		return calculateDate_month();
	else if (judgeDate() == 3)
		return calculateDate_day();
}
int date::judgeDate()
{
	int t;
	if (year1 - year2 != 0)
	{
		if (year1 > year2)
		{
			t = year1;
			year1 = year2;
			year2 = t;
			t = month1;
			month1 = month2;
			month2 = t;
			t = day1;
			day1 = day2;
			day2 = t;
		}
		return 1;
	}
	else if (year1 - year2 == 0 && month1 - month2 != 0)
	{
		if (month1 > month2)
		{
			t = month1;
			month1 = month2;
			month2 = t;
			t = day1;
			day1 = day2;
			day2 = t;
		}
		return 2;
	}
	else if (month1 - month2 == 0)
		return 3;
}
int date::judgeLeap()
{
	int i, count = 0;
	for (i = year1 + 1; i < year2; i++)
		if (i % 400 == 0 || i % 4 == 0 && i % 100 != 0)
			count++;
	return count;
}
int month(int y, int m, int d)
{
	if (y % 400 == 0 || y % 4 == 0 && y % 100 != 0)
		d--;
	else
		;
	if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)
		d = 31 - d;
	else if (m == 4 || m == 6 || m == 9 || m == 11)
		d = 30 - d;
	else if (m == 2)
		d = 28 - d;
	else
		;
	switch (m + 1)
	{
	case 2:d += 28;
	case 3:d += 31;
	case 4:d += 30;
	case 5:d += 31;
	case 6:d += 30;
	case 7:d += 31;
	case 8:d += 31;
	case 9:d += 30;
	case 10:d += 31;
	case 11:d += 30;
	case 12:d += 31;
	case 13:;
	}
	return(d);
}
int date::calculateDate_year()
{
	int month(int y, int m, int d);
	int d = 0, count = 0;
	for (int i = year1; i < year2; i++)
	{
		d += 365;
		if (i % 400 == 0 || i % 4 == 0 && i % 100 != 0)
			count++;
	}
	d = month(year1, month1, day1) + 365 - month(year2, month2, day2) + 366 * count + 365 * (year2 - year1 - count - 1);
	cout << "y" << endl;
	return d;
}
int date::calculateDate_month()
{
	int d = 0;
	if (month1 == 1 || month1 == 3 || month1 == 5 || month1 == 7 || month1 == 8 || month1 == 10 || month1 == 12)
		d = 31 - day1;
	if (month1 == 4 || month1 == 6 || month1 == 9 || month1 == 11)
		d = 30 - day1;
	if (month1 == 2)
		d = 28 - day1;
	switch (month1 + 1)
	{
	case 2: if (month2 == 2) break; d += 28;
	case 3: if (month2 == 3) break; d += 31;
	case 4: if (month2 == 4) break; d += 30;
	case 5: if (month2 == 5) break; d += 31;
	case 6: if (month2 == 6) break; d += 30;
	case 7: if (month2 == 7) break; d += 31;
	case 8: if (month2 == 8) break; d += 31;
	case 9: if (month2 == 9) break; d += 30;
	case 10: if (month2 == 10) break; d += 31;
	case 11: if (month2 == 11) break; d += 30;
	}
	d += day2;
	if (month1 == 2 && year1 % 400 == 0 || month1 == 2 && year1 % 4 == 0 && year1 % 100 != 0)
	{
		cout << "两年相同且为闰年。" << endl;
		d++;
	}
	cout << "m" << endl;
	return d;
}
int date::calculateDate_day()
{
	int  d = 0;
	d = day1 - day2;
	if (d < 0)
		d = -d;
	cout << "d" << endl;
	return d;
}
void date::printDate()
{
	if (date::judgeGotdate() == 4 || date::judgeGotdate() == 9)
		cout << "输入的数有误,请输入规范的年月日。" << endl;
	else if (date::judgeBC() == 7)
		cout << "前者为公元前年份。"  << endl << "两者相差" << calculateDate_year()-366 << "天。" << endl;
	else if (date::judgeBC() == 6)
		cout << "后者为公元前年份。" <<  endl << "两者相差" << calculateDate_year()-366 << "天。" << endl;
	else if (date::judgeBC() == 5)
		cout << "两者都为公元前年份。" << endl << "期间有闰年" << judgeLeap() << "个。" << endl << "两者相差" << calculateBC5() << "天。" << endl;
	else if (date::judgeBC() == 8 && date::judgeDate() == 1)
		cout << "期间有闰年" << judgeLeap() << "个。" << endl << "两者相差" << calculateDate_year() << "天。" << endl;
	else if (date::judgeBC() == 8 && date::judgeDate() == 2)
		cout << "两者相差" << calculateDate_month() << "天。" << endl;
	else if (date::judgeBC() == 8 && date::judgeDate() == 3)
		cout << "两者相差" << calculateDate_day() << "天。" << endl;
}
int main()
{
	for (int i = 0; i < 90; i++)
	{
		date t[10];
		t[i].getDate();
		t[i].printDate();
		cout << endl;
	}
	return 0;
}
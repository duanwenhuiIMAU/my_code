// 控制台-梅花易数3.0.cpp: 定义控制台应用程序的入口点。
#include "stdafx.h"
#include "iostream"
#include<cmath>
#include<ctime>
using namespace std;
int main()
{
	int i, a[6], ben, bian, sben = 0, sbian = 0,count = 0, b;
	cout << "           " << "本卦" << "			                       " << "变卦" << endl;
	for (i = 1; i <= 6; i++)
	{
		cin >> a[i];
		srand(time(NULL) * 10 * i);
		int a = rand() % 2;
		int b = rand() % 2;
		int c = rand() % 2;
		cout << a << b << c << endl;
		if (a == 0 && b == 0 && c == 0)
		{
			ben = 0;
			bian = 1;
			cout << "老阴" << "        " << 0 << "						" << 1 << endl;
		}
		if (a == 1 && b == 1 && c == 1)
		{
			ben = 1;
			bian = 0;
			cout << "老阳" << "        " << 1 << "						" << 0 << endl;
		}
		if (a == 1 && b == 1 && c == 0 || a == 1 && c == 1 && b == 0 || b == 1 && c == 1 && a == 0)
		{
			ben = 1;
			bian = 1;
			cout << "少阳" << "        " << 1 << "						" << 1 << endl;
		}
		if (a == 0 && b == 0 && c == 1 || a == 0 && c == 0 && b == 1 || b == 0 && c == 0 && a == 1)
		{
			ben = 0;
			bian = 0;
			cout << "少阴" << "        " << 0 << "						" << 0 << endl;
		}
		b = pow(2, count);
		sben += ben * b;
		sbian += bian * b;
		count++;
	}
	cout <<"            "<< sben << "                                          " << sbian << endl;
	return 0;
}

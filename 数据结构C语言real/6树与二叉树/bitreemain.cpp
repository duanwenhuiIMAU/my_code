#include <iostream>
using namespace std;
#include "Bitree.h"

void main()
{	
	BiTree T; //����һ����
	cout<<"------ǰ�����------ "<<endl;
	T.PreOrder( );
	cout<<endl;
	cout<<"------�������------ "<<endl;
	T.InOrder( );
	cout<<endl;
	cout<<"------�������------ "<<endl;
	T.PostOrder( );
	cout<<endl;
	cout<<"------�������------ "<<endl;
	T.LeverOrder();
	cout<<endl;
	cout<<"------�������Ľ�����------ "<<endl;
	T.node_number();
	cout<<endl;
	cout<<"------��������Ҷ�ӽ�����------ "<<endl;
	T.leaf_number();
	cout<<endl;
	cout<<"------�����������------ "<<endl;
	T.deep_bitree();
	cout<<endl;


}
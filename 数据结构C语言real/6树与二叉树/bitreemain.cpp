#include <iostream>
using namespace std;
#include "Bitree.h"

void main()
{	
	BiTree T; //创建一棵树
	cout<<"------前序遍历------ "<<endl;
	T.PreOrder( );
	cout<<endl;
	cout<<"------中序遍历------ "<<endl;
	T.InOrder( );
	cout<<endl;
	cout<<"------后序遍历------ "<<endl;
	T.PostOrder( );
	cout<<endl;
	cout<<"------层序遍历------ "<<endl;
	T.LeverOrder();
	cout<<endl;
	cout<<"------二叉树的结点个数------ "<<endl;
	T.node_number();
	cout<<endl;
	cout<<"------二叉树的叶子结点个数------ "<<endl;
	T.leaf_number();
	cout<<endl;
	cout<<"------二叉树的深度------ "<<endl;
	T.deep_bitree();
	cout<<endl;


}
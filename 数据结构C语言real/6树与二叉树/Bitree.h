#include <iostream>
using namespace std;


struct BiNode   //二叉树的结点结构
{
	char data;       
	BiNode *lchild, *rchild;
};

class BiTree
{
public:
	BiTree( ){root = Creat(root);}         //构造函数，建立一棵二叉树
	~BiTree( ){Release(root);}          //析构函数，释放各结点的存储空间
	void PreOrder( ){PreOrder(root);}     //前序遍历二叉树
	void InOrder( ){InOrder(root);}       //中序遍历二叉树
	void PostOrder( ){PostOrder(root);}   //后序遍历二叉树
	void LeverOrder( );                 //层序遍历二叉树
    void node_number () {cout<<node_number(root);}   //二叉树的结点个数(学生完成)
    void leaf_number () {cout<<leaf_number(root);}   //二叉树的叶子结点个数(学生完成)
	void deep_bitree () {cout<<deep_bitree(root);}   //二叉树的深度(学生完成)
private:
	BiNode *root;                             //指向根结点的头指针
	BiNode *Creat(BiNode *bt);                //构造函数调用
	void Release(BiNode *bt);                   //析构函数调用
	void PreOrder(BiNode *bt);                  //前序遍历函数调用
	void InOrder(BiNode *bt);                     //中序遍历函数调用
	void PostOrder(BiNode *bt);                 //后序遍历函数调用
    int node_number(BiNode *bt);                //叶子结点个数函数调用(学生完成)
	int leaf_number(BiNode *bt);                //叶子结点个数函数调用(学生完成)
	int deep_bitree (BiNode *bt);                //深度函数调用(学生完成)
};

BiNode *BiTree::Creat(BiNode *bt)
{
	char ch;
	cout<<"请输入创建一棵二叉树的结点数据"<<endl;
	cin>>ch;
    if (ch=='*') return NULL;
    else{ 
	     bt = new BiNode;       //生成一个结点
         bt->data=ch;
         bt->lchild = Creat(bt->lchild);    //递归建立左子树
         bt->rchild = Creat(bt->rchild);    //递归建立右子树
    } 
    return bt;

}     
void BiTree::Release(BiNode *bt)
{
	if (bt != NULL){                  
	     Release(bt->lchild);   //释放左子树
         Release(bt->rchild);   //释放右子树
         delete bt;
	}  

}

void BiTree::PreOrder(BiNode *bt)
{
	if(bt==NULL)  return;
	else {		
		cout<<bt->data<<" ";
        PreOrder(bt->lchild);
		PreOrder(bt->rchild);
	}
}

void BiTree::InOrder(BiNode *bt)
{
	if (bt==NULL)  return;      //递归调用的结束条件	          
    else {	
        InOrder(bt->lchild);    //中序递归遍历root的左子树
        cout<<bt->data<<" ";    //访问根结点的数据域
        InOrder(bt->rchild);    //中序递归遍历root的右子树
	}
}

void BiTree::PostOrder(BiNode *bt)
{
	if (bt==NULL)  return;       //递归调用的结束条件
    else {	
        PostOrder(bt->lchild);    //后序递归遍历root的左子树
        PostOrder(bt->rchild);    //后序递归遍历root的右子树
        cout<<bt->data<<" ";      //访问根结点的数据域
	}
}


void BiTree::LeverOrder( )
{
	const int MaxSize=100;
	int front=-1, rear=-1;  //采用顺序队列，并假定不会发生上溢
	BiNode *Q[MaxSize], *q;
	if (root==NULL) return;
	else {
		Q[rear++]=root;
		while (front!=rear)
		{
			q=Q[front++];
     		cout<<q->data<<" "; 		
    		if (q->lchild!=NULL)  Q[rear++]=q->lchild;		
			if (q->rchild!=NULL)  Q[rear++]=q->rchild;
		}
	}
}

int BiTree::node_number(BiNode *bt)
{//求二叉树结点的数目
	int num,lnum,rnum;
	if(bt)
	{
		num=1;
		lnum=node_number(bt->lchild);
		rnum=node_number(bt->rchild);
		num=lnum+rnum+num;
	}
     else
		 num=0;
	return num;
}

int BiTree::leaf_number(BiNode *bt)
{//求二叉树叶子的数目
	int num,lnum,rnum;
	if(bt)
	{
		if(!bt->lchild &&!bt->rchild)  {num=1;cout<<bt->data<<endl;} 
		else
		{
			lnum=leaf_number(bt->lchild);
			rnum=leaf_number(bt->rchild);
				
			num=lnum+rnum;
		}
	}
	else num=0;
	return num;
}


int BiTree::deep_bitree(BiNode *bt)
{//求二叉树的深度
	int n,nl,nr;
	if(bt)
	{
		nl=deep_bitree(bt->lchild);
		nr=deep_bitree(bt->rchild);
		if(nl>=nr)
			n=nl+1;
		else
			n=nr+1;
	}
	else
		n=0;
	return n;
}// deep_bitree

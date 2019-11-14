#include <iostream>
using namespace std;


struct BiNode   //�������Ľ��ṹ
{
	char data;       
	BiNode *lchild, *rchild;
};

class BiTree
{
public:
	BiTree( ){root = Creat(root);}         //���캯��������һ�ö�����
	~BiTree( ){Release(root);}          //�����������ͷŸ����Ĵ洢�ռ�
	void PreOrder( ){PreOrder(root);}     //ǰ�����������
	void InOrder( ){InOrder(root);}       //�������������
	void PostOrder( ){PostOrder(root);}   //�������������
	void LeverOrder( );                 //�������������
    void node_number () {cout<<node_number(root);}   //�������Ľ�����(ѧ�����)
    void leaf_number () {cout<<leaf_number(root);}   //��������Ҷ�ӽ�����(ѧ�����)
	void deep_bitree () {cout<<deep_bitree(root);}   //�����������(ѧ�����)
private:
	BiNode *root;                             //ָ�������ͷָ��
	BiNode *Creat(BiNode *bt);                //���캯������
	void Release(BiNode *bt);                   //������������
	void PreOrder(BiNode *bt);                  //ǰ�������������
	void InOrder(BiNode *bt);                     //���������������
	void PostOrder(BiNode *bt);                 //���������������
    int node_number(BiNode *bt);                //Ҷ�ӽ�������������(ѧ�����)
	int leaf_number(BiNode *bt);                //Ҷ�ӽ�������������(ѧ�����)
	int deep_bitree (BiNode *bt);                //��Ⱥ�������(ѧ�����)
};

BiNode *BiTree::Creat(BiNode *bt)
{
	char ch;
	cout<<"�����봴��һ�ö������Ľ������"<<endl;
	cin>>ch;
    if (ch=='*') return NULL;
    else{ 
	     bt = new BiNode;       //����һ�����
         bt->data=ch;
         bt->lchild = Creat(bt->lchild);    //�ݹ齨��������
         bt->rchild = Creat(bt->rchild);    //�ݹ齨��������
    } 
    return bt;

}     
void BiTree::Release(BiNode *bt)
{
	if (bt != NULL){                  
	     Release(bt->lchild);   //�ͷ�������
         Release(bt->rchild);   //�ͷ�������
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
	if (bt==NULL)  return;      //�ݹ���õĽ�������	          
    else {	
        InOrder(bt->lchild);    //����ݹ����root��������
        cout<<bt->data<<" ";    //���ʸ�����������
        InOrder(bt->rchild);    //����ݹ����root��������
	}
}

void BiTree::PostOrder(BiNode *bt)
{
	if (bt==NULL)  return;       //�ݹ���õĽ�������
    else {	
        PostOrder(bt->lchild);    //����ݹ����root��������
        PostOrder(bt->rchild);    //����ݹ����root��������
        cout<<bt->data<<" ";      //���ʸ�����������
	}
}


void BiTree::LeverOrder( )
{
	const int MaxSize=100;
	int front=-1, rear=-1;  //����˳����У����ٶ����ᷢ������
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
{//�������������Ŀ
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
{//�������Ҷ�ӵ���Ŀ
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
{//������������
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

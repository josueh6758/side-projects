#include<iostream>
using namespace std;


void towers(int n, int beg,int spare,int dest){
if(n==1){
	cout << beg << ":" << dest <<endl;
	return;
}
towers(n-1,beg,dest,spare);
cout<<beg << ":" << dest<<endl;
towers(n-1,spare,beg,dest);
}


int main() {
int beg=1;
int spare=2;
int dest=3;
int n;
cin >> n;
towers(n,beg,spare,dest);
return 0;

}

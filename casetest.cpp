#include<iostream>
#include<string>
using namespace std;

int main(){
string a;
string b;

cout << "enter key"<<endl;
cin >> a;
cout << "enter key"<<endl;
cin >> b;
if(a > b)
	cout << a << " is bigger than " << b << endl;
else if (a < b)
	cout << b<< " is bigger than" << a << endl;
else 
	cout <<"they are both equal" << endl;
return 0;



}

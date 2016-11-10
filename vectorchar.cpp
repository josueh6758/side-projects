#include<string>
#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;
int main(){
string input;
vector<string> list;
for(int i = 0; i <5; i++){
	cin>>input;
	list.push_back(input);
}
sort(list.begin(),list.end());
cout << endl;
for(int a=0;a<=list.size()-1;a++)
	cout << list[a]<<endl;

}

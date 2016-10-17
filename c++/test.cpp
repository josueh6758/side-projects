#include<iostream>
#include<vector>
#include<string>
using namespace std;

int main(){
vector<int> column(5, 99); 

vector<vector<int> > row(3,column); 

for(int i=0;i<row.size(); i++) 
{ for (int j=0;j<row[i].size(); j++) 
cout << row[i][j] << " "; 
cout << endl; 
} 




}

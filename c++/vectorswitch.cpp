#include<iostream>
#include<vector>
using namespace std;

int main() {
vector<int> line;
for(int i = 0; i<4 ; i++)
	line.push_back(i);

vector<vector<int> > array(2,line);
cout << array[0][0]<< endl << array[0][2]<<endl;



}

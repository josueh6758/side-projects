#include<vector>
#include<iostream>
#include<string>
using namespace std;
int main(){
vector<int> column(4, 3);
vector<vector<int> > board(3, column);
for(int i=0;i<board.size();i++)
{	for (int j=0;j<board[i].size();j++)
		cout << board[i][j]<<endl;

}
}

#include<iostream>
#include<string>
#include<vector>
#include<fstream>
#include<cstdio>
#include<string>
using namespace std;

void display(vector<vector<bool> >& board){
// this will display the new board fam. 
for(int i = 0; i < board.size(); i++) 
{ for (int j=0;j<board[i].size(); j++)
	if (board[i][j])
		cout << "O";
	else
		cout << ".";
	cout << endl;
}
}



void parseBoard(vector<vector<bool> >& board, vector<bool>& column){
/*i want to post whats in file to vector in T/F values
 should only be run once each new game*/
//first get the file open bro

FILE* f =fopen("testfile","rb");
char c;
while(fread(&c,1,1,f) != 0){
	switch (c) {
	case 'O':
		column.push_back(true);
		break;
	case '.':
		column.push_back(false);
		break;
	case '\n':
		board.push_back(column);
		column.clear();
		break;
	
}

}
fclose(f);
}

bool iscellalive(const vector<vector<bool> >& board,const int i,const int j){
//this function will return true if the next cell generation will be alive
int truth= 0; 
int toptest = i-1;
int medtest = i;
int bottest = i + 1;
int columntest = j-1;
//corners
//cout << i <<","<< j<<endl;


for (int topcount=0;topcount<3;topcount++){
	//cout << board.size() << endl;
	int columnmax = j+1;
	if(toptest == -1)
		toptest=board.size() - 1;
	//cout <<"board[" <<toptest<<"][x] is being tested" << endl;
		if (columntest== -1){
			
			int temp = board[i].size() - 1;
			if (board[toptest][temp]==true)
				truth++;
		}
		else if (columntest == board[i].size()){
			if (board[toptest][0]==true)
				truth++;
		}
		else {
			if (board[toptest][columntest]==true)
				truth++;
		}
	//cout <<"board[" <<toptest<<"]["<<columntest<<"] is being tested" << endl;	
	
columntest++;
}

columntest = j-1;
for (int medcount=0;medcount<2;medcount++){
	int medtest = i;
	//cout << board.size() << endl;
	int columnmax = j+1;
	//cout <<"board[" <<toptest<<"][x] is being tested" << endl;
		if (columntest== -1){
			
			int temp = board[i].size() - 1;
			if (board[medtest][temp]==true)
				truth++;
		}
		else if (columntest == board[i].size()){
			if (board[medtest][0]==true)
				truth++;
		}
		else {
			if (board[medtest][columntest]==true)
				truth++;
		}
	//cout <<"board[" <<toptest<<"]["<<columntest<<"] is being tested" << endl;	
//cout << i << "," << columntest << endl;	
columntest= columntest + 2;
}

columntest = j-1;
for (int botcount=0;botcount<3;botcount++){
	//cout << board.size() << endl;
	int columnmax = j+1;
	if(bottest == board.size())
		bottest= 0;
	//cout <<"board[" <<toptest<<"][x] is being tested" << endl;
		if (columntest== -1){
			
			int temp = board[i].size() - 1;
			if (board[bottest][temp]==true)
				truth++;
		}
		else if (columntest == board[i].size()){
			if (board[bottest][0]==true)
				truth++;
		}
		else {
			if (board[bottest][columntest]==true)
				truth++;
		}
	//cout <<"board[" <<toptest<<"]["<<columntest<<"] is being tested" << endl;	
	
columntest++;
} 

// done checking how many neighbors are alive now return true of false
if (board[i][j] == true){ 
	if(truth == 2|| truth == 3)
	return true;
else 
	return false;
}
else { 
	if(truth == 3)
		return true;
	else 
		return false;
}
}

void cellcycle(vector<vector<bool> >& oldboard, vector<vector<bool> >& newboard){
/*the 2 for loops basically go through 0,0 all the way to the end. we do this
 so that we can run the life check for all cells in one function*/
int i,j,count ;
count = 0;

for( i = 0; i < oldboard.size(); i++) 
{ for ( j=0;j<oldboard[i].size(); j++)
		newboard[i][j] =  iscellalive(oldboard,i,j);
}
}


void vectortransfer(vector<vector<bool> >& oldboard, vector<vector<bool> >& newboard){
//start all over again and tranfer the new to the old
for (int i = 0; i<oldboard.size(); i++){
	for(int j=0;j<oldboard[i].size();j++){
		oldboard[i][j] = newboard[i][j];
	
}
}
}

int main(){
// create two vecters old and new 
vector<vector<bool> > oldboard;
vector<vector<bool> > newboard;
/*now create a vector that will push the columns into the vector, can be 
used twice */
vector<bool> column;
parseBoard(oldboard,column);
parseBoard(newboard,column);
display(oldboard);
cout << endl;
cellcycle(oldboard,newboard);
display(newboard);
vectortransfer(oldboard,newboard);
cellcycle(oldboard,newboard);
display(newboard);
}

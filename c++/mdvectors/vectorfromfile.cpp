#include<iostream>
#include<string>
#include<vector>
#include<fstream>
#include<cstdio>
#include<string>
using namespace std;
// this function will display the whole vector only
void display(/*vector<char> display*/){
	for(int i = 0; i < display.size(); i++) {
		
}
}

//this function will initialize the board
void parse_board(vector<vect<bool> >& board){
/*i want to post whats in file to vector in T/F values
 should only be run once each new game*/
//first get the file open bro
FILE* f =fopen("testfile","rb");
vector<bool> column;
vector<vector<bool> > rows;


}





int main(){
char c;
char string;
int o,period,breaks,rowcount;
o=0;
period=0;
breaks=0;

vector<char> row;


FILE* f = fopen("10x30","rb");
while(fread(&c,1,1,f)){
	fread(&c,1,1,f);
	switch(c){
	case '.':
		period++;
		row.push_back(c);
		break;
	case '\n':
		row.push_back(c);
		breaks++;
		break;
	case 'O':
		row.push_back(c);
		o++;
		break;
}		
}

cout<< "total Os were: " << o << "\ntotal periods were:"<< period << "\ntotal lines were:"<< breaks << endl;
if(fread(&c,1,1,f) == 0)
	cout << "the byte is 0"<< endl;
else 
	cout << "man idk wtf went wrong"<< endl;
fclose(f);
display(row);


}

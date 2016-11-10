#include<iostream>
#include<string>
#include<vector>
#include<cstdio>
using namespace std;


int main(){
FILE* f=fopen("/home/josue/owngit/c++/mdvectors/testfile","rb");
char c;
while(fread(&c,1,1,f) !=0){
	switch(c){
		case 'O':
			cout << "o"<< endl;
			break;
		case '.':
			cout << "its a ." << endl;
			break;
		case '\n':
			cout << "space" << endl;
			break;
	}
	
}
fclose(f);
}

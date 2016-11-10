#include<iostream>
#include<string>
#include<vector>
#include<fstream>
#include<cstdio>
using namespace std;
int main() {
vector<vector<bool> > vec2;
vector<bool> vec1;
char c;
FILE* f = fopen("testmap","rb");
while(fread(&c,1,1,f)){
	switch(c) {
	case '\n':
		vec2.push_back(vec1);
		break;
	case 'O':
		vec1.push_back(true);
		break;
	case '.':
		vec1.push_back(false);
		break;
}
	
}



}

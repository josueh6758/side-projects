#include <iostream>
#include <string>
#include <stdio.h>
using namespace std;



int main(){
char c;
while(fread(&c,1,1,stdin) != 0){
if (c == '\n')
	cout << "you pressed the enter key";
else 
	cout<< c << endl;


}

}

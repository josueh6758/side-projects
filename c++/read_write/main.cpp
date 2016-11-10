#include <iostream>
#include <string>
#include <fstream>
using namespace std;

int main() {
cout << "i am gonna read the testfile and hopefuly learn to write to it"<<endl;
fstream myfile;
myfile.open ("testfile");
if (myfile.is_open()) 
	cout << "dawg its open"<<endl;

myfile.close();

}

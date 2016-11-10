#include<set>
#include<iostream>
#include<map>
#include<fstream>
using namespace std;

int main(){
string input;
set<string> stringlist;
char buffer;
// Up is variables
while(getline(cin, input)){
        cout<<input<<endl;
        stringlist.insert(input);
}

cout<< "hey" << endl;
stringlist.insert("hello");


for (auto iterator = stringlist.begin(); iterator != stringlist.end(); iterator++){
        int count = 0;
        cout << "S["<<count<<"]: " << *iterator << endl;
        count++;
}



}


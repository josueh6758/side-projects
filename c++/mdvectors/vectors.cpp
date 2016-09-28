#include<iostream>
#include<string>
#include<vector>
#include<cstdio>
using namespace std;


int main(){
int i,n;
i=3;
n=3;
vector<vector<int> > vect(i, vector<int>(n));	
vect[2][2]= 2;
cout << vect[2][2] << "\n";

}

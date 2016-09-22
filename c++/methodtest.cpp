#include<iostream>
using std::cout; 
using std::cin;
int adding (int a,int b) //we are creating a function that will take an int a and times it by two
{
int z;
z = a*2*b;
return z;	
}
 








int main()
{
int random=5;
int cool = 2;
int c;
c = adding(random, cool); // we are throwing that fucking random int into the fuction adding and from there it will get the return value
cout << "the number before was: " << random << "\nafter it was: " << c << "\n";
}


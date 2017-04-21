#include <cstdio>
#include <getopt.h> // to parse long arguments.
#include <string>
#include <iostream>
#include <set>
#include <strings.h>
#include <algorithm>
#include<vector>
using namespace std;

static const char* usage =
"Usage: %s [OPTIONS]...\n"
"Limited clone of sort.  Supported options:\n\n"
"   -r,--reverse        Sort descending.\n"
"   -f,--ignore-case    Ignore case.\n"
"   -u,--unique         Don't output duplicate lines.\n"
"   --help              Show this message and exit.\n";

struct igncaseComp {
	bool operator()(const string& s1, const string& s2) {
		return (strcasecmp(s1.c_str(),s2.c_str()) < 0);
	}
};
/* NOTE: set<string,igncaseComp> S; would declare a set S which
 * does its sorting in a case-insensitive way! */

int main(int argc, char *argv[]) {
	// define long options
	static int descending=0, ignorecase=0, unique=0;
	static struct option long_opts[] = {
		{"reverse",       no_argument,   0, 'r'},
		{"ignore-case",   no_argument,   0, 'f'},
		{"unique",        no_argument,   0, 'u'},
		{"help",          no_argument,   0, 'h'},
		{0,0,0,0}
	};
	// process options:
	char c;
	int opt_index = 0;
	while ((c = getopt_long(argc, argv, "rfuh", long_opts, &opt_index)) != -1) {
		switch (c) {
			case 'r':
				descending = 1;
				break;
			case 'f':
				ignorecase = 1;
				break;
			case 'u':
				unique = 1;
				break;
			case 'h':
				printf(usage,argv[0]);
				return 0;
			case '?':
				printf(usage,argv[0]);
				return 1;
		}
	}

	/* TODO: write me... */
vector<string> list;
string input;

if(unique == 1){
	while(cin >> input){
		if(find(list.begin(),list.end(),input) == list.end())
			list.push_back(input);			
	}
	sort(list.begin(),list.end());
}
else{
	while (cin>>input)	
		list.push_back(input);
	sort(list.begin(),list.end());
}
if(descending==1){
	for(int a = list.size()-1; 0<=a ; a--)
		cout << list[a] <<endl;
}
else if (descending==0){
	for(int a=0;a<=list.size()-1;a++)
		cout<<list[a]<<endl;
}
	return 0;
}

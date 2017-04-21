#include <cstdio>
#include <getopt.h> // to parse long arguments.
#include <string>
#include <iostream>
#include <map>
#include <set>
using namespace std;

static const char* usage =
"Usage: %s [OPTIONS]...\n"
"Limited clone of uniq.  Supported options:\n\n"
"   -c,--count         prefix lines by their counts.\n"
"   -d,--repeated      only print duplicate lines.\n"
"   -u,--unique        only print lines that are unique.\n"
"   --help             show this message and exit.\n";

int main(int argc, char *argv[]) {
	// define long options
	static int showcount=0, dupsonly=0, uniqonly=0;
	static struct option long_opts[] = {
		{"count",         no_argument, 0, 'c'},
		{"repeated",      no_argument, 0, 'd'},
		{"unique",        no_argument, 0, 'u'},
		{"help",          no_argument, 0, 'h'},
		{0,0,0,0}
	};
	// process options:
	char c;
	int opt_index = 0;
	while ((c = getopt_long(argc, argv, "cduh", long_opts, &opt_index)) != -1) {
		switch (c) {
			case 'c':
				showcount = 1;
				break;
			case 'd':
				dupsonly = 1;
				break;
			case 'u':
				uniqonly = 1;
				break;
			case 'h':
				printf(usage,argv[0]);
				return 0;
			case '?':
				printf(usage,argv[0]);
				return 1;
		}
	}
// universal variabl//
string line;
map<string,int> occurence;


while (cin>>line && line.compare("\0") != 0){
// start of -c block
occurence[line]++;
if (showcount == 1) {
for(map<string,int>::iterator iterator = occurence.begin(); iterator != occurence.end(); iterator++){
	cout<< (*iterator).second << ": " << (*iterator).first<< endl;
}


// end of -c block
}

}
cout << endl;
// start of -d block 
if(dupsonly ==1){
for(map<string,int>::iterator iterator= occurence.begin(); iterator != occurence.end(); iterator++){
	if( 1 < (*iterator).second)
		cout << (*iterator).first<<endl;
} 

// end of -d block
}
// start of -u block
if(uniqonly == 1){
for(map<string,int>::iterator iterator= occurence.begin(); iterator != occurence.end(); iterator++){
	if((*iterator).second == 1)
		cout << (*iterator).first<<endl;
} 
// end of -d block
}
	/* TODO: write me... */

	return 0;
}

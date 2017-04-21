#include <cstdio>   // printf
#include <cstdlib>  // rand
#include <time.h>   // time
#include <getopt.h> // to parse long arguments.
#include <stdlib.h>
#include <string>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

static const char* usage =
"Usage: %s [OPTIONS]...\n"
"Limited clone of shuf.  Supported options:\n\n"
"   -e,--echo              treat each argument as an input line.\n"
"   -i,--input-range=LO-HI treat each number in [LO..HI] as an input line.\n"
"   -n,--head-count=N      output at most N lines.\n"
"   --help                 show this message and exit.\n";

int main(int argc, char *argv[]) {
	// define long options
	static int echo=0, rlow=0, rhigh=0;
	static size_t count=-1;
	bool userange = false;
	static struct option long_opts[] = {
		{"echo",        no_argument,       0, 'e'},
		{"input-range", required_argument, 0, 'i'},
		{"head-count",  required_argument, 0, 'n'},
		{"help",        no_argument,       0, 'h'},
		{0,0,0,0}
	};
	// process options:
	char c;
	int opt_index = 0;
	while ((c = getopt_long(argc, argv, "ei:n:h", long_opts, &opt_index)) != -1) {
		switch (c) {
			case 'e':
				echo = 1;
				break;
			case 'i':
				if (sscanf(optarg,"%i-%i",&rlow,&rhigh) != 2) {
					fprintf(stderr, "Format for --input-range is N-M\n");
					rlow=0; rhigh=-1;
				} else {
					userange = true;
				}
				break;
			case 'n':
				count = atol(optarg);
				break;
			case 'h':
				printf(usage,argv[0]);
				return 0;
			case '?':
				printf(usage,argv[0]);
				return 1;
		}
	}
	/* NOTE: the system's shuf does not read stdin *and* use -i or -e.
	 * Even -i and -e are mutally exclusive... */

	/* TODO: write me... */
int max;
srand(time(0));
//check to see if -i and -e are used and return an error message
if (echo== 1 && rhigh != 0){
	cout << "Error: cannot use -i and -e at the same time" << endl;
	return 1;
}
//start of -i block
if(rhigh != 0){
	vector<int> numlist;
	for(int i = rlow; i <= rhigh; i++){
		numlist.push_back(i);
	}
	//we have inserted all the sorted numbers, time to shuffle
	random_shuffle(numlist.begin(),numlist.end());
	//this part is part of the n block 
	if(count == -1)
		max = numlist.size()-1;
	else 
		max = count;

	for(size_t i = rlow; i <= max; i++)
		cout << numlist[i] << endl;
		

	return 0; 
}
// start of -e block
if (optind < argc){ 
	vector<string> list;
	while (optind < argc){
		list.push_back(argv[optind++]);
	}
	random_shuffle(list.begin(),list.end());
	// insertion and shuffling complete
	if(count == -1)
		max = list.size()-1;
	else
		max = count;
	/*since we already know whats in the list we need to find out if -n is called
	  if so we need to set the end for the for loop to the appropriate number)*/
	for(size_t i = 0; i <= max; i++)
		cout << list[i] << endl; 

		return 0; 
}

// now start of the normal input
string input;
vector<string> list;

while(cin >> input){
	list.push_back(input);	
}
// now randomize this shit
random_shuffle(list.begin(),list.end());
	// insertion and shuffling complete
if(count == -1)
	max = list.size()-1;
else
	max = count;
for(size_t i = 0; i <= max; i++)
	cout << list[i] << endl; 

	return 0;
}

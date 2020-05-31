char * MyStr = "Engr 304";
unsigned char * MyStr2 = "is fun!";

main() {
	int i=0;
	int sum=0;
	
	for (i=0;i<8; i++)
		sum += MyStr[i];
	for (i=0;i<7; i++)
		sum += MyStr2[i];
		
	return sum;
}
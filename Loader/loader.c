#include<stdio.h>
#include<string.h>

void main(){
	FILE *f1;
	f1=fopen("input.txt","r");
	int len,address;
	char type,progname[20],input[20];
	fscanf(f1,"%c%s%x%x",&type,progname,&address,&len);
	printf("Loading program %s  of length %x with starting address %x\n",progname,len,address);
	fscanf(f1,"%s",input); 
	while(strcmp(input,"E")!=0){
		if(strcmp(input,"T")==0){
			fscanf(f1,"%x",&address);
			fscanf(f1,"%X",&len);
			fscanf(f1,"%s",input);
			}
		int i=0;
		while(i<strlen(input)-1){
			printf("%06X\t%c%c\n",address,input[i],input[i+1]);
			address++;
			i+=2;
			}
		fscanf(f1,"%s",input);
			}
fclose(f1);
	}
	

#include <stdio.h>
#include <ctype.h>
char menuSelect(); //return 'E' or 'M'

int main(int argc, char* argv[])
{
	double inches;
	double centimeters;
	char select;
	char newline; //used to process the ENTER key
	
	do{
		select = menuSelect();
		if(select == 'E')
		{
			printf("Enter the number of inches: ");
			scanf("%lf%c", &inches, &newline); //double lf(long float) 
			centimeters = inches * 2.54;
			printf("%.2lf inches is equal to %.2lf centimeters\n", inches, centimeters);
		}
		else if(select == 'M')
		{
			printf("Enter the number of centimeters: ");
			scanf("%lf%c", &centimeters, &newline);
			inches = centimeters / 2.54;
			printf("%.2lf centimeters is equal to %.2lf inches\n", centimeters, inches);
		}
	}
	while(select != 'Q');
	
	return 0;
}

char menuSelect()
{
	char selection;
	char newline; //clear the extra character from the ENTER key
	
	do {
		printf("\n"); //blank line
		printf("Enter E to convert English to Metric or M to convert Metric to English or Q to quit: ");
		scanf("%c%c", &selection, &newline); //input a character and the ENTER key
		selection = toupper(selection); //convert to uppercase
	}
	while(selection !='E' && selection != 'M' && selection != 'Q'); //verify legal selection
	return selection;
}
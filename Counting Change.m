/* 
Angeli Casupanan
CIS054 C/C++ Programming
Inputs: quarters, dimes, nickel, and pennies
Output: change
*/

#include <stdio.h>

/* define the constants */
#define QUARTER_VALUE .25
#define DIME_VALUE .10
#define NICKEL_VALUE .05
#define PENNY_VALUE .01

int main(int argc, char* argv[])
{
	/* Declare the variables */
	double quarter;
	double dime;
	double nickel;
	double penny;
	double total;
	
	/* Input quarters */
	printf("Enter number of quarters: ");
	fflush(stdout);
	scanf("%lf", &quarter);

	/* Input dimes */
	printf("Enter number of dimes: ");
	fflush(stdout);
	scanf("%lf", &dime);
	
	/* Input nickels */
	printf("Enter number of nickels: ");
	fflush(stdout);
	scanf("%lf", &nickel);
	
	/* Input pennies */
	printf("Enter number of pennies: ");
	fflush(stdout);
	scanf("%lf", &penny);
	
	/* Process: compute the number of changes */
	total = quarter * QUARTER_VALUE + dime * DIME_VALUE + nickel * NICKEL_VALUE + penny * PENNY_VALUE;
	
	/* Output: displays the change */
	printf("The change: $%.2lf\n", total);
	
	return 0;
}
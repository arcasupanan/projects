#include <stdio.h>
#include <math.h>

#define pie 3.14159265358979

int main(int argc, char* argv[])
{
	//list of variables and constants
	int loopCount;
	int terms;
	double pi;
	double numerator;
	double denominator;
	double fraction;
	
	//Intialize the variables and go through the loop
	pi = 0;
	numerator = 4;
	denominator = 1;
	printf("How many terms do you want to compute pi: ");
	scanf("%d", &terms);
	for (loopCount=1; loopCount<=terms; loopCount++)
	{
		fraction = numerator / denominator;
		if (loopCount % 2) //determine odd or even counter
			pi += fraction; //add fraction if loopCount is odd
		else 
			pi -= fraction; // subtract if loopCount is even
		//prepare for next iteration through the loop
		denominator += 2; 
	}
	//Set flags to display a set number of digits past the decimal
	printf("Computed pi = %14.10lf\n", pi);
	printf("Expected Value = %14.10lf\n", pie);
	printf("Difference = %14.10lf\n",fabs(pi - pie) );
	
	return 0;
}
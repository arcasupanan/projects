#include <stdio.h>

#define NUMBER_COUNT 10

int main(int argc, char* argv[])
{
	int sumOfOddNumbers = 0; //integers hold only whole numbers
	int sumOfEvenNumbers = 0;
	int sumOfAllNumbers = 0;
	int minValue = 0;
	int maxValue = 0;
	
	//Input: numbers
	int number;
	int inputCounter = 1;
	while(inputCounter <= NUMBER_COUNT) //count from 1 to NUMBER_COUNT
	{
		printf("Enter number: ");
		scanf("%d", &number);
		
		//determine if the number is odd or even
		if (number %2 == 1) //odd number
			sumOfOddNumbers += number;
		else //even number
			sumOfEvenNumbers += number;
		
		// add the total of all numbers	
		sumOfAllNumbers += number;
		
		// determine the range (min, max) of input values
		if (inputCounter == 1)
		{
			minValue = number; //intialize minValue and maxValue
			maxValue = number;
		}
		if (number < minValue) // see if minValue
			minValue = number; // yes
		if (number > maxValue) // see maxValue
			maxValue = number; //yes
			
		//keep count of how many entered
		inputCounter++;
	}
	
	//Output
	printf("\n");
	printf("Sum of Odd Numbers:  %d\n", sumOfOddNumbers);
	printf("Sum of Even Numbers:  %d\n", sumOfEvenNumbers);
	printf("Sum of All Numbers:  %d\n", sumOfAllNumbers);
	printf("The lowest value:  %d\n", minValue);
	printf("The highest value:  %d\n", maxValue);
	printf("\n");
	
	return 0;
}
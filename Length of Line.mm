#include <stdio.h>
#include <math.h>

double LengthOfLine (double X1, double Y1, double X2, double Y2);

int main(int argc, char* argv[])
{
	double X1, Y1, X2, Y2, length; //declare the variables
	printf("Enter X1 Y1 X2 Y2 seprarated by spaces: ");
	scanf("%lf %lf %lf %lf", &X1, &Y1, &X2, &Y2);
	length = LengthOfLine(X1, Y1, X2, Y2);
	printf("The length of the line is %lf\n", length);
	return 0;
}
double LengthOfLine (double X1, double Y1, double X2, double Y2)
{
	double a, b, c; //c is the computed length of the line
	a = X2 - X1;
	b = Y2 - Y1;
	c = sqrt(a*a + b*b);
	return c;
}
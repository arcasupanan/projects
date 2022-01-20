#include <stdio.h>
#include <ctype.h>

int main(int argc, char* argv[])
{
	/* Declare the variables */
	char player1;
	char player2;
	char playAgain = 'Y';
	
	/* Input user selections and determine the winner */
	do
	{
		printf("Player 1's move: "); // choose either R,P,S
		scanf(" %c", &player1);
		player1 = toupper(player1);
		
		printf("Player 2's move: "); // choose either R,P,S
		scanf(" %c", &player2);
		player2 = toupper(player2);
		
		if (player1 == 'R')
		{
			if (player2 == 'R')
				printf("It's a tie!\n");
			else if (player2 == 'P')
				printf("Player 2 wins! Paper covers rock\n");
			else if (player2 == 'S')
				printf("Player 1 wins! Rock breaks scissors\n");
			else //player2 not R,P, or S
				printf("ERROR!\n");
		}
		else if (player1 == 'P')
		{
			if (player2 == 'P')
				printf("It's a tie!\n");
			else if (player2 == 'R')
				printf("Player 1 wins! Paper covers rock\n");
			else if (player2 == 'S')
				printf("Player 2 wins! Scissors cut paper\n");
			else //player2 not R,P, or S
				printf("ERROR!\n");
		}
		else if (player1 == 'S')
		{
			if (player2 == 'S')
				printf("It's a tie!\n");
			else if (player2 == 'P')
				printf("Player 1 wins! Scissors cut paper\n");
			else if (player2 == 'R')
				printf("Player 2 wins! Rock breaks scissors\n");
			else //player2 not R,P, or S
				printf("ERROR!\n");
		}
		else
		{
			printf("ERROR!\n");
		}
		printf("Want to play again Y/N: "); //asking to play again
		scanf(" %c", &playAgain);
		playAgain = toupper(playAgain);
		printf ("\n"); // blank line between games
	}
	while (playAgain == 'Y');
	return 0;
}
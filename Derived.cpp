#include <iostream>
#include <cstring>
using namespace std;

////////////// Person class Definition /////////////////
class Person {
protected:  // A derived class can access protected data
	char Name[20];
public:
	Person (const char* n)
	{
		// choose the version of strcpy for your compiler
		// comment out the other version
//      strcpy_s(Name, n);  // for Microsoft
		strcpy  (Name, n);  // for everywhere except Microsoft
	}
	virtual void print() const
	{
		cout << "Person:  " << Name << endl;
	}
};


///////////// Student class Definition //////////////
class Student : public Person  {   // access all data and functions from Person
private:
	int    units;
public:
	// Student constructor gets name from Person class
	Student (const char* n, int u) : Person ( n)
	{
		units = u;
	}
	virtual void print() const
	{
		cout << "Student: " << Name << "  Units: " << units << endl;
	}
};
//////////// Teacher class Definition /////////////////
class Teacher : public Person  { // access all data and functions from Person
private:
	int    numberOfStudents;
	int	numberOfClasses;
public:
	// Teacher constructor gets 'name' from the Person class
	Teacher (const char* n, int s, int c) : Person ( n)
	{
		numberOfStudents = s;
		numberOfClasses = c;
	}
	virtual void print() const
	{
		cout << "Teacher: " << Name 
			 << "  Students: " << numberOfStudents 
			 << "  Classes: " << numberOfClasses << endl;
	}
};
/////////// Employee Definition ////////////////
class Employee : public Person {
	private: 
		int EmpNo;
		int rate;
		double Hours;
		double PayRate;
	public:
		Employee (const char* n, int r) : Person ( n)
		{
			Hours = 8;
			rate = r;
			PayRate = Hours * rate;
			
		}
		virtual void print() const
		{
			cout << "Employee: " << Name
			<< " Pay: " << PayRate << endl;
		}
};

/////////// main program ///////////////////////
int main(int argc, char* argv[])
{
	// create objects from several different types of classes
	Student s1("Joy Crabajales", 12);
	Student s2("Mary Anne So  ", 9);
	Student s3("Tommy  Nguyen ", 10);
	Student s4("Miguel Chavez ", 11);
	Teacher t1("Don McElroy ", 28, 3);
	Teacher t3("George Jones  ", 18, 2);
	Employee e1("James Mark ", 14);
	Employee e2("David Gomez ", 23);
	
	// Create an array of pointers to different people
	Person *List[] = { &e1, &e2,&t1, &t3,  &s2, &s1, &s3, &s4 };	
	int SizeOfList = sizeof(List)/sizeof(Person*);

	for (int i=0; i<SizeOfList; i++)
	{
		// call the appropriate virtual print routine based
		// on the type of object being pointed to
		List[i]->print();
	}
	return 0;
}
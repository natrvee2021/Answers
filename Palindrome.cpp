#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

bool palindrome(std::string str);
std::string reverseStr(std::string str);
int case_insensitive_match(std::string s1, std::string s2);

int main()
{
    std::string str;
	cout << "Please enter an input : ";
	getline(cin, str);
	bool b = palindrome(str);
	if (b)
		cout << "The given input is a palindrome";
	else
		cout << "The given input is not a palindrome";

	return 0;
}

// Function for Palindrome 
bool palindrome(std::string str)
{
	std::string str1, str2;
	str1 = str;

	str2 = reverseStr(str1);
	
	if (str1.compare(str2) == 0)
		return true;
	else if (case_insensitive_match(str1, str2)) 
		return true;
	else
	return false;
	
}

// Function to reverse a string 
std::string reverseStr(std::string str)
{
	int n = str.length();

	// Swap character starting from two 
	// corners 
	for (int i = 0; i < n / 2; i++)
		swap(str[i], str[n - i - 1]);
	return str;
}

//Function for case insensitive match of two strings 
int case_insensitive_match(std::string s1, std::string s2) {
	//convert s1 and s2 into lower case strings
	transform(s1.begin(), s1.end(), s1.begin(), ::tolower);
	transform(s2.begin(), s2.end(), s2.begin(), ::tolower);
	if (s1.compare(s2) == 0)
		return 1; //The strings are same
	return 0; //not matched
}

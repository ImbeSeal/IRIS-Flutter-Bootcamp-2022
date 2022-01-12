//Check whether the sum of prime elements of an array input by the user is prime or not 

import 'dart:core';
import 'dart:io';

// Funtion to check if a given number is Prime 

bool Prime(int n)
  {
    bool prime_check;
    int p=1;
    for ( int i=1; i<n; i++ )
      {
        if (n%i==0)
        p++;
        else
        continue;

      }
    if (p==2)
    prime_check=true;
    else
    prime_check=false;

    return prime_check;
  }

// Main function to input the Array and display the output

void main()
  {
    // creating array
    List<int> num = [];
    print('Enter the size of Array');
    int size = int.tryParse(stdin.readLineSync().toString()) ?? 0;

    int sum=0;

    //Getting input from user
    for( int i=0; i<size; i++ )
      {
        int id=i+1;
        print("Enter Number $id : ");
        num.add(int.tryParse(stdin.readLineSync().toString()) ?? 0);
        if (Prime(num[i])==true)
        sum+= num[i];
      }
    if(Prime(sum)==true)
    print('The sum of Prime Numbers in the array is $sum, Prime');
    else
    print('The sum of Prime Numbers in the array is $sum, Not Prime');
    
  }
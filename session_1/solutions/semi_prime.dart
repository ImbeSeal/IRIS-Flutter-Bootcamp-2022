//Check if a number input by user is semi prime or not;
//A semiprime is a natural number that is the product of exactly two prime numbers

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

// Funtion to check if a given number is Semi Prime 

bool Semi(int n)
  {
    int j2, sp=0;
    bool check_j1 , check_j2 , semi_prime;
    for ( int j1=2; j1<=n; j1++ )
    {
      if (n%j1==0)
      {
        j2= (n/j1).round();
        check_j1 = Prime(j1);
        check_j2 = Prime(j2);
        if ( (check_j1==true) && (check_j2==true) ) 
        sp++;        
      }
      
    }
    if (sp==0)
    semi_prime = false;
    else
    semi_prime = true;
    return semi_prime;
  }
void main()
  {
    bool semi_prime;
    print('Enter a Natural Number to check is a number is SemiPrime');
    int? n = int.parse(stdin.readLineSync()!);
    semi_prime = Semi(n);
    if ( semi_prime == true )
    print('The Number is Semi Prime');
    else 
    print('The Number is not Semi Prime');
  }
//A program to display the first N fibonacci numbers, N input from user
import 'dart:io';

void fib(int n)
  {
    int a1=0, a2=1, a3;
    print(0);
    print(1);
    for (int i=3; i<=n; i++)
      {
        a3=a1+a2;
        print(a3);
        a1=a2;
        a2=a3;
      }
  }

// main function to run the fib function
void main()
  {
    print('Enter the amount of fibonacci numbers you require :');
    // input statement for n
    int? n = int.parse(stdin.readLineSync()!);
    fib(n);
  }
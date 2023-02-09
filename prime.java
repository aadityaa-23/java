//prime number is a integer-number that is only / by 1 and number - itself.
//example: 2, 3, 5, 7, 11, 13, 17, 19
import java.io.*;
class prime
{
	public static void main(String pri[])
	{
		int a = 0,i = 0,flag = 0;
		DataInputStream in = new DataInputStream(System.in);
		try
		{
			if(pri.length == 0)
			{
				System.out.print("Enter value:");
				a = Integer.parseInt(in.readLine());
			}
			else
			{
				a = Integer.parseInt(pri[0]);
			}
		}catch(Exception e)
		{
				System.out.println("\u001B[31m"+e+"\u001B[0m");	
		}
		System.out.println("Method 1:");
		//0 and 1 is not a prime number
		if(a == 0 || a == 1)
		{
			 flag = 1;
		}
		//loop starts from 2 and goes until n/2
		for(i = 2; i <= a/2; i++)
		{
			//System.out.println("loop");
			if(a % i == 0)
			{
				flag = 1;
				break;
			}
		}
		if(flag == 0)
		{
			System.out.println(a+" is a prime number");
		}
		else
		{
			System.out.println(a+" is not a prime number");
		}
		System.out.println("Method 2:");
		primemtwo.primetwo(a);
		System.out.print("Prime numbers between 1 to "+a+": ");
		primenumbers.primenum(a);
		System.out.println("");
		System.out.print("Prime numbers 1 to "+a+": ");
		primeton.primetonum(a);
	}
}
class primemtwo
{
	public static void primetwo(int a)
	{
		int i = 0,count = 0;
		//count is variable which counts how many time a % n = 0 is done
		for(i = 1; i <= a; i++)
		{
			if(a % i == 0)
			{
				count++;
			}
		}
		//if count == 2 so that a is only get mod = 0 at /1 and /a
		if(count == 2)
		{
			System.out.println(a+" is a prime number");
		}
		else
		{
			System.out.println(a+" is not a prime number");
		}
		
	}
}
class primenumbers
{
	public static void primenum(int a)
	{
		int i = 0,j = 0,count = 0,temp = 2,flag = 0;
		//loop no:1 runs 1 to a
		for(i = 1; i <= a; i++)
		{
			count = 0;
			//loop no:2 checks loop no:1's variable i is prime or not
			for(j = 1; j <= i; j++)
			{
				if(i % j == 0)
				{
					count++;
				}
			}
			if(count==2)
			{
				System.out.print(i+" ");
			}
		}
	}
}
class primeton
{
	public static void primetonum(int a)
	{
		int j = 0,count = 0,temp = 2,flag = 0;
		while(count != a)
		{
			flag = 0;
			for(j = 2;j <= temp-1;j++)
			{
				//System.out.println(temp);
				if(temp % j == 0)
				{
					flag = 1;//in 3 round temp = 4 that's why 4 % 2 = 0 
					//so if executed and it sets flag = 1 so flag = 1 remains
					//to 1 that's whay count++ is not executed and loop goes to 
					//infinite and not reached to n.  
					break;
				}
			}
			if(flag == 0)
			{
				count++;
				System.out.print(temp+" ");
			}
			temp++;
		}
	}
}
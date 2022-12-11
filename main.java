import java.util.*;
class main
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		int num[] = new int[3];
		System.out.println("enter 3 numbers");
		for(int i = 0;i < 3; i++)
		{
			System.out.print("enter number "+(i+1)+": ");
			num[i] = sc.nextInt();
		}
		int max = num[0] > num[1] ? (num[0] > num[2] ? num[0] : num[2]) : (num[1] > num[2] ? num[1] : num[2]);
		System.out.print("maximum of three numbers: " + max);
	}
}
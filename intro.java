import java.util.*; 
import java.io.*; 
class intro
{ 
	public static void main(String args[])
	{ 
		File file = null; 
		try{ 
			FileInputStream file_in = new FileInputStream("flag.txt"); 
			int i; 
			while((i=file_in.read()) != -1) 
			{ 
				if(i==65)
				{
					break;
				}
			}
			if(i==65)
			{
				System.out.println("RUNNING");	
			}
			else
			{
				try
				{
					System.out.println("FIRST-TIME");
					FileOutputStream file_out = new FileOutputStream("flag.txt"); 
					String file_str = "A"; 
					byte bit[] = file_str.getBytes(); 
					file_out.write(bit); 
					file_out.close(); 
				}catch(Exception e){}
			}
			file_in.close();
		} 
		catch(Exception e)
		{ 
			try
			{
				file = new File("flag.txt"); 
				file.createNewFile();
				System.out.println("welcome");
				FileOutputStream file_out = new FileOutputStream("flag.txt"); 
				String file_str = "A"; 
				byte bit[] = file_str.getBytes(); 
				file_out.write(bit); 
				file_out.close();
			}
			catch(Exception E){}				
		} 
	}
}

FileStream fo = new FileStream("e:\\file3.txt", FileMode.OpenOrCreate);
StreamWriter sw = new StreamWriter(fo);
Console.WriteLine("Enter the string. null for termination");

while (true)
{
     String str=Console.ReadLine();
    if(string.IsNullOrEmpty(str))
    break;
    sw.WriteLine(str);
}
sw.Flush();
fo.Close();

FileStream fi = new FileStream("e:\\file3.txt", FileMode.OpenOrCreate);
StreamReader sr = new StreamReader(fi);
string str1;
Console.WriteLine("The contents of the file are:");
while ((str1 = sr.ReadLine()) != null)
{
   Console.WriteLine(str1);
 }
sr.Close();
fi.Close();
Console.ReadKey();

// Appending the content to the file
StreamWriter sw = File.AppendText("f:\\file3.txt");
Console.WriteLine("Enter the string. null for termination");

while (true)
{
     String str=Console.ReadLine();
    if(string.IsNullOrEmpty(str))
    break;
    sw.WriteLine(str);
}
sw.Flush();
fo.Close();

// Binary / Image file copy
 FileStream fi = new FileStream("e:\\bird.jpg", FileMode.OpenOrCreate);
 FileStream fo = new FileStream("e:\\MyDir1\\bird.jpg",        FileMode.OpenOrCreate);
 int i;
 while ((i = fi.ReadByte()) != -1)
 {
     fo.WriteByte((byte)i);
 }
 fi.Close();
 fo.Close();
 Console.ReadKey();

// Text file handling
 using(TextWriter tw = File.CreateText("e:\\file.txt"))
       {
           tw.WriteLine("C# File Handling");
           tw.WriteLine("TextReader Class and TextWriter Class");
        }
 using (TextReader tr = File.OpenText("e:\\file.txt"))
        {
                Console.WriteLine(tr.ReadToEnd());
        }
        Console.ReadKey();

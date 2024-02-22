class Program{

static void Main(string [] args)
{
Sandy sd=new Sandy();
Console.WriteLine("added value is : " + sd.add(52424543343,6));
Console.WriteLine("added value is : " + sd.mul(52424242,45245457272276,7));
Console.WriteLine("added value is : " + sd.add(5.5454242676727754224554224455224,6.1));
Console.WriteLine("Concatenated value is : " + sd.add("I Love","My Self"));
sd.demo1();
 
 constructordemo cd=new constructordemo();
 constructordemo cd1=new constructordemo(10,20);
 cd.demo();


}
}
class Sandy{
public int add(int a, int b){
    return a+b;
}



public long mul(long a, long b,long c){
    
    return a*b*c;
}


public double add(double a, double b){
    return a+b;
}


public string add(string a, string b){
    return a+b;
}

 public void demo1(){
        Console.WriteLine("normal Method in main class");

    }

}





class constructordemo{

    public void demo(){
        Console.WriteLine("normal Method in another class");

    }
    public constructordemo(){
        Console.WriteLine("Welcome to Constructor Demo in C#");
    }
    public constructordemo(int a, int b){
        Console.WriteLine("Welcome to Constructor Demo in C# with addition of two values through arguments" + (a+b));
    }



}





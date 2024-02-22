﻿class basheer
{
    public string location;   public string location;

    public basheer()
    {
        Console.WriteLine("Welcome to ")
    }
    
    public basheer()
    {
        Console.WriteLine("Welcome to basheer family");
    }
    public string partyname(string ppartyname)
    {
        
        return "I have two Wife " + ppartyname ;

    }


}

class mkstalin : basheer
{
     public mkstalin(string name)
     {
        location = "gopalapuram";
        Console.WriteLine(partyname(name) + " " + location);
     }
}


class mkazhagiri : basheer
{
     public mkazhagiri(string name)
     {
         location = "Madurai";
         Console.WriteLine(partyname(name) + " " + location);
     }
}

class family
{

    static void Main(string [] args)
    {
       // basheer kr=new basheer();
       mkstalin stalin=new mkstalin("in a");
       mkazhagiri azhagiri=new mkazhagiri("dmk");
        

    }
}

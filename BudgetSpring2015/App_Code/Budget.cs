using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Budget
/// </summary>
public class Budget
{
	public Budget()
	{

    }
		//
		// TODO: Add constructor logic here
		//

         //Declare Variables

        public string FirstName{ get; set; }
        public string LastName {get; set; }
        public double Income { get; set;} 
        public double Housing {get; set; } 
        public double Food {get; set; } 
        public double Clothing {get; set;} 
        public double Transportation {get; set;}  
        public double Fun {get; set; }
        public string TotalSavings { get; set;  }
}
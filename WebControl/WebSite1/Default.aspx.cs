<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (IsPostBack == false)
         {
        int i;
        for (i = 1; i <= 31; i++)
        
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (i = 1950; i <= 2050; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dob;
        dob = DropDownList2.Text + "/"+DropDownList1.Text +"/" +DropDownList3.Text;
            TextBox1.Text=dob;
            DateTime dt = DateTime.Parse(dob);
            TextBox2.Text = dt.DayOfWeek.ToString();
    }
=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (IsPostBack == false)
         {
        int i;
        for (i = 1; i <= 31; i++)
        
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (i = 1950; i <= 2050; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dob;
        dob = DropDownList2.Text + "/"+DropDownList1.Text +"/" +DropDownList3.Text;
            TextBox1.Text=dob;
            DateTime dt = DateTime.Parse(dob);
            TextBox2.Text = dt.DayOfWeek.ToString();
    }
>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5
}
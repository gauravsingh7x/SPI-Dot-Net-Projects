using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class next : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
       
    protected void Button1_Click(object sender, EventArgs e)
    {
        string order = "";
        if (CheckBox1.Checked == true)
            order = order + CheckBox1.Text + "\n";
        if (CheckBox2.Checked == true)
            order = order + CheckBox2.Text + "\n";
        if (CheckBox3.Checked == true)
            order = order + CheckBox3.Text + "\n";
        if (CheckBox4.Checked == true)
            order = order + CheckBox4.Text + "\n";
        TextBox1.Text = order;
    }
}
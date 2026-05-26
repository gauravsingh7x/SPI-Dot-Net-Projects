using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int n, i;
        string tab = "";
        n = int.Parse(TextBox1.Text);
        for (i = 1; i <= 10; i++)
        {
            tab = tab + n + "*" + i + "=" + (n * i) + "\n";
        }
        TextBox2.Text = tab;
    }
}
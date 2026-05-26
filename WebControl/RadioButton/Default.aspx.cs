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
    protected void btn_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (rbtnmale.Checked == true)
        {
            gender = rbtnmale.Text;
            RbtnGreen.Checked = true;
            rbtnmale.Checked = false;
            RbtnRed.Checked = false;
        }
        else if (rbtnfemale.Checked == true)
        {
            gender = rbtnfemale.Text;
            RbtnGreen.Checked = true;
            rbtnfemale.Checked = false;
            RbtnRed.Checked = false;
        }
        // Response.Write("Select Gender :" + gender);
        // Response.Write("<script>alert('" + gender + "');</script>");
        LblMsg.Text = "Gender : " + gender;

    }
}
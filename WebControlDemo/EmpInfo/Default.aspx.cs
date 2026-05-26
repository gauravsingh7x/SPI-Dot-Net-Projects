using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-ND21GSL;Initial Catalog=empinfo;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
   try
    {
       string gender="";
       if(Rbtnmale.Checked==true)
           gender="Male";
       else if(Rbtnfemale.Checked==true)
       gender="Female";

       string q="";
       string filename=fu_Profile.FileName;
       string path = Path.Combine(Server.MapPath("~/upload/"+filename));
       fu_Profile.SaveAs(path);
       string q ="inserty into tbl_empinfo(name,gendre,mobile,email,salary,profile,regdate)values('"+Txtname.Text+"','"+gender+"','"+TxtMobile.Text+"','"+TxtEmail.Text+"','"+Txtsalary.Text+"','"+fu_Profile+"','"+DateTime.Now.ToString("dd/MM/yyyy")+"')";
    
     SqlCommand sqlcmd = new SqlCommand (q,con);
     if (con.State == ConnectionState.Closed)
         con.Open();
       int n =sqlcmd.ExecuteNonQuery();
       if(n<0)
           msg.Text="Registration success";
       else
           msg.Text="Registration in not success";
         }
        catch(Exception ex)
         {
        
        }
    }
}
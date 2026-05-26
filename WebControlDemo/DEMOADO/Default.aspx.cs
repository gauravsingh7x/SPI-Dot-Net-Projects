<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        string name = "", gender = "", mobileno = "", address = "";
        if (Rbtn_Male.Checked == true)
        {
            gender = Rbtn_Female.Text;
        }
        name = Txt_Mobile.Text;
        mobileno = Txt_Mobile.Text;
        address = Txt_Address.Text;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND21GSL;Initial Catalog=demodb;Integrated Security=True");
        if (ConnectionState.Closed == con.State)
        {
            con.Open();
        }
        string cmd = "insert into tbl_reg values('" + name + "','" + gender + "','" + mobileno + "',''" + address + ")";
        SqlCommand sqlcmd = new SqlCommand(cmd, con); //insert ,updateand delete
        int n = sqlcmd.ExecuteNonQuery();
        if (n < 0)
        {
            Response.Write("Record successfully submitted");
        }
        else
        {
            Response.Write("Record is not submited");
        }
        con.Close();
    }

=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Click(object sender, EventArgs e)
    {
        string name = "", gender = "", mobileno = "", address = "";
        if (Rbtn_Male.Checked == true)
        {
            gender = Rbtn_Female.Text;
        }
        name = Txt_Mobile.Text;
        mobileno = Txt_Mobile.Text;
        address = Txt_Address.Text;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ND21GSL;Initial Catalog=demodb;Integrated Security=True");
        if (ConnectionState.Closed == con.State)
        {
            con.Open();
        }
        string cmd = "insert into tbl_reg values('" + name + "','" + gender + "','" + mobileno + "',''" + address + ")";
        SqlCommand sqlcmd = new SqlCommand(cmd, con); //insert ,updateand delete
        int n = sqlcmd.ExecuteNonQuery();
        if (n < 0)
        {
            Response.Write("Record successfully submitted");
        }
        else
        {
            Response.Write("Record is not submited");
        }
        con.Close();
    }

>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5
}
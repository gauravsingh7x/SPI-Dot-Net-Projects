using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class edit : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["empid"] != null)
            {
                if (con.State ==ConnectionState.Closed)
                {
                    con.Open();
                }
                string id=Request.QueryString["empid"].ToString();
                string query = "select* from tbl employee where empid='"+id+"'";
                SqlDataAdapter sqldata = new SqlDataAdapter(query,con);
                DataTable dt= new DataTable();
                sqldata.Fill(dt);
                if(dt !=null);
                {
                if(dt.Rows.Count>0)
                {
                hid.Value=id;
                    Txt_Empname.Text=dt.Rows[0]["name"]+"";
                    if(dt.Rows[0]["gender"] +""=="Male")
                    {
                    Rbtn_Male.Checked= true;
                    
                    }
                    else if(dt.Rows[0]["gender"]+""=="female")
                    {
                    Rbtn_Female.Checked= true;
                    }
                    Txt_mobileno.Text=dt.Rows[0]["mobileno"]+"";
                    Txt_Email.Text=dt.Rows[0]["email"]+"";
                    DDLDepartment.Items.FindByText(dt.Rows[0]["department"]+"").Selected= true;
                    Txt_Address.Text = dt.Rows[0]["adress"] + "";




                }
                }
            }
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
            string gender = (Rbtn_Male.Checked == true) ? "male" : (Rbtn_Female.Checked == true) ? "Female" : "";
            string qurey = "update tbl_Employee set name=" + Txt_Empname.Text + "',gender=" + gender + "',moblieno='" + Txt_mobileno + "',email='" + Txt_Email + "',department='" + DDLDepartment.SelectedItem.Text + "',Txt_salary='" + Txt_Salary.Text + "',where empid='" + hid.Value + "'";
            SqlCommand sqlcmd = new SqlCommand(qurey, con);
            sqlcmd.ExecuteNonQuery();
            Response.Redirect("~/customgid.aspx");

        }
    }
}
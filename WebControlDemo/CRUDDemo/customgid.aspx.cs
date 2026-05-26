using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;

public partial class customgid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["empid"] != null)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string query = "delete from Tbl_Employee where empid='" + Request.QueryString["empid"] + "'";
            SqlCommand sqlcmd = new SqlCommand(query, con);
            int n=sqlcmd.ExecuteNonQuery();
            con.Close();
        }

        Getrecond();
    }
    void Getrecond()
    {
        try
        {
        if(con.State ==ConnectionState.Closed)
            {
                con.Open();
            }
        string query = "select * from Tbl_Employee";
        SqlDataAdapter sqldata = new SqlDataAdapter(query, con);//select record
        DataTable dt = new DataTable();
        sqldata.Fill(dt);
        con.Close();
        StringBuilder sb = new StringBuilder();
        if (dt != null)
        { 
        if(dt.Rows.Count > 0)
        {
            sb.Append("<table border='1' width='95%'>");
            sb.Append("<tr><th>S.No</th>");
            sb.Append("<th>name</th>");
            sb.Append("<th>Gender</th>");
            sb.Append("<th>Moblie no</th>");
            sb.Append("<th>E-mail</th>");
            sb.Append("<th>Address</th>");
            sb.Append("<th>Department</th>");
            sb.Append("<th>Salary</th>");
            sb.Append("<th>REg.</th>");
            sb.Append("<th>Profile Pic.</th>");
            sb.Append("<th>Edit</th>");
            sb.Append("<th>Delete</th>");

            sb.Append("</tr>");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sb.Append("<tr>");
                sb.Append("<td>" + dt.Rows[i]["empid"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["name"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["gender"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["mobileno"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["email"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["address"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["department"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["salary"] + "</td>");
                sb.Append("<td>" + dt.Rows[i]["regdate"] + "</td>");
                sb.Append("<td><img src='upload/" + dt.Rows[i]["filename"] + "' height='50px' width='50px'/ ></td>");
                sb.Append("<td><a href='edit.aspx?empid="+dt.Rows[i]["empid"]+"'>Edit</a></td>");
                sb.Append("<td><a href='#' onclick='del(this)'>Delete</a><span style='display:none;'>" + dt.Rows[i]["empid"] + "</span></td>");
                sb.Append("</tr>");
            }
                sb.Append("</table>");
                DataView.Text = sb+"";
            }
           
        }
        }
        catch { }
    }
}

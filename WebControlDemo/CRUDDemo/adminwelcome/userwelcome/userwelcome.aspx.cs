using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminwelcome_userwelcome_userwelcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
           {
            Response.Redirect("~../default.aspx");
           }
           else
           { 
            Lbl_Userid.Text=Session["userid"]+"";
            Lbl_Username.Text=Session["username"]+"";
            }

        }
    }
}
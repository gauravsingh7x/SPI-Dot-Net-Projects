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
    protected void btn_click(object sender, EventArgs e)
    {
       // string filename = Fu_File.FileName;
       // string path=Server.MapPath("~/UPload/"+filename);
       // Fu_File.SaveAs(path);
        if (Fu_File.HasFile == true)
        {
            Fu_File.SaveAs(Server.MapPath("~/Upload/" + Fu_File.FileName));
            Response.Write("File Succesfully Upload");
        }
        else
        {
            Response.Write("File is not uploaded");
        }
    }
}
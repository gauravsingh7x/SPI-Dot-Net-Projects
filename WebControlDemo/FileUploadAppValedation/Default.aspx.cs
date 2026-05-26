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
        if (Fu_pic.HasFile == true)
        {
            string filename = Fu_pic.FileName;
            int lastindex = filename.LastIndexOf('.');
            int len = filename.Length - 1;
            string ext = filename.Substring(lastindex,(len-lastindex)+1).ToLower();
            if (ext == ".png" || ext == ".jpg" || ext == ".jpeg" || ext == ".bmp")
            {
                Fu_pic.SaveAs(Server.MapPath("~/upload/" + filename));
                Imgpic.ImageUrl = "../upload/" + filename;
                Response.Write("File successfully upload");
                LblDownload.Text="<a target='_blank' href='../upload/" + filename + "'>Download</a>";

            }
        }
        else
        {
            Response.Write("File is Invalid");
        }
    }
}
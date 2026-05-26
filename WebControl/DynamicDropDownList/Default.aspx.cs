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
        if (!IsPostBack)
        {
            string[] cities = { "Lucknow", "Kanpur", "Sitapur", "Barabanki" };
            //DDLCity.Items.Add(new ListItem("Select city", ""));
            foreach (string city in cities)
            {
               DDLCity.Items.Add(new ListItem(city, city));
            }
            DDLCity.Items.Insert(0, new ListItem("----Select City---", ""));
        }
    }
}
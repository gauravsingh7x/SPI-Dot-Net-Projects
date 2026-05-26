<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DDLCity.Items.FindByText("1002").Selected = true;
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        string res = "";
        res=DDLCity.SelectedItem.Text;
        res = res + "<br>" + DDLCity.SelectedItem.Value;
        Lblmgs.Text = res;
    }
=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DDLCity.Items.FindByText("1002").Selected = true;
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        string res = "";
        res=DDLCity.SelectedItem.Text;
        res = res + "<br>" + DDLCity.SelectedItem.Value;
        Lblmgs.Text = res;
    }
>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5
}
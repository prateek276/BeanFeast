using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanFeast
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.PreviousPage != null)
            {
                int rowIndex = int.Parse(Request.QueryString["RowIndex"]);
                GridView GridView1 = (GridView)this.Page.PreviousPage.FindControl("GridView1");
                GridViewRow row = GridView1.Rows[rowIndex];
                clubnameLbl.Text = (row.FindControl("clubnameLbl") as Label).Text;
                placeLbl.Text = (row.FindControl("placeLbl") as Label).Text;
                rateLbl.Text = (row.FindControl("rateLbl") as Label).Text;
            }
            else
                Response.Redirect("Home.aspx");
        }
    }
}
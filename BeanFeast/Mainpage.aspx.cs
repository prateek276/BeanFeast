using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanFeast
{
    public partial class Mainpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BeanFeastDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["New"] != null)
            {
                welcomeLbl.Text = Session["New"].ToString();
            }
            else
                Response.Redirect("Home.aspx");

            SqlDataSourceClubData.SelectCommand = "SELECT Id, Image,ClubName,Place,Rate FROM ClubData";
            SqlDataSourceClubData.DataBind();
            GridView1.DataSource = SqlDataSourceClubData;
            GridView1.DataBind();
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            string str = "select * from ClubData where(ClubName like '%' + @search + '%')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.Add("@search", SqlDbType.VarChar).Value = searchTxt.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "ClubName");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void optionDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect(optionDDList.SelectedValue);
        }

    }
}
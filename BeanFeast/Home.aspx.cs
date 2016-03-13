using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BeanFeast
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtb_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BeanFeastDBConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from [UserData] where username='" + usernameTxt.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkpasswordquery = "select password from [UserData] where username='" + usernameTxt.Text + "'";
                SqlCommand passcon = new SqlCommand(checkpasswordquery,con);
                string password = passcon.ExecuteScalar().ToString();
                if(password==passwordTxt.Text)
                {
                    Session["New"]=usernameTxt.Text;
                    Label1.Text = "login successfull";
                    Response.Redirect("Mainpage.aspx");
                }
                else
                {
                    Label1.Text = "incorrect  password";
                }
            }
                else
                {
                    Label1.Text="username incorrect";
                }
                
                
             
            }
            
            //string path = Server.MapPath("App_Data\\Register.mdf");
            //string connStr = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True";
            //SqlConnection con = new SqlConnection(connStr);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("Select * from Register where username='" + usernameTxt.Text + "' and pwd ='" + passwordTxt.Text + "'", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{
            //    Label1.Text = "success";
            //}
            //else
            //{
            //    Label1.Text = "login failed";
            //}
        
    }
}
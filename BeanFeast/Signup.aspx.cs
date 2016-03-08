using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanFeast
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BeanFeastDBConnectionString"].ConnectionString);
                con.Open();
                string checkuser = "select count(*) from [UserData] where username='" + usernameTxt.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exist");
                }
                con.Close();
            }
        }

        protected void createBtn_Click(object sender, EventArgs e)
        {
            string gen = "";
            if (stateList.SelectedValue == "Select state")
            {
                stateLbl.Text = "Please select a state";
            }

            if (maleRbtn.Checked == true)
            {
                gen = "male";

            }
            else if (femaleRbtn.Checked == true)

                gen = "female";

            else
            {
                genderLbl.Text = "please select a gender";
                return;
            }
            try
            {
                Guid newGUID = Guid.NewGuid();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BeanFeastDBConnectionString"].ConnectionString);
                con.Open();
                string insertquery = "INSERT INTO [UserData] ([Id],[name],[email],[phone],[state],[gender],[username],[password]) VALUES (@ID,@Name,@Email,@Phone,@State,@Gender,@UserName,@Password)";
                SqlCommand cmd = new SqlCommand(insertquery, con);

                cmd.Parameters.AddWithValue("@ID", newGUID.ToString());
                cmd.Parameters.AddWithValue("@Name", nameTxt.Text);
                cmd.Parameters.AddWithValue("@Email", emailTxt.Text);
                cmd.Parameters.AddWithValue("@Phone", phoneTxt.Text);
                cmd.Parameters.AddWithValue("@State", stateList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Gender", gen);
                cmd.Parameters.AddWithValue("@UserName", usernameTxt.Text);
                cmd.Parameters.AddWithValue("@Password", passwordTxt.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Successfully created");
                Response.Redirect("Home.aspx");

                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        //protected void Create_click(object sender, EventArgs e)
        //{
        //    string gen = "";
        //    if (stateList.SelectedValue == "select state")
        //    {
        //        stateLbl.Text = "please select a state";
        //    }

        //    if (maleRbtn.Checked == true)
        //    {
        //        gen = "male";

        //    }
        //    else if (femaleRbtn.Checked = true)
            
        //        gen = "female";
            
        //    else
        //    {
        //        genderLbl.Text = "please select a gender";
        //        return;
        //    }
        //    try
        //    {
        //        string name = nameTxt.Text;
        //        string email = emailTxt.Text;
        //        string phone = phoneTxt.Text;
        //        string state = stateList.SelectedValue.ToString();
        //        string gender = gen;
        //        string username = usernameTxt.Text;
        //        string password = passwordTxt.Text;

        //        string path = Server.MapPath("App_Data\\Register.mdf");
        //        string connstr = "Data Source=(LocalDB)\v11.0;AttachDbFilename=" + path + ";Integrated Security=True";
        //        SqlConnection con = new SqlConnection(connstr);
        //        SqlCommand cmd = new SqlCommand();
        //        cmd.Connection = con;
        //        cmd.CommandText = "insert into UserData values('" + name + "','" + email + "','" + phone + "','" + state + "','" + gen + "','" + username + "','" + password + "')";
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        dataLbl.Text = "successfully created";
        //    }
        //    catch (Exception ex)
        //    {
        //        dataLbl.Text = "exception occured"+ex;
        //    }
        //}
    }
}
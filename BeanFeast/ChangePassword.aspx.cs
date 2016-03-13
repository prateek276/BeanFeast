using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanFeast
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangePassword1_ChangingPassword(object sender, LoginCancelEventArgs e)
        {
            if (!ChangePassword1.CurrentPassword.Equals(ChangePassword1.NewPassword, StringComparison.CurrentCultureIgnoreCase))
            {
                int rowsAffected = 0;
                string query = "UPDATE [UserData] SET [password] = @NewPassword WHERE [username] = @username AND [password] = @CurrentPassword";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BeanFeastDBConnectionString"].ConnectionString);
                
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Parameters.AddWithValue("@username", this.Page.User.Identity.Name).Value = usernameTxt.Text;
                            cmd.Parameters.AddWithValue("@CurrentPassword", ChangePassword1.CurrentPassword);
                            cmd.Parameters.AddWithValue("@NewPassword", ChangePassword1.NewPassword);
                            cmd.Connection = con;
                            con.Open();
                            rowsAffected = cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                    if (rowsAffected > 0)
                    {
                        changepasswordLbl.ForeColor = Color.Green;
                        changepasswordLbl.Text = "Password has been changed successfully.";
                    }
                    else
                    {
                        changepasswordLbl.ForeColor = Color.Red;
                        changepasswordLbl.Text = "Password or Username does not match with our database records.";
                    }
                }
            
            else
            {
                changepasswordLbl.ForeColor = Color.Red;
                changepasswordLbl.Text = "Old Password and New Password must not be equal.";
            }

            e.Cancel = true;
        }
    }
}
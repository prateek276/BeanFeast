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
    public partial class AddToMainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
               SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BeanFeastDBConnectionString"].ConnectionString);
    if (clubimageUpload.HasFile)   
    {
        string strname = clubimageUpload.FileName;  
        clubimageUpload.PostedFile.SaveAs(Server.MapPath(".")+"//ClubImages//" + strname);
        string path = "~//ClubImages//" + strname.ToString();
        con.Open();
         SqlCommand cmd = new SqlCommand("insert into ClubData values('" + path + "','"+clubnameTxt.Text+"','" + placeTxt.Text + "','"+rateTxt.Text+"')", con);
         
        cmd.ExecuteNonQuery();  
        con.Close();  
        
        addtomainpageLbl.Text = "Data Uploaded successfully";  
        clubnameTxt.Text = "";  
       placeTxt.Text = "";
       rateTxt.Text = "";

       SqlDataAdapter da = new SqlDataAdapter("select * from ClubData", con);
       DataTable dt = new DataTable();
       da.Fill(dt);
       DataBind();
    }   
    else   
    {  
      
        addtomainpageLbl.Text = "Plz upload the image!!!!";  
    }  
}
        }
    }

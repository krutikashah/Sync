using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }






    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str;
        //string str1;
        string a;
        //a = CreateUserWizard1.UserName;
        str = "insert into profileinfo(userid,password)values('" + CreateUserWizard1.UserName + "','" + CreateUserWizard1.Password + "')";
      //  str1 = "insert into basicinfo(userid,password)values('" + CreateUserWizard1.UserName + "','"+CreateUserWizard1.Password+"')";

        SqlCommand cmd = new SqlCommand(str, con);
        //SqlCommand cmd1 = new SqlCommand(str1, con);

        con.Open();

        cmd.ExecuteNonQuery();
       // cmd1.ExecuteNonQuery();
        //Response.Redirect("login.aspx");
    }
}


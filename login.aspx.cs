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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Session["userid"] = Login1.UserName;
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        string str;
        str = "select count(*) from profileinfo where userid='" + Login1.UserName + "' and password='" + Login1.Password + "'  ";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();

        Int32 intResult;
        intResult = (Int32)cmd.ExecuteScalar();

        if (intResult == 1)
        {

            //Session["UserName"] = txtusername.Text;
            //result.Text = "login successfull";
            Response.Redirect("account.aspx");
        }
        //else
        //{
          //  result.Text = "Error";
        //}
    }
}

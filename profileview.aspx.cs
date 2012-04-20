using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;
using System.Text;

public partial class profileview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //string friendid = Request.QueryString["frienduserid"];
        //Label1.Text = Request.QueryString["frienduserid"];
        Session["friendid"] = Request.QueryString["frienduserid"];
        Label1.Text = (string)Session["friendid"];
        Label2.Text = (string)Session["friendid"];
        /*GridView3.DataSource = FetchFriendID();
        
        GridView3.DataBind();
        Session["friendid"] = GridView3.Rows[0].Cells[0].Text;*/
    }
    /*public DataTable FetchFriendID()
    {

        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {
            string friendid=profileview.aspx?frienduserid={0};
            string str;
            str = "select userid from profileinfo where userid =friendid ";

            SqlDataAdapter da = new SqlDataAdapter(str, con);
            con.Open();
            DataTable dt = new DataTable();

            da.Fill(dt);

            return dt;


        }*/
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("profileview.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("messages.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("friend.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
}



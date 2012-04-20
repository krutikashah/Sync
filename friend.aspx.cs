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

public partial class friend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["friendid"];
        GridView1.DataSource = FetchAllFriends();

        GridView1.DataBind();

    }

    public DataTable FetchAllFriends()
    {
        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select frienduserid,friendf,friendl from friend1 where userid = '" + Session["friendid"] + "'";

            SqlDataAdapter da = new SqlDataAdapter(str, con);
            con.Open();
            DataTable dt = new DataTable();

            da.Fill(dt);

            /*if (da.Fill(dt) > 0)
            {
               Label1.Text = "search successful";
            }
            else
            {
                Label1.Text="No such friend found";
            }

            //   Bitmap output = new  Bitmap(dt, new  Size(320, 240));
           */
            con.Close();
            return dt;

        }
    }
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


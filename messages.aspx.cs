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

public partial class scrapbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["friendid"];
        //Session["messageid"] = Request.QueryString["fromuserid"];
        GridView1.DataSource = FetchMessages();

        GridView1.DataBind();
    }
    public DataTable FetchMessages()
    {
        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            //str = "select fromuserid,msg from message where touserid = '" + Session["userid"] + "'";
            str = "select fromuserid,msg from message where touserid = '" + Session["friendid"] + "'";
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
    protected void btnCancelscrap_Click(object sender, EventArgs e)
    {
        txtpostscrap.Text = "";
    }
    protected void btnPostscrap_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            
                str = "insert into message(touserid,msg,fromuserid)values(@touserid,@msg,@fromuserid)";

                con.Open();
                string u_name = (string)Session["userid"];
                string f_id = (string)Session["friendid"];
                //string last1 = (string)Session["lastname"];
                //string user = GridView1.Rows[i].Cells[0].Text;
                //string first = GridView1.Rows[i].Cells[1].Text;
                //string last = GridView1.Rows[i].Cells[2].Text;
                //string sqlq = "INSERT INTO friend1(userid,friendf,friendl) VALUES (@userid,@friendf,@friendl)";
                //string sqlq = "INSERT INTO pendingfriend(fromuserid,touserid,tof,tol,fromf,froml) VALUES (@fromuserid,@touserid,@tof,@tol,@fromf,@froml)";
                SqlCommand cmd = new SqlCommand(str, con);

                cmd.Parameters.AddWithValue("@touserid", f_id);
                cmd.Parameters.AddWithValue("@msg", txtpostscrap.Text);
                cmd.Parameters.AddWithValue("@fromuserid", u_name);
                //cmd.Parameters.AddWithValue("@touserid", reply);
                cmd.ExecuteNonQuery();
               con.Close();
            Response.Redirect("messages.aspx");

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

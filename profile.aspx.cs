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

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["userid"];
        if (!IsPostBack)
        {
            GridView1.DataSource = FetchAllPendingFriends();

            GridView1.DataBind();
        }

        GridView2.DataSource = FetchOwnInfo();

        GridView2.DataBind();

    }
    public DataTable FetchOwnInfo()
    {

        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select tof,tol from pendingfriend where touserid = '" + Session["userid"] + "'";

            SqlDataAdapter daa = new SqlDataAdapter(str, con);
            con.Open();
            DataTable dtt = new DataTable();

            daa.Fill(dtt);

            /*if (da.Fill(dt) > 0)
            {
                Label1.Text = "search successful";
            }
            else
            {
                Label1.Text = "No such friend found";
            }

            //   Bitmap output = new  Bitmap(dt, new  Size(320, 240));*/


            return dtt;

        }
    }
    public DataTable FetchAllPendingFriends()
    {

        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select fromuserid,fromf,froml from pendingfriend where touserid = '" + Session["userid"] +"'";

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
                Label1.Text = "No such friend found";
            }

            //   Bitmap output = new  Bitmap(dt, new  Size(320, 240));*/


            return dt;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        StringBuilder str = new StringBuilder();
        string first1 = GridView2.Rows[0].Cells[0].Text;
        string last1 = GridView2.Rows[0].Cells[1].Text;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            GridViewRow row = GridView1.Rows[i];

            bool isChecked = ((CheckBox)row.FindControl("CheckBox2")).Checked;

            if (isChecked)
            {
                conn.Open();
                string frienduserid;
                string u_name = (string)Session["userid"];
                string user = GridView1.Rows[i].Cells[0].Text;
                string first = GridView1.Rows[i].Cells[1].Text;
                string last = GridView1.Rows[i].Cells[2].Text;
                string sqlq = "INSERT INTO friend1(userid,friendf,friendl,frienduserid) VALUES (@userid,@friendf,@friendl,@frienduserid)";
                //string sqlq = "INSERT INTO pendingfriend(fromuserid,touserid) VALUES (@fromuserid,@touserid)";
                SqlCommand cmd = new SqlCommand(sqlq, conn);
                //cmd.Parameters.AddWithValue("@fromuserid", u_name);
                //cmd.Parameters.AddWithValue("@touserid", user);
                //cmd.Parameters.AddWithValue("@userid", u_name);
                //cmd.Parameters.AddWithValue("@friendf", first);

                cmd.Parameters.AddWithValue("@userid", u_name);
                cmd.Parameters.AddWithValue("@friendf", first);
                cmd.Parameters.AddWithValue("@friendl", last);
                cmd.Parameters.AddWithValue("@frienduserid",user);
                cmd.ExecuteNonQuery();
                string str1 = "INSERT INTO friend1(userid,friendf,friendl,frienduserid) VALUES (@userid,@friendf,@friendl,@frienduserid)";
                
                SqlCommand cmd1 = new SqlCommand(str1, conn);
                cmd1.Parameters.AddWithValue("@userid", user);
                cmd1.Parameters.AddWithValue("@friendf",first1);
                cmd1.Parameters.AddWithValue("@friendl",last1);
                cmd1.Parameters.AddWithValue("@frienduserid",u_name);
                //Label1.Text = "Friend request has been sent.";
                cmd1.ExecuteNonQuery();

                string str2 = "DELETE FROM pendingfriend WHERE touserid= '" + Session["userid"] + "'and fromuserid='"+user+"'";
                SqlCommand cmd2 = new SqlCommand(str2, conn);
                cmd2.ExecuteNonQuery();
                    conn.Close();

                //str.Append(GridView1.Rows[i].Cells[0].Text);
                    Response.Redirect("profile.aspx");
            }

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        StringBuilder str = new StringBuilder();
        string first1 = GridView2.Rows[0].Cells[0].Text;
        string last1 = GridView2.Rows[0].Cells[1].Text;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            GridViewRow row = GridView1.Rows[i];

            bool isChecked = ((CheckBox)row.FindControl("CheckBox2")).Checked;

            if (isChecked)
            {
                conn.Open();
                string user = GridView1.Rows[i].Cells[0].Text;

                string str2 = "DELETE FROM pendingfriend WHERE touserid= '" + Session["userid"] + "'and fromuserid='" + user + "'";
                SqlCommand cmd2 = new SqlCommand(str2, conn);
                cmd2.ExecuteNonQuery();
                conn.Close();

                //str.Append(GridView1.Rows[i].Cells[0].Text);
                Response.Redirect("profile.aspx");
            }

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
}
    
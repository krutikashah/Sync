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

public partial class viewfriend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        {
            GridView1.DataSource = FetchAllFriends();

            GridView1.DataBind();
        }
        
    }

    public DataTable FetchAllFriends()
    {
       using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select frienduserid,friendf,friendl from friend1 where userid = '" + Session["userid"] + "'";

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


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            StringBuilder str = new StringBuilder();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                GridViewRow row = GridView1.Rows[i];

                bool isChecked = ((CheckBox)row.FindControl("CheckBox1")).Checked;

                if (isChecked)
                {
                    conn.Open();

                    string fromid = GridView1.Rows[i].Cells[0].Text;
                    string first = GridView1.Rows[i].Cells[1].Text;
                    string last = GridView1.Rows[i].Cells[2].Text;
                    //string last = GridView1.Rows[i].Cells[2].Text;
                    string sqlq = "DELETE FROM friend1 WHERE frienduserid= '" + fromid + "'and userid='" + Session["userid"] + "'";
                    //string sqlq = "INSERT INTO pendingfriend(fromuserid,touserid,tof,tol,fromf,froml) VALUES (@fromuserid,@touserid,@tof,@tol,@fromf,@froml)";
                    SqlCommand cmd = new SqlCommand(sqlq, conn);
                    cmd.ExecuteNonQuery();
                    string sqlq1 = "DELETE FROM friend1 WHERE userid= '" + fromid + "'and frienduserid='" + Session["userid"] + "'";
                    SqlCommand cmd1 = new SqlCommand(sqlq1, conn);

                    cmd1.ExecuteNonQuery();

                    conn.Close();
                    Response.Redirect("viewfriend.aspx");

                    //str.Append(GridView1.Rows[i].Cells[0].Text);

                }

            }
        }
    }
}


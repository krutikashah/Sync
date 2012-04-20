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
public partial class viewmessages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["userid"];


        if (!IsPostBack)
        {
            GridView1.DataSource = FetchMessages();

            GridView1.DataBind();
        }

    }
    public DataTable FetchMessages()
    {
        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select fromuserid,msg from message where touserid = '" + Session["userid"] + "'";
            //str = "select fromuserid,msg from message where touserid = '" + Session["friendid"] + "'";
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


    protected void Button1_Click(object sender, EventArgs e)
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
                    //string u_name = (string)Session["userid"];
                    //string first1 = (string)Session["firstname"];
                    //string last1 = (string)Session["lastname"];
                    string fromid = GridView1.Rows[i].Cells[0].Text;
                    string messg = GridView1.Rows[i].Cells[1].Text;
                    //string last = GridView1.Rows[i].Cells[2].Text;
                    string sqlq = "DELETE FROM message WHERE fromuserid= '" +fromid + "'and msg='" + messg + "'";
                    //string sqlq = "INSERT INTO pendingfriend(fromuserid,touserid,tof,tol,fromf,froml) VALUES (@fromuserid,@touserid,@tof,@tol,@fromf,@froml)";
                    SqlCommand cmd = new SqlCommand(sqlq, conn);
                    

                    
                    cmd.ExecuteNonQuery();
                    
                    conn.Close();
                    Response.Redirect("viewmessages.aspx");

                    //str.Append(GridView1.Rows[i].Cells[0].Text);

                }

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


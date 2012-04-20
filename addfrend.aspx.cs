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
public partial class addfrend : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {Label2.Text=(string)Session["userid"];
        GridView3.DataSource = Fetch2Info();

        GridView3.DataBind();
        Session["firstname"] = GridView3.Rows[0].Cells[0].Text;
        Session["lastname"] = GridView3.Rows[0].Cells[1].Text;

        //Session["firstname"] = TextBox1.Text;
        //Session["lastname"] = TextBox2.Text;
    }
    /*protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
        CheckBox checkbox = (CheckBox)sender;
        GridViewRow row = (GridViewRow)checkbox.NamingContainer;
        //Response.Write(row.Cells[0].Text);
        Label1.Text = row.Cells[0].Text;
    }*/
    protected void searchbtn_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = FetchAllImagesInfo();

        GridView1.DataBind();


    }
    public DataTable Fetch2Info()
    {

        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select firstname,lastname from profileinfo where userid = '" + Session["userid"] + "'";

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

            //   Bitmap output = new  Bitmap(dt, new  Size(320, 240));
            */

            return dt;
            

        }
    }



    public DataTable FetchAllImagesInfo()
    {

        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            string str;
            str = "select userid,firstname,lastname,img_data from profileinfo where firstname = '" + txtsearch.Text + "'";

            SqlDataAdapter da = new SqlDataAdapter(str,con);
            con.Open();
            DataTable dt = new DataTable();

            //da.Fill(dt);

            if (da.Fill(dt) > 0)
            {
                Label1.Text = "search successful";
            }
            else
            {
                Label1.Text = "No such friend found";
            }

            //   Bitmap output = new  Bitmap(dt, new  Size(320, 240));


            return dt;

        }
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
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
    string u_name = (string)Session["userid"];
    string first1=(string)Session["firstname"];
    string last1=(string)Session["lastname"];
    string user = GridView1.Rows[i].Cells[0].Text;
    string first = GridView1.Rows[i].Cells[1].Text;
    string last = GridView1.Rows[i].Cells[2].Text;
    //string sqlq = "INSERT INTO friend1(userid,friendf,friendl) VALUES (@userid,@friendf,@friendl)";
    string sqlq = "INSERT INTO pendingfriend(fromuserid,touserid,tof,tol,fromf,froml) VALUES (@fromuserid,@touserid,@tof,@tol,@fromf,@froml)";
    SqlCommand cmd = new SqlCommand(sqlq, conn);
    cmd.Parameters.AddWithValue("@fromuserid", u_name);
    cmd.Parameters.AddWithValue("@touserid", user);
    cmd.Parameters.AddWithValue("@tof", first);
    cmd.Parameters.AddWithValue("@tol", last);
    cmd.Parameters.AddWithValue("@fromf",first1 );
    cmd.Parameters.AddWithValue("@froml",last1 );
    
    //cmd.Parameters.AddWithValue("@userid", u_name);
    //cmd.Parameters.AddWithValue("@friendf", first);
    //cmd.Parameters.AddWithValue("@friendl", last);
    cmd.ExecuteNonQuery();
    Label1.Text = "Friend request has been sent.";
    Response.Redirect("addfrend.aspx");
    conn.Close();
    
    //str.Append(GridView1.Rows[i].Cells[0].Text);

}

}// Response.Write(str.ToString());

        /*
        conn.Open();
        CheckBox chk;

        foreach (GridViewRow row in GridView1.Rows)
        {
            // FindControl function gets the control placed inside the GridView control from the specified cell
            // FindControl fucntion accepts string id of the control that you want to access
            // type casting of control allows to access the properties of that particular control
            // here checkbox control type cast is used to access its properties
            chk = (CheckBox)(row.Cells[2].FindControl("CheckBox1"));
            //CheckBox checkbox = (CheckBox)sender;
            //GridViewRow row = (GridViewRow)checkbox.NamingContainer;
           
            // chk.checked will access the checkbox state on button click event
            
                if(chk.Checked)
                {
                    //string first = SelectedRow.Cells[1].Text;
                    //string last = row.Cells[1].Text;

                //string first = GridView1.SelectedRow.Cells[0].Text;
                string last = GridView1.SelectedRow.Cells[1].Text;
                //string s = GridView1.SelectedRow.Cells[2].Text;



                string u_name = (string)Session["userid"];
                //string f_name = txtsearch.Text;
                //string f_name = s;
                string sqlq = "INSERT INTO friend1(userid,friendf,friendl) VALUES (@userid,@friendf,@friendl)";

                SqlCommand cmd = new SqlCommand(sqlq, conn);

                cmd.Parameters.AddWithValue("@userid", u_name);
                //cmd.Parameters.AddWithValue("@friendf", first);
                cmd.Parameters.AddWithValue("@friendl", last);
                //cmd.Parameters.AddWithValue("@frienduserid", f_name);
                //cmd.Parameters.AddWithValue("@frienduserid", s);
                cmd.ExecuteNonQuery();

                conn.Close();
            }
        }*/
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
}
    



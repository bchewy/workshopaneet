using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Workshop
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadMessages();
        }
        public void LoadMessages()
        {
            string strConn = ConfigurationManager.ConnectionStrings["ourConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Contact", conn);
            SqlDataAdapter dataadap = new SqlDataAdapter(cmd);
            DataSet result = new DataSet();

            conn.Open();
            dataadap.Fill(result, "ContactStuff");
            conn.Close();

            GridView1.DataSource = result.Tables["ContactStuff"];
            GridView1.DataBind();
        }
        public void saveMessage(string name,string cno, string msg)
        {
            string strConn = ConfigurationManager.ConnectionStrings["ourConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand cmd = new SqlCommand("insert into contact(Name,ContactNo,Message) values (@name,@cno,@msg)", conn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@cno", cno);
            cmd.Parameters.AddWithValue("@msg", msg);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string cno = TextBox2.Text;
            string msg = TextBox3.Text;

            saveMessage(name, cno, msg);
        }
    }
}
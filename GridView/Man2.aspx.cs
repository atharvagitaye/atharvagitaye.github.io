using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        Console.WriteLine("Connection Open ! ");
        string sql = "select * from users";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader sdr = cmd.ExecuteReader();

        ////Retrieve data from table and Display result
        while (sdr.Read())
        {
            
            Console.WriteLine(sdr["name"]);
            Response.Write(sdr["name"]);
        }

        conn.Close();
    }

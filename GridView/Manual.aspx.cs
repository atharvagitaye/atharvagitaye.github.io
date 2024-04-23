protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            Console.WriteLine("Connection Open ! ");
            string sql = "select * from student";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            Response.Write("ID\tName\tSem\tCity"+"<br>");
            ////Retrieve data from table and Display result
            while (sdr.Read())
            {

                Response.Write(sdr["id"] + "&nbsp;" + sdr["name"]+ "&nbsp; " + sdr["sem"]+ "&nbsp; " + sdr["city"]+"<br>");
                //Console.WriteLine(sdr["name"]);
            }

            conn.Close();
        }

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CINElma
{
    public partial class Film_Detay : Form
    {
        public Film_Detay()
        {
            InitializeComponent();
        }

        SqlConnection connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");


        private void Film_Detay_Load(object sender, EventArgs e)
        {
            flpfilmliste.Controls.Clear();
            connection.Open();
            string query = "SELECT * FROM tbl_filmler ORDER BY ADI ASC";

            SqlCommand command = new SqlCommand(query,connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) 
            {
                FilmListesi userControl = new FilmListesi();
                userControl.lblfilmadı.Text = reader["ADI"].ToString();
                userControl.pbresim.ImageLocation = reader["AFİŞ"].ToString() ;
                userControl.lblıd.Text = reader["ID"].ToString() ;
                flpfilmliste.Controls.Add(userControl);

            }

            connection.Close();


        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnToggle_Click(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Normal)
            {
                this.WindowState = FormWindowState.Maximized;
            }
            else if (this.WindowState == FormWindowState.Maximized)
            {
                this.WindowState = FormWindowState.Normal;
            }
        }

        private void btnmini_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;

        }

        private void txtara_Enter(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;

            if (t1.Text == "Arama Yapın...")
            {
                t1.Text = string.Empty;
                t1.ForeColor = Color.Black;
            }
        }

        private void txtara_Leave(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;

            if (string.IsNullOrWhiteSpace(t1.Text))
            {
                t1.Text = "Arama Yapın...";
                t1.ForeColor = Color.Gray;
            }
        }

        private void txtara_TextChanged(object sender, EventArgs e)
        {
            flpfilmliste.Controls.Clear();
            connection.Open();
            string query = "SELECT * FROM tbl_filmler WHERE ADI LIKE '%" + txtara.Text + 
                "%' collate Turkish_CI_AS ORDER BY ADI ASC";

            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                FilmListesi userControl = new FilmListesi();
                userControl.lblfilmadı.Text = reader["ADI"].ToString();
                userControl.pbresim.ImageLocation = reader["AFİŞ"].ToString();
                userControl.lblıd.Text = reader["ID"].ToString();
                flpfilmliste.Controls.Add(userControl);
            }

            connection.Close();
        }
    }
}

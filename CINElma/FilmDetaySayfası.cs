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
    public partial class FilmDetaySayfası : Form
    {
        public FilmDetaySayfası()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");


        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnmini_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
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

        public string ıdno = "";
        private void FilmDetaySayfası_Load(object sender, EventArgs e)
        {
            connection.Open();
            string query = "SELECT * FROM tbl_filmler WHERE ID=@p1";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@p1", ıdno);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                pbafiş.ImageLocation = reader["AFİŞ"].ToString();
                lblad.Text = reader["ADI"].ToString();
                lbltür.Text = reader["TÜRÜ"].ToString();
                lbldil.Text = reader["DİL"].ToString();
                lblyönetmen.Text = reader["YÖNETMEN"].ToString();
                lblözellik.Text = reader["ÖZELLİK"].ToString();
                lblvizyon.Text = reader["TARİH"].ToString();
                lbldetay.Text = reader["DETAY"].ToString();

                
                string oyuncular = reader["OYUNCU"].ToString();
                string[] oyuncuListesi = oyuncular.Split(',');

                
                lboyuncular.Items.Clear();
                foreach (string oyuncu in oyuncuListesi)
                {
                    lboyuncular.Items.Add(oyuncu);
                }
            }

            connection.Close();

        }
    }
}

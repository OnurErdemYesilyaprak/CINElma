using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace CINElma
{
    public partial class Bilet_Detay : Form
    {
        public Bilet_Detay()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");

        public string biletno = "";
        private void Bilet_Detay_Load(object sender, EventArgs e)
        {
            lblbiletno.Text = biletno;
            lblbiletno1.Text = biletno;
            BarkodNoOluştur();
            verigetir();
        }
        void BarkodNoOluştur()
        {
            Random random = new Random();
            string characters = "01234567890";
            string kod = "";
            for (int i = 0; i < 10; i++)
            {
                kod = kod + characters[random.Next(characters.Length)];

            }
            barcodeno.Text = kod;
        }
        void verigetir()
        {
            connection.Open();
            string query = "select * from tbl_bilet where biletno = @p1";
            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@p1",biletno);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            { 
                lblfilmadı.Text = reader["film"].ToString();
                lblfilmadı1.Text = reader["film"].ToString();
                lbladsoyad.Text = reader["adsoyad"].ToString();
                lblsalon.Text = reader["salonadı"].ToString() ;
                lblsalon1.Text = reader["salonadı"].ToString();
                lbltarih.Text = reader["tarih"].ToString();
                lbltarih1.Text = reader["tarih"].ToString();
                lblseans.Text = reader["saat"].ToString();
                lblseans1.Text = reader["saat"].ToString();
                lblkoltuk.Text = reader["koltukno"].ToString();
                lblkoltuk1.Text = reader["koltukno"].ToString();


            }









            connection.Close();

        }


        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        
    }
}

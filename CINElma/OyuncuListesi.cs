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
using System.Data.SqlClient;

namespace CINElma
{
    public partial class OyuncuListesi : UserControl
    {
        public OyuncuListesi()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");

        private void lbladı_Click(object sender, EventArgs e)
        {
            if (lbladı.ForeColor == Color.Teal)
            {
                lbladı.ForeColor = Color.Green;
                pbekle1.ImageLocation = @"C:\Users\yslyp\Pictures\Screenshots\onay.png";

                connection.Open();

                SqlCommand command = new SqlCommand("INSERT INTO tbl_seçilenler (KİŞİ,TÜR) VALUES(@kişi,@tür)", connection);
                command.Parameters.AddWithValue("@kişi", lbladı.Text);
                command.Parameters.AddWithValue("@tür", "OYUNCU");
                command.ExecuteNonQuery();

                connection.Close();
            }
            else
            {
                lbladı.ForeColor = Color.Teal;
                pbekle1.ImageLocation = @"C:\Users\yslyp\Pictures\Screenshots\plus.png";

                connection.Open();

                SqlCommand command = new SqlCommand("DELETE FROM tbl_seçilenler WHERE KİŞİ = @kişi AND TÜR = @tür", connection);
                command.Parameters.AddWithValue("@kişi", lbladı.Text);
                command.Parameters.AddWithValue("@tür", "OYUNCU");
                command.ExecuteNonQuery();

                connection.Close();
            }
        }

        private void OyuncuListesi_Load(object sender, EventArgs e)
        {

        }
    }
}

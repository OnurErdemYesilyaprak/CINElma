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
    public partial class Salon_İşlemleri : Form
    {
        public Salon_İşlemleri()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");


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

        private void btnadd_Click(object sender, EventArgs e)
        {
            if (txthallname.Text != "" && cbseatcount.Text != "") 
            {
                connection.Open();

                SqlCommand add = new SqlCommand("insert into tbl_salonlar(SALONADI,KOLTUKSAYISI) Values(@salonadı,@koltuksayısı)",connection);

                add.Parameters.AddWithValue("@salonadı",txthallname.Text.ToUpper());
                add.Parameters.AddWithValue("@koltuksayısı",cbseatcount.Text);
                add.ExecuteNonQuery();

                
                connection.Close();
                MessageBox.Show("salon kaydedildi");
                txthallname.Text = string.Empty;
                cbseatcount.Text = string.Empty;
                listegetir();


            }
            else
            {
                MessageBox.Show("Lütfen Değer Giriniz!!","UYARI",MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void Salon_İşlemleri_Load(object sender, EventArgs e)
        {
            listegetir();
        }

        void listegetir()
        {
            panelsalon.Controls.Clear();

            connection.Open();

            SqlCommand command = new SqlCommand("select * from tbl_salonlar ORDER BY SALONADI ASC", connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                SalonListesi usercontrol = new SalonListesi();

                usercontrol.lblsalonadı.Text = reader["SALONADI"].ToString();
                usercontrol.lblkoltuksayısı.Text = reader["KOLTUKSAYISI"].ToString();
                panelsalon.Controls.Add(usercontrol);

            }


            connection.Close();
        }

    }
}

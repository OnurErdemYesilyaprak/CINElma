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
using System.IO;
namespace CINElma
{
    public partial class Bilet_İşlemleri : Form
    {
        string f1 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\dolu.png");
        string f2 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\boş.png");
        string f3 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\seçili2.png");
        public Bilet_İşlemleri()
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

        private void Bilet_İşlemleri_Load(object sender, EventArgs e)
        {
            FilmAdıGetir();
            BiletNoOluştur();
        }

        void FilmAdıGetir()
        {
            connection.Open();
            string query = "SELECT * FROM tbl_filmler ORDER BY ADI ASC ";

            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) 
            {
                string gelentarih = reader["TARİH"].ToString();

                DateTime filmtarih = Convert.ToDateTime(gelentarih);
                DateTime bugün  = DateTime.Today;

                TimeSpan timeSpan = filmtarih - bugün;
                if (timeSpan.TotalDays>=0)
                {
                    cbmovie.Items.Add(reader["ADI"].ToString());

                }

            }


            connection.Close();
        }

        void BiletNoOluştur()
        {
            Random random = new Random();
            string characters = "0123456789ABCDEFGH";
            string kod = "";
            for (int i = 0; i < 11; i++)
            {
                kod = kod + characters[random.Next(characters.Length)];

            }
            txtticket.Text = kod;
        }

        void salonadıgetir()
        {
            connection.Open();
            cbhall.Items.Clear();

            string query = "SELECT DISTINCT SALONADI FROM tbl_kontrol WHERE FİLMADI = @filmadı AND TARİH = @tarih AND SEANS = @seans";

            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("filmadı",cbmovie.Text.ToString());
            command.Parameters.AddWithValue("tarih", cbtarih.Text.ToString());
            command.Parameters.AddWithValue("seans", lblseansseç.Text.ToString());

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) 
            {
                cbhall.Items.Add(reader["SALONADI"].ToString());
            }

            connection.Close();
        }

        void Seanslarcheck(object sender, EventArgs e)
        {
            foreach (RadioButton item in pnlseans.Controls) 
            {
                if (item.Checked)
                {
                    lblseansseç.Text = item.Text;
                    salonadıgetir();

                }
            
            
            }
        }

        private void cbmovie_SelectedIndexChanged(object sender, EventArgs e)
        {
            connection.Open();
            cbtarih.Items.Clear();
            string query = "SELECT DISTINCT TARİH FROM tbl_kontrol WHERE FİLMADI= @filmadı";
            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@filmadı", cbmovie.Text);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) 
            {
                cbtarih.Items.Add(reader["TARİH"].ToString());
            
            
            }

            connection.Close();
        }

        private void cbtarih_SelectedIndexChanged(object sender, EventArgs e)
        {
            connection.Open();
            pnlseans.Controls.Clear();
            string query = "SELECT DISTINCT SEANS FROM tbl_kontrol WHERE FİLMADI = @filmadı AND TARİH = @tarih";

            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("filmadı",cbmovie.Text.ToString());
            command.Parameters.AddWithValue("tarih", cbtarih.Text.ToString());
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) 
            {
                RadioButton radioButton = new RadioButton();
                radioButton.Text = reader["SEANS"].ToString();
                pnlseans.Controls.Add(radioButton);
                radioButton.CheckedChanged += new EventHandler(Seanslarcheck);
            }
            




            connection.Close();
        }

        private void cbhall_SelectedIndexChanged(object sender, EventArgs e)
        {

            salongetir();
            
        }

        void salongetir()
        {
            connection.Open();

            string query = "SELECT * FROM tbl_salonlar WHERE SALONADI = @salonadı";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("salonadı", cbhall.Text.ToString());
            connection.Close();


            koltukkontrol();

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                lblsalonadı1.Text = reader["SALONADI"].ToString();
                lblkoltuksayısı.Text = reader["KOLTUKSAYISI"].ToString();
                koltukgetir();

            }

            connection.Close();
        }

        void kaydetmemetodu()
        {
            connection.Close();
            connection.Open();
            string seans = string.Empty;
            foreach (Control control in pnlseans.Controls)
            {
                if (control is RadioButton && ((RadioButton)control).Checked)
                {
                    seans = ((RadioButton)control).Text;
                    break; 
                }
            }

            if (!string.IsNullOrEmpty(seans))
            {
                string query = "insert into tbl_bilet (film,salonadı,tarih,saat,adsoyad,koltukno,tarife,biletno) Values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@p1", cbmovie.Text.ToString());
                command.Parameters.AddWithValue("@p2", cbhall.Text.ToString());
                command.Parameters.AddWithValue("@p3", cbtarih.Text.ToString());
                command.Parameters.AddWithValue("@p4", seans); 
                command.Parameters.AddWithValue("@p5", txtname.Text.ToUpper().ToString() + " " + txtsurname.Text.ToUpper().ToString());
                command.Parameters.AddWithValue("@p6", txtseat.Text.ToString());
                command.Parameters.AddWithValue("@p7", cbtype.Text.ToString());
                command.Parameters.AddWithValue("@p8", txtticket.Text.ToString());
                command.ExecuteNonQuery();
                connection.Close();
            }

            connection.Open();

            string query1 = "UPDATE tbl_kontrol SET KOLTUKLAR = @p1 WHERE FİLMADI = @p2 AND TARİH = @p3 AND SEANS = @p4 AND SALONADI = @p5";
            string koltuklar = string.Join(",", lbgelenkoltuk.Items.Cast<string>()) + "," + txtseat.Text.ToString();
            SqlCommand command1 = new SqlCommand(query1, connection);
            if (lbgelenkoltuk.Items.Count == 0)
            {
                command1.Parameters.AddWithValue("@p1",txtseat.Text.ToString());    
            }
            else
            {
                command1.Parameters.AddWithValue("@p1", koltuklar);
            }
            
            
            command1.Parameters.AddWithValue("@p2", cbmovie.Text.ToString());
            command1.Parameters.AddWithValue("@p3", cbtarih.Text.ToString());
            command1.Parameters.AddWithValue("@p4", seans);
            command1.Parameters.AddWithValue("@p5", cbhall.Text.ToString());
            command1.ExecuteNonQuery();
            connection.Close();


            MessageBox.Show("Bilet Başarılı Bir Şekilde Oluşturuldu", "BİLGİ", MessageBoxButtons.OK, MessageBoxIcon.Information);
            salongetir();
            lbseçilen.Items.Clear();
            txtseat.Text = "";


        }
        void koltukkontrol()
        {
            string koltukno = "";
            string[] split;
            connection.Open();
            lbgelenkoltuk.Items.Clear();
            
            string query = "SELECT * FROM tbl_kontrol WHERE FİLMADI = @filmadı AND TARİH = @tarih AND SEANS = @seans AND SALONADI = @salonadı";

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("filmadı", cbmovie.Text.ToString());
            command.Parameters.AddWithValue("tarih", cbtarih.Text.ToString());
            command.Parameters.AddWithValue("seans", lblseansseç.Text.ToString());
            command.Parameters.AddWithValue("salonadı", cbhall.Text.ToString());
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                koltukno = reader["KOLTUKLAR"].ToString();
                split = koltukno.Split(',');
                foreach (string item in split)
                {
                        lbgelenkoltuk.Items.Add(item.Trim());
                     
                }
            }

            connection.Close();
        }

        void koltukgetir()
        {
            pnlkoltuk.Controls.Clear();
            int koltuksayi = Convert.ToUInt16(lblkoltuksayısı.Text);

            for (int i = 1; i <= koltuksayi; i++) 
            {
                Button btnkoltuk = new Button();
                if (i <= 10)
                {
                    btnkoltuk.Text = "A" + i.ToString();
                    btnkoltuk.Name = "A" + i.ToString();
                }
                else if (i>10 && i<=20)
                {
                    btnkoltuk.Text = "B" + ((i-10).ToString());
                    btnkoltuk.Name = "B" + ((i - 10).ToString());
                }
                else if (i > 20 && i <= 30)
                {
                    btnkoltuk.Text = "C" + ((i - 20).ToString());
                    btnkoltuk.Name = "C" + ((i - 20).ToString());
                }
                else if (i > 30 && i <= 40)
                {
                    btnkoltuk.Text = "D" + ((i - 30).ToString());
                    btnkoltuk.Name = "D" + ((i - 30).ToString());
                }
                else if (i > 40 && i <= 50)
                {
                    btnkoltuk.Text = "E" + ((i - 40).ToString());
                    btnkoltuk.Name = "E" + ((i - 40).ToString());
                }
                else if (i > 50 && i <= 60)
                {
                    btnkoltuk.Text = "F" + ((i - 50).ToString());
                    btnkoltuk.Name = "F" + ((i - 50).ToString());
                }
                else if (i > 60 && i <= 70)
                {
                    btnkoltuk.Text = "G" + ((i - 60).ToString());
                    btnkoltuk.Name = "G" + ((i - 60).ToString());
                }
                else if (i > 70 && i <= 80)
                {
                    btnkoltuk.Text = "H" + ((i - 70).ToString());
                    btnkoltuk.Name = "H" + ((i - 70).ToString());
                }
                else if (i > 80 && i <= 90)
                {
                    btnkoltuk.Text = "I" + ((i - 80).ToString());
                    btnkoltuk.Name = "I" + ((i - 80).ToString());
                }
                btnkoltuk.Width = 55;
                btnkoltuk.Height = 50;
                btnkoltuk.FlatStyle = FlatStyle.Flat;
                btnkoltuk.FlatAppearance.BorderSize = 0;
                btnkoltuk.Click += Btn_Click;
                pnlkoltuk.Controls.Add(btnkoltuk);

                GC.Collect();
                GC.WaitForPendingFinalizers();

                foreach (Control control in pnlkoltuk.Controls)
                {
                    if (control is Button btn)
                    {
                        if (lbgelenkoltuk.Items.Contains(btn.Text))

                        {
                            btn.ForeColor = Color.Yellow;
                            btn.BackgroundImage = Image.FromFile(f1);

                        }
                        else
                        {   btn.ForeColor = Color.Black;
                            btn.BackgroundImage = Image.FromFile(f2);
                            
                        }
                        btn.BackgroundImageLayout = ImageLayout.Stretch;
                    }
                }
                


            }
        
        
        }

        void seçilenkoltuklar()
        {
            txtseat.Text = "";
            foreach (string item in lbseçilen.Items)
            {
                    txtseat.Text = txtseat.Text + "," + item;  
            }
            if (txtseat.Text.Length > 1)
            {
                txtseat.Text = txtseat.Text.Substring(1);
            }
        }


        private void Btn_Click(object sender, EventArgs e)
        {
            Button btnkoltuk = (Button)sender;

            if(btnkoltuk.ForeColor == Color.Yellow)
            {
                MessageBox.Show("Bu Koltuk Alınmış!!","BİLGİ",MessageBoxButtons.OK,MessageBoxIcon.Information); 

            }
            else
            {
                if (btnkoltuk.ForeColor == Color.Black) 
                {
                    btnkoltuk.ForeColor = Color.Red;
                    btnkoltuk.BackgroundImage = Image.FromFile(f3);
                    lbseçilen.Items.Add(btnkoltuk.Text);
                    seçilenkoltuklar();
                    
                }
                else
                {
                    btnkoltuk.ForeColor= Color.Black;
                    btnkoltuk.BackgroundImage = Image.FromFile(f2);
                    lbseçilen.Items.Remove(btnkoltuk.Text);
                    seçilenkoltuklar();
                }
                btnkoltuk .BackgroundImageLayout = ImageLayout.Stretch;
            }




        }
        void biletnosorgula()
        {
            connection.Open();
            string query = "select * from tbl_bilet where biletno = @p1";
            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@p1",txtticket.Text.ToString());
            SqlDataReader reader = command.ExecuteReader();
            if (!reader.Read()) 
            {
                kaydetmemetodu();
            }
            else
            {
                BiletNoOluştur();
                connection.Close();
                biletnosorgula();
            }

            connection.Close();
        }

       

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtname.Text!="" && txtsurname.Text!="" && txtseat.Text!="" && cbmovie.Text!="" && cbtarih.Text!="" && cbtype.Text!="" && cbhall.Text!="")
            {
                biletnosorgula();
                
            }
            else
            {
                MessageBox.Show("Tüm Alanlar Doldurulmak Zorundadır!!", "UYARI",MessageBoxButtons.OK,MessageBoxIcon.Warning); 
            }
        }

        private void btntemizle_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtsurname.Text = "";
            txtseat.Text = "";
            cbtype.Text = "";
            lbseçilen.Items.Clear();
            lbgelenkoltuk.Items.Clear();
            lblseansseç.Text = "";
            cbtype.Items.Clear();
            cbhall.Text = "";
            cbhall.Items.Clear();
            cbtarih.Text = "";
            cbtarih.Items.Clear();
            txtticket.Text = "";
            BiletNoOluştur();
            cbtype.Items.Add("Yetişkin");
            cbtype.Items.Add("Öğrenci");
            pnlseans.Controls.Clear();
            pnlkoltuk.Controls.Clear();
            cbmovie.Items.Clear();
            FilmAdıGetir();
            txtname.Focus();
        }

        private void pnlup_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}

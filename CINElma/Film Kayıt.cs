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
using System.Data.SqlTypes;

namespace CINElma
{
    public partial class Film_Kayıt : Form
    {
        public Film_Kayıt()
        {
            InitializeComponent();
        }

        SqlConnection connection;


        private void Film_Kayıt_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");
            yönetmenlistesigetir();
            oyunculistesigetir();
            numbugüntarihi();
        }

        

        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
            verilerisil();
            
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
        string resimyolu = "";
        private void btnyükle_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Title = "Bir Resim Seçin";
            openFileDialog.Filter = "Resim Dosyaları|*.jpg;*.jpeg;*.png;*.bmp;*.gif";


            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                // Seçilen resmi PictureBox'a yükle
                pbafiş.Image = System.Drawing.Image.FromFile(openFileDialog.FileName);
                pbafiş.SizeMode = PictureBoxSizeMode.StretchImage;
                resimyolu = openFileDialog.FileName.ToString();
            }
        }

        private void yönetmenara_Enter(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;
            t1.Text = string.Empty;
            t1.TextAlign = HorizontalAlignment.Left;
        }

        private void yönetmenara_Leave(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;
            t1.Text = "Yönetmen Ara";
            t1.TextAlign = HorizontalAlignment.Center;

        }
        private void oyuncuara_Enter(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;
            t1.Text = string.Empty;
            t1.TextAlign = HorizontalAlignment.Left;
        }
        private void oyuncuara_Leave(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;
            t1.Text = "Oyuncu Ara";
            t1.TextAlign = HorizontalAlignment.Center;
        }

        private void lblaksiyon_Click(object sender, EventArgs e)
        {
            if (lblaksiyon.ForeColor == Color.Teal) 
            { 
                lblaksiyon.ForeColor = Color.Crimson;
            }
            else
            {
                lblaksiyon.ForeColor= Color.Teal;
            }
        }

        private void lblanimasyon_Click(object sender, EventArgs e)
        {
            if (lblanimasyon.ForeColor == Color.Teal)
            {
                lblanimasyon.ForeColor = Color.Crimson;
            }
            else
            {
                lblanimasyon.ForeColor = Color.Teal;
            }
        }

        private void lblgerilim_Click(object sender, EventArgs e)
        {
            if (lblgerilim.ForeColor == Color.Teal)
            {
                lblgerilim.ForeColor = Color.Crimson;
            }
            else
            {
                lblgerilim.ForeColor = Color.Teal;
            }
        }

        private void lblkomedi_Click(object sender, EventArgs e)
        {
            if (lblkomedi.ForeColor == Color.Teal)
            {
                lblkomedi.ForeColor = Color.Crimson;
            }
            else
            {
                lblkomedi.ForeColor = Color.Teal;
            }
        }

        private void lblbilimkurgu_Click(object sender, EventArgs e)
        {
            if (lblbilimkurgu.ForeColor == Color.Teal)
            {
                lblbilimkurgu.ForeColor = Color.Crimson;
            }
            else
            {
                lblbilimkurgu.ForeColor = Color.Teal;
            }
        }

        private void lbldram_Click(object sender, EventArgs e)
        {
            if (lbldram.ForeColor == Color.Teal)
            {
                lbldram.ForeColor = Color.Crimson;
            }
            else
            {
                lbldram.ForeColor = Color.Teal;
            }
        }

        private void lblaşk_Click(object sender, EventArgs e)
        {
            if (lblaşk.ForeColor == Color.Teal)
            {
                lblaşk.ForeColor = Color.Crimson;
            }
            else
            {
                lblaşk.ForeColor = Color.Teal;
            }
        }

        private void lblfantastik_Click(object sender, EventArgs e)
        {
            if (lblfantastik.ForeColor == Color.Teal)
            {
                lblfantastik.ForeColor = Color.Crimson;
            }
            else
            {
                lblfantastik.ForeColor = Color.Teal;
            }
        }

        private void lblkorku_Click(object sender, EventArgs e)
        {
            if (lblkorku.ForeColor == Color.Teal)
            {
                lblkorku.ForeColor = Color.Crimson;
            }
            else
            {
                lblkorku.ForeColor = Color.Teal;
            }
        }

        private void lblşiddet_Click(object sender, EventArgs e)
        {
            if (lblşiddet.ForeColor == Color.Teal)
            {
                lblşiddet.ForeColor = Color.Crimson;
            }
            else
            {
                lblşiddet.ForeColor = Color.Teal;
            }
        }

        private void lblgenel_Click(object sender, EventArgs e)
        {
            if (lblgenel.ForeColor == Color.Teal)
            {
                lblgenel.ForeColor = Color.Crimson;
            }
            else
            {
                lblgenel.ForeColor = Color.Teal;
            }
        }

        private void lblolumsuz_Click(object sender, EventArgs e)
        {
            if (lblolumsuz.ForeColor == Color.Teal)
            {
                lblolumsuz.ForeColor = Color.Crimson;
            }
            else
            {
                lblolumsuz.ForeColor = Color.Teal;
            }
        }

        private void lbl18_Click(object sender, EventArgs e)
        {
            if (lbl18.ForeColor == Color.Teal)
            {
                lbl18.ForeColor = Color.Crimson;
            }
            else
            {
                lbl18.ForeColor = Color.Teal;
            }
        }

        private void lbl13_Click(object sender, EventArgs e)
        {
            if (lbl13.ForeColor == Color.Teal)
            {
                lbl13.ForeColor = Color.Crimson;
            }
            else
            {
                lbl13.ForeColor = Color.Teal;
            }
        }

        private void lbltürkçe_Click(object sender, EventArgs e)
        {
            if (lbltürkçe.ForeColor == Color.Teal)
            {
                lbltürkçe.ForeColor = Color.Crimson;
            }
            else
            {
                lbltürkçe.ForeColor = Color.Teal;
            }
        }

        private void lblingilizce_Click(object sender, EventArgs e)
        {
            if (lblingilizce.ForeColor == Color.Teal)
            {
                lblingilizce.ForeColor = Color.Crimson;
            }
            else
            {
                lblingilizce.ForeColor = Color.Teal;
            }
        }

        private void lblaltyazı_Click(object sender, EventArgs e)
        {
            if (lblaltyazı.ForeColor == Color.Teal)
            {
                lblaltyazı.ForeColor = Color.Crimson;
            }
            else
            {
                lblaltyazı.ForeColor = Color.Teal;
            }
        }

        private void btnseç_Click(object sender, EventArgs e)
        {
            vizyontarihihesapla();
            MessageBox.Show("Vizyon Tarihi Başarılı Bir Şekilde Seçildi!!", "BİLGİ", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }




        private void timerdatehour_Tick(object sender, EventArgs e)
        {
            lbltarih.Text = DateTime.Now.ToShortDateString();
            lblsaat.Text = DateTime.Now.ToShortTimeString();
        }

        private void oyuncuara_TextChanged(object sender, EventArgs e)
        {
            oyuncuarama();
        }

        private void yönetmenara_TextChanged(object sender, EventArgs e)
        {
            yönetmenarama();
        }

        private void btnkayıt_Click(object sender, EventArgs e)
        {
            

            tür();
            özellik();
            dil();
            yönetmen();
            oyuncu();


            if (txtad.Text!="" && txtdetay.Text!="" && seçilenyönetmen!="" && seçilenoyuncu!=""&&
                seçilenözellik!="" && seçilentür!="" && seçilendil!="" && resimyolu!=""&&vizyontarih!="")
            {
                connection.Open();
                string query = "INSERT INTO tbl_filmler " +
                    "(ADI,TÜRÜ,ÖZELLİK,YÖNETMEN,OYUNCU,AFİŞ,DİL,TARİH,DETAY,DURUM) " +
                    "VALUES (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)";
                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@p1", txtad.Text.ToUpper());

                if (seçilentür.Length > 2)
                {
                    command.Parameters.AddWithValue("@p2", seçilentür.Substring(2));
                }
                else
                {
                    command.Parameters.AddWithValue("@p2", seçilentür);
                }

                if (seçilenözellik.Length > 2)
                {
                    command.Parameters.AddWithValue("@p3", seçilenözellik.Substring(2));
                }
                else
                {
                    command.Parameters.AddWithValue("@p3", seçilenözellik);
                }

                if (seçilenyönetmen.Length > 2)
                {
                    command.Parameters.AddWithValue("@p4", seçilenyönetmen.Substring(2));

                }
                else
                {
                    command.Parameters.AddWithValue("@p4", seçilenyönetmen);
                }

                if (seçilenoyuncu.Length > 2)
                {
                    command.Parameters.AddWithValue("@p5", seçilenoyuncu.Substring(2));

                }
                else
                {
                    command.Parameters.AddWithValue("@p5", seçilenoyuncu);
                }


                command.Parameters.AddWithValue("@p6", resimyolu);


                command.Parameters.AddWithValue("@p7", seçilendil);
                command.Parameters.AddWithValue("@p8", vizyontarih);
                command.Parameters.AddWithValue("@p9", txtdetay.Text.ToUpper());
                command.Parameters.AddWithValue("@p10", durum);

                command.ExecuteNonQuery();

                connection.Close();

                MessageBox.Show("Film Kaydı Başarılı Bir Şekilde Gerçekleşti!", "BİLDİRİM", MessageBoxButtons.OK, MessageBoxIcon.Information);
                formtemizlemeişlemi();
            }
            else
            {
                MessageBox.Show("Lütfen İlgili Alanları Doldurunuz!!","UYARI",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }



        }


        string vizyontarih = "";
        string durum = "0";
        string seçilentür = "";
        string seçilenözellik = "";
        string seçilendil = "";
        string seçilenoyuncu = "";
        string seçilenyönetmen = "";

        void tür()
        {
            foreach (Control item in pnltür.Controls)
            {
                if(item is Label)
                {
                    if(item.ForeColor == Color.Teal)
                    {
                        
                    }
                    else
                    {
                        seçilentür = seçilentür + " ," + item.Text.ToString();
                    }
                }
                
            }
        }

        void özellik()
        {
            foreach (Control item in gbözellik.Controls)
            {
                if(item is Label)
                {
                    if (item.ForeColor == Color.Teal)
                    {
                        
                    }
                    else
                    {
                        seçilenözellik = seçilenözellik + " ," + item.Text.ToString();
                    }

                }
            }
        }

        void dil()
        {
            foreach ( Control item in gbdil.Controls) 
            {
                if(item is Label)
                {
                    if( item.ForeColor == Color.Teal)
                    {
                        
                    }
                    else
                    {
                        seçilendil = item.Text.ToString();  
                    }
                }
            }
        }

        void yönetmen()
        {
            seçilenyönetmen = "";
            connection.Open();

            string query = "select * from tbl_seçilenler WHERE TÜR = 'YÖNETMEN'";
            SqlCommand command = new SqlCommand(query,connection);

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                seçilenyönetmen = seçilenyönetmen + " ," + reader["KİŞİ"].ToString();
            }


            connection.Close(); 
        }

        void oyuncu()
        {
            seçilenoyuncu = "";
            connection.Open();
            string seçilenoyuncu1 = "";
            string[] split;

            string query = "select * from tbl_seçilenler WHERE TÜR = 'OYUNCU'";
            SqlCommand command = new SqlCommand(query,connection);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                seçilenoyuncu1 = reader["KİŞİ"].ToString();
                split = seçilenoyuncu1.Split(',');
                foreach (string item in split)
                {
                    seçilenoyuncu = seçilenoyuncu + item;
                }
                
            }


            connection.Close();
        }

        void oyuncuarama()
        {
            string query = "SELECT * FROM tbl_oyuncu WHERE İSİM LIKE @arama OR SOYİSİM LIKE @arama ORDER BY İSİM, SOYİSİM ASC";
            flpoyuncu.Controls.Clear();
            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@arama", "%" + oyuncuara.Text + "%");

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                OyuncuListesi oyuncuListesi = new OyuncuListesi();
                oyuncuListesi.lbladı.Text = reader["İSİM"].ToString() + " " + reader["SOYİSİM"].ToString();
                flpoyuncu.Controls.Add(oyuncuListesi);
            }

            connection.Close();
        }

        void yönetmenarama()
        {
            
            string query = "SELECT * FROM tbl_yönetmenler WHERE İSİM LIKE @arama OR SOYİSİM LIKE @arama ORDER BY İSİM, SOYİSİM ASC";
            flpyönetmen.Controls.Clear();
            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@arama", "%" + yönetmenara.Text + "%");

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
               yönetmenlistesi oyuncuListesi = new yönetmenlistesi();
               oyuncuListesi.lbladı.Text = reader["İSİM"].ToString() + " " + reader["SOYİSİM"].ToString();
               flpyönetmen.Controls.Add(oyuncuListesi);
            }

             connection.Close();
            

        }

        void verilerisil()
        {
            connection.Open();

            SqlCommand command = new SqlCommand("DELETE FROM tbl_seçilenler", connection);
            command.ExecuteNonQuery();

            connection.Close();
        }

        void formtemizlemeişlemi()
        {
            this.Controls.Clear();
            Film_Kayıt film_Kayıt = new Film_Kayıt();
            film_Kayıt.ShowDialog();
            this.Close();
            verilerisil();
            oyunculistesigetir();
            yönetmenlistesigetir();
            numbugüntarihi();


        }

        void numbugüntarihi()
        {

            numyıl.Maximum = DateTime.Today.Year + 50;

            numay.Maximum = 12;
            numgün.Maximum = 31;

            numgün.Value = DateTime.Today.Day;
            numay.Value = DateTime.Today.Month;
            numyıl.Value = DateTime.Today.Year;



            if (DateTime.Today.Year <= numyıl.Maximum)
            {
                numyıl.Value = DateTime.Today.Year;
            }
            else
            {
                numyıl.Value = numyıl.Maximum;
            }

        }

        void vizyontarihihesapla()
        {
            vizyontarih = numgün.Value + " " + numay.Value + " " + numyıl.Value;
            DateTime dtVtarih = Convert.ToDateTime(vizyontarih);
            DateTime bugüntarih = DateTime.Today;

            TimeSpan timeSpan = dtVtarih - bugüntarih;

            if (timeSpan.TotalSeconds < 0)
            {
                MessageBox.Show("Geçmiş Tarihe Ait Film Seçimi Yapılamaz!!", "UYARI!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                numbugüntarihi();
            }
            else if (timeSpan.TotalSeconds == 0)
            {
                // bugünün tarihi seçilmiş ise
                durum = "0";
            }
            else
            {
                // ileri bir tarih seçilmiş ise 
                durum = "1";
            }

        }

        void oyunculistesigetir()
        {
            string query = "select * from tbl_oyuncu ORDER BY İSİM,SOYİSİM ASC";
            flpoyuncu.Controls.Clear();
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                OyuncuListesi usercontrol = new OyuncuListesi();
                usercontrol.lbladı.Text = reader["İSİM"].ToString() + " " + reader["SOYİSİM"].ToString();
                flpoyuncu.Controls.Add(usercontrol);

            }
            connection.Close();

        }

        void yönetmenlistesigetir()
        {
            string query = "select * from tbl_yönetmenler ORDER BY SOYİSİM,İSİM ASC";
            flpyönetmen.Controls.Clear();
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                yönetmenlistesi usercontrol = new yönetmenlistesi();
                usercontrol.lbladı.Text = reader["İSİM"].ToString() + " " + reader["SOYİSİM"].ToString();
                flpyönetmen.Controls.Add(usercontrol);

            }
            connection.Close();

        }

       
    }
}

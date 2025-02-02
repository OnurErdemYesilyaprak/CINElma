using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;
using static System.Net.Mime.MediaTypeNames;

namespace CINElma
{
    public partial class CINElma_Main_Page : Form
    {
        public PictureBox[] pictureBoxes = new PictureBox[3]; // Üç PictureBox
        private Timer[] timers = new Timer[3]; // Üç Timer
        private string[][] images = new string[3][]; // Üç farklı resim dizisi
        private int[] currentIndex = new int[3]; // Her resim dizisi için geçerli index
        public Panel panel;
        string f1 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\1917.png");
        string f2 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\3idiots.png");
        string f3 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\500days.png");
        string f4 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\esaretinbedeli.png");
        string f5 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\ınterstaller.png");
        string f6 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\avatar.png");
        string f7 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\godfather.png");
        string f8 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\mind.png");
        string f9 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\ınception.png");
        string f10 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\limitless.png");
        string f11 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\casino.png");
        string f12 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\blackpanther.png");
        string f13 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\blackwidow.png");
        string f14 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\pianist.png");
        string f15 = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "resimler\\fightclub.png");
        
        public CINElma_Main_Page()
        {
            InitializeComponent();
           
        }

        private void CINElma_Main_Page_Load(object sender, EventArgs e)
        {
            this.Size = new Size(1920, 1080);
            
        }

        public void TriggerButtonClick()
        {
            btnmain.PerformClick();
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
        private void btnexit_Click(object sender, EventArgs e)
        {
           //Application.Exit(); 
           this.Close();    
        }

        private void btnmain_Click(object sender, EventArgs e)
        {
           

            panel = new Panel
            {
                Name = "mainpanel",
                Location = new Point(101, 33),
                Size = new Size(1435, 830),
                BackColor = Color.Plum,
            };
            this.Controls.Add(panel);

            

            int pictureBoxCount = 3;
            int pictureBoxWidth = 300;
            int pictureBoxHeight = 300;

            int totalWidth = pictureBoxCount * pictureBoxWidth;
            int totalSpacing = (panel.Width - totalWidth) / (pictureBoxCount + 1);

            
            for (int i = 0; i < pictureBoxCount; i++)
            {
                pictureBoxes[i] = new PictureBox
                {
                    Name = "pictureBoxDynamic",
                    Size = new Size(pictureBoxWidth, pictureBoxHeight),
                    BackColor = Color.White,
                    SizeMode = PictureBoxSizeMode.StretchImage,
                    Location = new Point(totalSpacing + i * (pictureBoxWidth + totalSpacing), (panel.Height - pictureBoxHeight) / 2)
                };
                panel.Controls.Add(pictureBoxes[i]);
            }

            
            images[0] = new string[]
            {
                f1, f2, f3, f4, f5,
            };
            images[1] = new string[]
            {
                f6, f7, f8, f9, f10,
            };
            images[2] = new string[]
            {
                f11, f12, f13, f14,f15,
            };

            
            for (int i = 0; i < pictureBoxCount; i++)
            {
                int index = i; 
                timers[i] = new Timer
                {
                    Interval = 2000 
                };
                timers[i].Tick += (s, args) => Timer_Tick(index);
                timers[i].Start();
            }

           
            for (int i = 0; i < pictureBoxCount; i++)
            {
                pictureBoxes[i].ImageLocation = images[i][currentIndex[i]];
            }
        }

        private void Timer_Tick(int pictureBoxIndex)
        {
            
            currentIndex[pictureBoxIndex]++;
            if (currentIndex[pictureBoxIndex] >= images[pictureBoxIndex].Length)
            {
                currentIndex[pictureBoxIndex] = 0; 
            }

            
            pictureBoxes[pictureBoxIndex].ImageLocation = images[pictureBoxIndex][currentIndex[pictureBoxIndex]];
        }

        private void btnbilet_Click(object sender, EventArgs e)
        {
            İşlem_Seçim_1 işlem_Seçim_1 = new İşlem_Seçim_1();
            işlem_Seçim_1.ShowDialog();
            //Bilet_İşlemleri biletişlemleri  = new Bilet_İşlemleri();

            //biletişlemleri.ShowDialog();
        }

        private void btnsalon_Click(object sender, EventArgs e)
        {
            Salon_İşlemleri salonişlemleri = new Salon_İşlemleri();

            salonişlemleri.ShowDialog();
        }

        private void btnfilm_Click(object sender, EventArgs e)
        {
            İşlem_Seçim işlemseçim = new İşlem_Seçim();
            işlemseçim.ShowDialog();

            
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text = DateTime.Now.ToShortTimeString();
            label2.Text = DateTime.Now.ToShortDateString();
        }

        private void btnabout_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Bu Program 23.01.2025 Tarihinde Erdem Yeşilyaprak Tarafından Yapılmıştır\nDaha Fazla Bilgi İçin https://github.com/OnurErdemYesilyaprak ", "BİLGİ",MessageBoxButtons.OK,MessageBoxIcon.Information);
        }
    }
}

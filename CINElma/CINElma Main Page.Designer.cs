using System.Drawing;
using System.Windows.Forms.VisualStyles;

namespace CINElma
{
    partial class CINElma_Main_Page
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.pnlup = new System.Windows.Forms.Panel();
            this.btnmini = new System.Windows.Forms.Button();
            this.btnToggle = new System.Windows.Forms.Button();
            this.btnexit = new System.Windows.Forms.Button();
            this.pnlmenu = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pnlfilm = new System.Windows.Forms.Panel();
            this.pnlanasayfa = new System.Windows.Forms.Panel();
            this.pnlbilet = new System.Windows.Forms.Panel();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.btnsalon = new System.Windows.Forms.Button();
            this.btnabout = new System.Windows.Forms.Button();
            this.btnfilm = new System.Windows.Forms.Button();
            this.btnmain = new System.Windows.Forms.Button();
            this.btnbilet = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pnlup.SuspendLayout();
            this.pnlmenu.SuspendLayout();
            this.panel1.SuspendLayout();
            this.pnlfilm.SuspendLayout();
            this.pnlanasayfa.SuspendLayout();
            this.pnlbilet.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlup
            // 
            this.pnlup.BackColor = System.Drawing.Color.Thistle;
            this.pnlup.Controls.Add(this.pictureBox1);
            this.pnlup.Controls.Add(this.btnmini);
            this.pnlup.Controls.Add(this.btnToggle);
            this.pnlup.Controls.Add(this.btnexit);
            this.pnlup.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlup.Location = new System.Drawing.Point(0, 0);
            this.pnlup.Name = "pnlup";
            this.pnlup.Size = new System.Drawing.Size(962, 40);
            this.pnlup.TabIndex = 0;
            // 
            // btnmini
            // 
            this.btnmini.BackColor = System.Drawing.Color.Green;
            this.btnmini.FlatAppearance.BorderSize = 0;
            this.btnmini.Location = new System.Drawing.Point(1940, 10);
            this.btnmini.Name = "btnmini";
            this.btnmini.Size = new System.Drawing.Size(25, 24);
            this.btnmini.TabIndex = 0;
            this.btnmini.UseVisualStyleBackColor = false;
            this.btnmini.Click += new System.EventHandler(this.btnmini_Click);
            // 
            // btnToggle
            // 
            this.btnToggle.BackColor = System.Drawing.Color.Orange;
            this.btnToggle.FlatAppearance.BorderSize = 0;
            this.btnToggle.Location = new System.Drawing.Point(1970, 10);
            this.btnToggle.Name = "btnToggle";
            this.btnToggle.Size = new System.Drawing.Size(25, 24);
            this.btnToggle.TabIndex = 0;
            this.btnToggle.UseVisualStyleBackColor = false;
            this.btnToggle.Click += new System.EventHandler(this.btnToggle_Click);
            // 
            // btnexit
            // 
            this.btnexit.BackColor = System.Drawing.Color.Red;
            this.btnexit.FlatAppearance.BorderSize = 0;
            this.btnexit.Location = new System.Drawing.Point(2000, 10);
            this.btnexit.Name = "btnexit";
            this.btnexit.Size = new System.Drawing.Size(25, 24);
            this.btnexit.TabIndex = 0;
            this.btnexit.UseVisualStyleBackColor = false;
            this.btnexit.Click += new System.EventHandler(this.btnexit_Click);
            // 
            // pnlmenu
            // 
            this.pnlmenu.BackColor = System.Drawing.Color.LavenderBlush;
            this.pnlmenu.Controls.Add(this.label2);
            this.pnlmenu.Controls.Add(this.label1);
            this.pnlmenu.Controls.Add(this.panel1);
            this.pnlmenu.Controls.Add(this.btnabout);
            this.pnlmenu.Controls.Add(this.pnlfilm);
            this.pnlmenu.Controls.Add(this.pnlanasayfa);
            this.pnlmenu.Controls.Add(this.pnlbilet);
            this.pnlmenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlmenu.Location = new System.Drawing.Point(0, 40);
            this.pnlmenu.Name = "pnlmenu";
            this.pnlmenu.Size = new System.Drawing.Size(220, 669);
            this.pnlmenu.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Yu Gothic UI Semibold", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(98, 978);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 28);
            this.label2.TabIndex = 4;
            this.label2.Text = "label2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Yu Gothic UI Semibold", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(148, 944);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 28);
            this.label1.TabIndex = 3;
            this.label1.Text = "label1";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnsalon);
            this.panel1.Location = new System.Drawing.Point(6, 255);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(194, 66);
            this.panel1.TabIndex = 2;
            // 
            // pnlfilm
            // 
            this.pnlfilm.Controls.Add(this.btnfilm);
            this.pnlfilm.Location = new System.Drawing.Point(6, 183);
            this.pnlfilm.Name = "pnlfilm";
            this.pnlfilm.Size = new System.Drawing.Size(194, 66);
            this.pnlfilm.TabIndex = 0;
            // 
            // pnlanasayfa
            // 
            this.pnlanasayfa.Controls.Add(this.btnmain);
            this.pnlanasayfa.Location = new System.Drawing.Point(6, 39);
            this.pnlanasayfa.Name = "pnlanasayfa";
            this.pnlanasayfa.Size = new System.Drawing.Size(194, 66);
            this.pnlanasayfa.TabIndex = 0;
            // 
            // pnlbilet
            // 
            this.pnlbilet.Controls.Add(this.btnbilet);
            this.pnlbilet.Location = new System.Drawing.Point(6, 111);
            this.pnlbilet.Name = "pnlbilet";
            this.pnlbilet.Size = new System.Drawing.Size(194, 66);
            this.pnlbilet.TabIndex = 0;
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // btnsalon
            // 
            this.btnsalon.BackgroundImage = global::CINElma.Properties.Resources.hall33;
            this.btnsalon.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnsalon.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnsalon.Location = new System.Drawing.Point(3, 2);
            this.btnsalon.Name = "btnsalon";
            this.btnsalon.Size = new System.Drawing.Size(188, 59);
            this.btnsalon.TabIndex = 0;
            this.btnsalon.Text = "Salon İşlemleri";
            this.btnsalon.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnsalon.UseVisualStyleBackColor = true;
            this.btnsalon.Click += new System.EventHandler(this.btnsalon_Click);
            // 
            // btnabout
            // 
            this.btnabout.BackgroundImage = global::CINElma.Properties.Resources.hakkımda11;
            this.btnabout.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnabout.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnabout.Location = new System.Drawing.Point(9, 850);
            this.btnabout.Name = "btnabout";
            this.btnabout.Size = new System.Drawing.Size(188, 59);
            this.btnabout.TabIndex = 0;
            this.btnabout.Text = "                    Hakkında";
            this.btnabout.UseVisualStyleBackColor = true;
            this.btnabout.Click += new System.EventHandler(this.btnabout_Click);
            // 
            // btnfilm
            // 
            this.btnfilm.BackgroundImage = global::CINElma.Properties.Resources.filmlogosu;
            this.btnfilm.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnfilm.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnfilm.Location = new System.Drawing.Point(3, 4);
            this.btnfilm.Name = "btnfilm";
            this.btnfilm.Size = new System.Drawing.Size(188, 59);
            this.btnfilm.TabIndex = 0;
            this.btnfilm.Text = "                    Film İşlemleri";
            this.btnfilm.UseVisualStyleBackColor = true;
            this.btnfilm.Click += new System.EventHandler(this.btnfilm_Click);
            // 
            // btnmain
            // 
            this.btnmain.BackgroundImage = global::CINElma.Properties.Resources.ev11;
            this.btnmain.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnmain.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnmain.Location = new System.Drawing.Point(3, 3);
            this.btnmain.Name = "btnmain";
            this.btnmain.Size = new System.Drawing.Size(188, 59);
            this.btnmain.TabIndex = 0;
            this.btnmain.Text = "                    Ana Sayfa";
            this.btnmain.UseVisualStyleBackColor = true;
            this.btnmain.Click += new System.EventHandler(this.btnmain_Click);
            // 
            // btnbilet
            // 
            this.btnbilet.BackgroundImage = global::CINElma.Properties.Resources.bltlogomor;
            this.btnbilet.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnbilet.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnbilet.Location = new System.Drawing.Point(3, 3);
            this.btnbilet.Name = "btnbilet";
            this.btnbilet.Size = new System.Drawing.Size(188, 59);
            this.btnbilet.TabIndex = 0;
            this.btnbilet.Text = "                    Bilet İşlemleri";
            this.btnbilet.UseVisualStyleBackColor = true;
            this.btnbilet.Click += new System.EventHandler(this.btnbilet_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::CINElma.Properties.Resources.image__10_;
            this.pictureBox1.Location = new System.Drawing.Point(0, 0);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(143, 40);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // CINElma_Main_Page
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(962, 709);
            this.Controls.Add(this.pnlmenu);
            this.Controls.Add(this.pnlup);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "CINElma_Main_Page";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Main Page";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.CINElma_Main_Page_Load);
            this.pnlup.ResumeLayout(false);
            this.pnlmenu.ResumeLayout(false);
            this.pnlmenu.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.pnlfilm.ResumeLayout(false);
            this.pnlanasayfa.ResumeLayout(false);
            this.pnlbilet.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnmini;
        private System.Windows.Forms.Button btnToggle;
        private System.Windows.Forms.Button btnexit;
        private System.Windows.Forms.Panel pnlmenu;
        private System.Windows.Forms.Panel pnlbilet;
        private System.Windows.Forms.Button btnbilet;
        private System.Windows.Forms.Button btnabout;
        private System.Windows.Forms.Panel pnlfilm;
        private System.Windows.Forms.Button btnfilm;
        private System.Windows.Forms.Panel pnlanasayfa;
        private System.Windows.Forms.Button btnmain;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnsalon;
        public System.Windows.Forms.Label label2;
        public System.Windows.Forms.Label label1;
        private System.Windows.Forms.Timer timer1;
    }
}
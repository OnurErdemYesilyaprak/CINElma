namespace CINElma
{
    partial class FilmListesi
    {
        /// <summary> 
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Bileşen Tasarımcısı üretimi kod

        /// <summary> 
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblıd = new System.Windows.Forms.Label();
            this.btndetay = new System.Windows.Forms.Button();
            this.pbresim = new System.Windows.Forms.PictureBox();
            this.lblfilmadı = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbresim)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblıd);
            this.groupBox1.Controls.Add(this.btndetay);
            this.groupBox1.Controls.Add(this.pbresim);
            this.groupBox1.Controls.Add(this.lblfilmadı);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(205, 240);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // lblıd
            // 
            this.lblıd.AutoSize = true;
            this.lblıd.Location = new System.Drawing.Point(6, 171);
            this.lblıd.Name = "lblıd";
            this.lblıd.Size = new System.Drawing.Size(44, 16);
            this.lblıd.TabIndex = 3;
            this.lblıd.Text = "label1";
            this.lblıd.Visible = false;
            // 
            // btndetay
            // 
            this.btndetay.BackColor = System.Drawing.Color.DarkOrange;
            this.btndetay.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btndetay.Location = new System.Drawing.Point(32, 190);
            this.btndetay.Name = "btndetay";
            this.btndetay.Size = new System.Drawing.Size(139, 44);
            this.btndetay.TabIndex = 2;
            this.btndetay.Text = "DETAY";
            this.btndetay.UseVisualStyleBackColor = false;
            this.btndetay.Click += new System.EventHandler(this.btndetay_Click);
            // 
            // pbresim
            // 
            this.pbresim.Image = global::CINElma.Properties.Resources.Black_Retro_Movie_Night_Poster;
            this.pbresim.Location = new System.Drawing.Point(6, 21);
            this.pbresim.Name = "pbresim";
            this.pbresim.Size = new System.Drawing.Size(193, 162);
            this.pbresim.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbresim.TabIndex = 1;
            this.pbresim.TabStop = false;
            // 
            // lblfilmadı
            // 
            this.lblfilmadı.AutoSize = true;
            this.lblfilmadı.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblfilmadı.ForeColor = System.Drawing.Color.Teal;
            this.lblfilmadı.Location = new System.Drawing.Point(6, 0);
            this.lblfilmadı.Name = "lblfilmadı";
            this.lblfilmadı.Size = new System.Drawing.Size(53, 20);
            this.lblfilmadı.TabIndex = 0;
            this.lblfilmadı.Text = "label1";
            // 
            // FilmListesi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox1);
            this.Name = "FilmListesi";
            this.Size = new System.Drawing.Size(205, 240);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbresim)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btndetay;
        public System.Windows.Forms.Label lblfilmadı;
        public System.Windows.Forms.PictureBox pbresim;
        public System.Windows.Forms.Label lblıd;
    }
}

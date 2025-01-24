namespace CINElma
{
    partial class SalonListesi
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblsalonadı = new System.Windows.Forms.Label();
            this.lblkoltuksayısı = new System.Windows.Forms.Label();
            this.lblkoltuk = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.MediumOrchid;
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(10, 93);
            this.panel1.TabIndex = 0;
            this.panel1.MouseLeave += new System.EventHandler(this.ayril);
            this.panel1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.gel);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::CINElma.Properties.Resources.sinemasalonu;
            this.pictureBox1.Location = new System.Drawing.Point(16, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(122, 86);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.MouseLeave += new System.EventHandler(this.ayril);
            this.pictureBox1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.gel);
            // 
            // lblsalonadı
            // 
            this.lblsalonadı.AutoSize = true;
            this.lblsalonadı.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblsalonadı.Location = new System.Drawing.Point(172, 12);
            this.lblsalonadı.Name = "lblsalonadı";
            this.lblsalonadı.Size = new System.Drawing.Size(64, 25);
            this.lblsalonadı.TabIndex = 2;
            this.lblsalonadı.Text = "label1";
            this.lblsalonadı.MouseLeave += new System.EventHandler(this.ayril);
            this.lblsalonadı.MouseMove += new System.Windows.Forms.MouseEventHandler(this.gel);
            // 
            // lblkoltuksayısı
            // 
            this.lblkoltuksayısı.AutoSize = true;
            this.lblkoltuksayısı.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblkoltuksayısı.Location = new System.Drawing.Point(264, 59);
            this.lblkoltuksayısı.Name = "lblkoltuksayısı";
            this.lblkoltuksayısı.Size = new System.Drawing.Size(64, 25);
            this.lblkoltuksayısı.TabIndex = 2;
            this.lblkoltuksayısı.Text = "label1";
            this.lblkoltuksayısı.MouseLeave += new System.EventHandler(this.ayril);
            this.lblkoltuksayısı.MouseMove += new System.Windows.Forms.MouseEventHandler(this.gel);
            // 
            // lblkoltuk
            // 
            this.lblkoltuk.AutoSize = true;
            this.lblkoltuk.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblkoltuk.ForeColor = System.Drawing.Color.Goldenrod;
            this.lblkoltuk.Location = new System.Drawing.Point(143, 59);
            this.lblkoltuk.Name = "lblkoltuk";
            this.lblkoltuk.Size = new System.Drawing.Size(110, 20);
            this.lblkoltuk.TabIndex = 2;
            this.lblkoltuk.Text = "Koltuk Sayısı:";
            this.lblkoltuk.MouseLeave += new System.EventHandler(this.ayril);
            this.lblkoltuk.MouseMove += new System.Windows.Forms.MouseEventHandler(this.gel);
            // 
            // SalonListesi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Thistle;
            this.Controls.Add(this.lblkoltuksayısı);
            this.Controls.Add(this.lblkoltuk);
            this.Controls.Add(this.lblsalonadı);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel1);
            this.Name = "SalonListesi";
            this.Size = new System.Drawing.Size(331, 93);
            this.Load += new System.EventHandler(this.SalonListesi_Load);
            this.MouseLeave += new System.EventHandler(this.ayril);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.gel);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        public System.Windows.Forms.Label lblsalonadı;
        public System.Windows.Forms.Label lblkoltuksayısı;
        public System.Windows.Forms.Label lblkoltuk;
    }
}

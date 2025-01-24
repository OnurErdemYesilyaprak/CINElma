namespace CINElma
{
    partial class OyuncuListesi
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
            this.lbladı = new System.Windows.Forms.Label();
            this.pbekle1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pbekle1)).BeginInit();
            this.SuspendLayout();
            // 
            // lbladı
            // 
            this.lbladı.AutoSize = true;
            this.lbladı.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lbladı.ForeColor = System.Drawing.Color.Teal;
            this.lbladı.Location = new System.Drawing.Point(38, 0);
            this.lbladı.Name = "lbladı";
            this.lbladı.Padding = new System.Windows.Forms.Padding(0, 5, 0, 0);
            this.lbladı.Size = new System.Drawing.Size(64, 30);
            this.lbladı.TabIndex = 0;
            this.lbladı.Text = "label1";
            this.lbladı.Click += new System.EventHandler(this.lbladı_Click);
            // 
            // pbekle1
            // 
            this.pbekle1.Dock = System.Windows.Forms.DockStyle.Left;
            this.pbekle1.Image = global::CINElma.Properties.Resources.plus;
            this.pbekle1.Location = new System.Drawing.Point(0, 0);
            this.pbekle1.Name = "pbekle1";
            this.pbekle1.Size = new System.Drawing.Size(32, 31);
            this.pbekle1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbekle1.TabIndex = 1;
            this.pbekle1.TabStop = false;
            // 
            // OyuncuListesi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.pbekle1);
            this.Controls.Add(this.lbladı);
            this.Name = "OyuncuListesi";
            this.Size = new System.Drawing.Size(188, 31);
            this.Load += new System.EventHandler(this.OyuncuListesi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pbekle1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.PictureBox pbekle1;
        public System.Windows.Forms.Label lbladı;
    }
}

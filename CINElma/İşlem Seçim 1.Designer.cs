namespace CINElma
{
    partial class İşlem_Seçim_1
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
            this.pnlup = new System.Windows.Forms.Panel();
            this.btnexit = new System.Windows.Forms.Button();
            this.btnoluştur = new System.Windows.Forms.Button();
            this.btnsorgula = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pnlup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlup
            // 
            this.pnlup.BackColor = System.Drawing.Color.Thistle;
            this.pnlup.Controls.Add(this.pictureBox1);
            this.pnlup.Controls.Add(this.btnexit);
            this.pnlup.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlup.Location = new System.Drawing.Point(0, 0);
            this.pnlup.Name = "pnlup";
            this.pnlup.Size = new System.Drawing.Size(636, 40);
            this.pnlup.TabIndex = 3;
            // 
            // btnexit
            // 
            this.btnexit.BackColor = System.Drawing.Color.Red;
            this.btnexit.FlatAppearance.BorderSize = 0;
            this.btnexit.Location = new System.Drawing.Point(597, 6);
            this.btnexit.Name = "btnexit";
            this.btnexit.Size = new System.Drawing.Size(29, 28);
            this.btnexit.TabIndex = 0;
            this.btnexit.UseVisualStyleBackColor = false;
            this.btnexit.Click += new System.EventHandler(this.btnexit_Click);
            // 
            // btnoluştur
            // 
            this.btnoluştur.BackColor = System.Drawing.Color.SandyBrown;
            this.btnoluştur.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnoluştur.Location = new System.Drawing.Point(195, 112);
            this.btnoluştur.Name = "btnoluştur";
            this.btnoluştur.Size = new System.Drawing.Size(103, 51);
            this.btnoluştur.TabIndex = 4;
            this.btnoluştur.Text = "Bilet Oluştur";
            this.btnoluştur.UseVisualStyleBackColor = false;
            this.btnoluştur.Click += new System.EventHandler(this.btnoluştur_Click);
            // 
            // btnsorgula
            // 
            this.btnsorgula.BackColor = System.Drawing.Color.SandyBrown;
            this.btnsorgula.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnsorgula.Location = new System.Drawing.Point(355, 112);
            this.btnsorgula.Name = "btnsorgula";
            this.btnsorgula.Size = new System.Drawing.Size(103, 51);
            this.btnsorgula.TabIndex = 5;
            this.btnsorgula.Text = "Bilet Sorgula";
            this.btnsorgula.UseVisualStyleBackColor = false;
            this.btnsorgula.Click += new System.EventHandler(this.btnsorgula_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("MV Boli", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(79, 62);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(475, 29);
            this.label1.TabIndex = 6;
            this.label1.Text = "Lütfen Yapmak İstediğiniz İşlemi Seçiniz";
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
            // İşlem_Seçim_1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LavenderBlush;
            this.ClientSize = new System.Drawing.Size(636, 184);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnsorgula);
            this.Controls.Add(this.btnoluştur);
            this.Controls.Add(this.pnlup);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Location = new System.Drawing.Point(550, 270);
            this.Name = "İşlem_Seçim_1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "İşlem_Seçim_1";
            this.pnlup.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel pnlup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnexit;
        private System.Windows.Forms.Button btnoluştur;
        private System.Windows.Forms.Button btnsorgula;
        private System.Windows.Forms.Label label1;
    }
}
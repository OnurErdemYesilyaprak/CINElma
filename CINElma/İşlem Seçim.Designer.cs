namespace CINElma
{
    partial class İşlem_Seçim
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
            this.label1 = new System.Windows.Forms.Label();
            this.btnkayıt = new System.Windows.Forms.Button();
            this.btndetay = new System.Windows.Forms.Button();
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
            this.pnlup.TabIndex = 5;
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
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("MV Boli", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(97, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(435, 29);
            this.label1.TabIndex = 6;
            this.label1.Text = "Lütfen Yapmak İstediğiniz İşlemi Seçiniz";
            // 
            // btnkayıt
            // 
            this.btnkayıt.BackColor = System.Drawing.Color.SandyBrown;
            this.btnkayıt.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnkayıt.ForeColor = System.Drawing.Color.MediumBlue;
            this.btnkayıt.Location = new System.Drawing.Point(192, 121);
            this.btnkayıt.Name = "btnkayıt";
            this.btnkayıt.Size = new System.Drawing.Size(103, 51);
            this.btnkayıt.TabIndex = 7;
            this.btnkayıt.Text = "Film Kayıt";
            this.btnkayıt.UseVisualStyleBackColor = false;
            this.btnkayıt.Click += new System.EventHandler(this.btnkayıt_Click);
            // 
            // btndetay
            // 
            this.btndetay.BackColor = System.Drawing.Color.SandyBrown;
            this.btndetay.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btndetay.ForeColor = System.Drawing.Color.MediumBlue;
            this.btndetay.Location = new System.Drawing.Point(360, 121);
            this.btndetay.Name = "btndetay";
            this.btndetay.Size = new System.Drawing.Size(103, 51);
            this.btndetay.TabIndex = 8;
            this.btndetay.Text = "Film Detay";
            this.btndetay.UseVisualStyleBackColor = false;
            this.btndetay.Click += new System.EventHandler(this.btndetay_Click);
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
            // İşlem_Seçim
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LavenderBlush;
            this.ClientSize = new System.Drawing.Size(636, 184);
            this.Controls.Add(this.btndetay);
            this.Controls.Add(this.btnkayıt);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pnlup);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Location = new System.Drawing.Point(550, 270);
            this.Name = "İşlem_Seçim";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "İşlem_Seçim";
            this.Load += new System.EventHandler(this.İşlem_Seçim_Load);
            this.pnlup.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel pnlup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnexit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnkayıt;
        private System.Windows.Forms.Button btndetay;
    }
}
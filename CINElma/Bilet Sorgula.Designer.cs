namespace CINElma
{
    partial class Bilet_Sorgula
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
            this.label2 = new System.Windows.Forms.Label();
            this.txtbiletno = new System.Windows.Forms.TextBox();
            this.btnsorgula = new System.Windows.Forms.Button();
            this.pnlup = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnexit = new System.Windows.Forms.Button();
            this.pnlup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.ForeColor = System.Drawing.Color.IndianRed;
            this.label2.Location = new System.Drawing.Point(68, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(179, 29);
            this.label2.TabIndex = 0;
            this.label2.Text = "Bilet Numarası";
            // 
            // txtbiletno
            // 
            this.txtbiletno.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtbiletno.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtbiletno.Location = new System.Drawing.Point(253, 60);
            this.txtbiletno.MaxLength = 11;
            this.txtbiletno.Multiline = true;
            this.txtbiletno.Name = "txtbiletno";
            this.txtbiletno.Size = new System.Drawing.Size(214, 30);
            this.txtbiletno.TabIndex = 1;
            // 
            // btnsorgula
            // 
            this.btnsorgula.BackColor = System.Drawing.Color.SeaGreen;
            this.btnsorgula.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnsorgula.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnsorgula.ForeColor = System.Drawing.Color.Black;
            this.btnsorgula.Location = new System.Drawing.Point(283, 96);
            this.btnsorgula.Name = "btnsorgula";
            this.btnsorgula.Size = new System.Drawing.Size(158, 61);
            this.btnsorgula.TabIndex = 2;
            this.btnsorgula.Text = "SORGULA";
            this.btnsorgula.UseVisualStyleBackColor = false;
            this.btnsorgula.Click += new System.EventHandler(this.btnsorgula_Click);
            // 
            // pnlup
            // 
            this.pnlup.BackColor = System.Drawing.Color.Thistle;
            this.pnlup.Controls.Add(this.pictureBox1);
            this.pnlup.Controls.Add(this.btnexit);
            this.pnlup.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlup.Location = new System.Drawing.Point(0, 0);
            this.pnlup.Name = "pnlup";
            this.pnlup.Size = new System.Drawing.Size(530, 40);
            this.pnlup.TabIndex = 4;
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
            // btnexit
            // 
            this.btnexit.BackColor = System.Drawing.Color.Red;
            this.btnexit.FlatAppearance.BorderSize = 0;
            this.btnexit.Location = new System.Drawing.Point(489, 6);
            this.btnexit.Name = "btnexit";
            this.btnexit.Size = new System.Drawing.Size(29, 28);
            this.btnexit.TabIndex = 0;
            this.btnexit.UseVisualStyleBackColor = false;
            this.btnexit.Click += new System.EventHandler(this.btnexit_Click);
            // 
            // Bilet_Sorgula
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LavenderBlush;
            this.ClientSize = new System.Drawing.Size(530, 212);
            this.Controls.Add(this.pnlup);
            this.Controls.Add(this.btnsorgula);
            this.Controls.Add(this.txtbiletno);
            this.Controls.Add(this.label2);
            this.ForeColor = System.Drawing.Color.White;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Location = new System.Drawing.Point(625, 80);
            this.Name = "Bilet_Sorgula";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Bilet_Sorgula";
            this.Load += new System.EventHandler(this.Bilet_Sorgula_Load);
            this.pnlup.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtbiletno;
        private System.Windows.Forms.Button btnsorgula;
        private System.Windows.Forms.Panel pnlup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnexit;
    }
}
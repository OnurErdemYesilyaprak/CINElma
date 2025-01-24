using System.Windows.Forms;

namespace CINElma
{
    partial class Film_Detay
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnmini = new System.Windows.Forms.Button();
            this.btnToggle = new System.Windows.Forms.Button();
            this.btnexit = new System.Windows.Forms.Button();
            this.gbfilmliste = new System.Windows.Forms.GroupBox();
            this.flpfilmliste = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtara = new System.Windows.Forms.TextBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pnlup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.gbfilmliste.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
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
            this.pnlup.Size = new System.Drawing.Size(960, 40);
            this.pnlup.TabIndex = 6;
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
            // btnmini
            // 
            this.btnmini.BackColor = System.Drawing.Color.Green;
            this.btnmini.FlatAppearance.BorderSize = 0;
            this.btnmini.Location = new System.Drawing.Point(864, 10);
            this.btnmini.Name = "btnmini";
            this.btnmini.Size = new System.Drawing.Size(24, 23);
            this.btnmini.TabIndex = 0;
            this.btnmini.UseVisualStyleBackColor = false;
            this.btnmini.Click += new System.EventHandler(this.btnmini_Click);
            // 
            // btnToggle
            // 
            this.btnToggle.BackColor = System.Drawing.Color.Orange;
            this.btnToggle.FlatAppearance.BorderSize = 0;
            this.btnToggle.Location = new System.Drawing.Point(894, 10);
            this.btnToggle.Name = "btnToggle";
            this.btnToggle.Size = new System.Drawing.Size(24, 23);
            this.btnToggle.TabIndex = 0;
            this.btnToggle.UseVisualStyleBackColor = false;
            this.btnToggle.Click += new System.EventHandler(this.btnToggle_Click);
            // 
            // btnexit
            // 
            this.btnexit.BackColor = System.Drawing.Color.Red;
            this.btnexit.FlatAppearance.BorderSize = 0;
            this.btnexit.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnexit.Location = new System.Drawing.Point(924, 10);
            this.btnexit.Name = "btnexit";
            this.btnexit.Size = new System.Drawing.Size(24, 23);
            this.btnexit.TabIndex = 0;
            this.btnexit.UseVisualStyleBackColor = false;
            this.btnexit.Click += new System.EventHandler(this.btnexit_Click);
            // 
            // gbfilmliste
            // 
            this.gbfilmliste.Controls.Add(this.flpfilmliste);
            this.gbfilmliste.Location = new System.Drawing.Point(158, 142);
            this.gbfilmliste.Name = "gbfilmliste";
            this.gbfilmliste.Size = new System.Drawing.Size(661, 445);
            this.gbfilmliste.TabIndex = 7;
            this.gbfilmliste.TabStop = false;
            // 
            // flpfilmliste
            // 
            this.flpfilmliste.AutoScroll = true;
            this.flpfilmliste.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpfilmliste.Location = new System.Drawing.Point(3, 18);
            this.flpfilmliste.Name = "flpfilmliste";
            this.flpfilmliste.Size = new System.Drawing.Size(655, 424);
            this.flpfilmliste.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txtara);
            this.panel1.Controls.Add(this.pictureBox2);
            this.panel1.Location = new System.Drawing.Point(161, 99);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(655, 37);
            this.panel1.TabIndex = 8;
            // 
            // txtara
            // 
            this.txtara.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtara.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtara.ForeColor = System.Drawing.Color.Gray;
            this.txtara.Location = new System.Drawing.Point(475, 7);
            this.txtara.Name = "txtara";
            this.txtara.Size = new System.Drawing.Size(177, 29);
            this.txtara.TabIndex = 4;
            this.txtara.Text = "Arama Yapın...";
            this.txtara.TextChanged += new System.EventHandler(this.txtara_TextChanged);
            this.txtara.Enter += new System.EventHandler(this.txtara_Enter);
            this.txtara.Leave += new System.EventHandler(this.txtara_Leave);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::CINElma.Properties.Resources.glass;
            this.pictureBox2.Location = new System.Drawing.Point(435, 3);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(34, 32);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 3;
            this.pictureBox2.TabStop = false;
            // 
            // Film_Detay
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LavenderBlush;
            this.ClientSize = new System.Drawing.Size(960, 694);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.gbfilmliste);
            this.Controls.Add(this.pnlup);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Location = new System.Drawing.Point(350, 125);
            this.Name = "Film_Detay";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Film_Detay";
            this.Load += new System.EventHandler(this.Film_Detay_Load);
            this.pnlup.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.gbfilmliste.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnmini;
        private System.Windows.Forms.Button btnToggle;
        private System.Windows.Forms.Button btnexit;
        private System.Windows.Forms.GroupBox gbfilmliste;
        private System.Windows.Forms.Panel panel1;
        private PictureBox pictureBox2;
        private TextBox txtara;
        private FlowLayoutPanel flpfilmliste;
    }
}
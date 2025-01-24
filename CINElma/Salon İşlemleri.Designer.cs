namespace CINElma
{
    partial class Salon_İşlemleri
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
            this.btnmini = new System.Windows.Forms.Button();
            this.btnToggle = new System.Windows.Forms.Button();
            this.btnexit = new System.Windows.Forms.Button();
            this.gbsalon = new System.Windows.Forms.GroupBox();
            this.btnadd = new System.Windows.Forms.Button();
            this.gbseatcount = new System.Windows.Forms.GroupBox();
            this.cbseatcount = new System.Windows.Forms.ComboBox();
            this.gbhallname = new System.Windows.Forms.GroupBox();
            this.txthallname = new System.Windows.Forms.TextBox();
            this.gbsalonliste = new System.Windows.Forms.GroupBox();
            this.panelsalon = new System.Windows.Forms.FlowLayoutPanel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pnlup.SuspendLayout();
            this.gbsalon.SuspendLayout();
            this.gbseatcount.SuspendLayout();
            this.gbhallname.SuspendLayout();
            this.gbsalonliste.SuspendLayout();
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
            this.pnlup.Size = new System.Drawing.Size(960, 40);
            this.pnlup.TabIndex = 4;
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
            this.btnexit.Location = new System.Drawing.Point(924, 10);
            this.btnexit.Name = "btnexit";
            this.btnexit.Size = new System.Drawing.Size(24, 23);
            this.btnexit.TabIndex = 0;
            this.btnexit.UseVisualStyleBackColor = false;
            this.btnexit.Click += new System.EventHandler(this.btnexit_Click);
            // 
            // gbsalon
            // 
            this.gbsalon.Controls.Add(this.btnadd);
            this.gbsalon.Controls.Add(this.gbseatcount);
            this.gbsalon.Controls.Add(this.gbhallname);
            this.gbsalon.Location = new System.Drawing.Point(199, 75);
            this.gbsalon.Name = "gbsalon";
            this.gbsalon.Size = new System.Drawing.Size(578, 146);
            this.gbsalon.TabIndex = 5;
            this.gbsalon.TabStop = false;
            // 
            // btnadd
            // 
            this.btnadd.BackColor = System.Drawing.Color.SeaGreen;
            this.btnadd.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnadd.Location = new System.Drawing.Point(223, 97);
            this.btnadd.Name = "btnadd";
            this.btnadd.Size = new System.Drawing.Size(133, 43);
            this.btnadd.TabIndex = 4;
            this.btnadd.Text = "ADD";
            this.btnadd.UseVisualStyleBackColor = false;
            this.btnadd.Click += new System.EventHandler(this.btnadd_Click);
            // 
            // gbseatcount
            // 
            this.gbseatcount.Controls.Add(this.cbseatcount);
            this.gbseatcount.ForeColor = System.Drawing.Color.Teal;
            this.gbseatcount.Location = new System.Drawing.Point(318, 46);
            this.gbseatcount.Name = "gbseatcount";
            this.gbseatcount.Size = new System.Drawing.Size(197, 45);
            this.gbseatcount.TabIndex = 3;
            this.gbseatcount.TabStop = false;
            this.gbseatcount.Text = "SEAT COUNT";
            // 
            // cbseatcount
            // 
            this.cbseatcount.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.cbseatcount.FormattingEnabled = true;
            this.cbseatcount.Location = new System.Drawing.Point(3, 18);
            this.cbseatcount.Name = "cbseatcount";
            this.cbseatcount.Size = new System.Drawing.Size(191, 24);
            this.cbseatcount.TabIndex = 1;
            // 
            // gbhallname
            // 
            this.gbhallname.Controls.Add(this.txthallname);
            this.gbhallname.ForeColor = System.Drawing.Color.Teal;
            this.gbhallname.Location = new System.Drawing.Point(70, 46);
            this.gbhallname.Name = "gbhallname";
            this.gbhallname.Size = new System.Drawing.Size(197, 45);
            this.gbhallname.TabIndex = 2;
            this.gbhallname.TabStop = false;
            this.gbhallname.Text = "HALL NAME";
            // 
            // txthallname
            // 
            this.txthallname.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.txthallname.Location = new System.Drawing.Point(3, 20);
            this.txthallname.Name = "txthallname";
            this.txthallname.Size = new System.Drawing.Size(191, 22);
            this.txthallname.TabIndex = 6;
            // 
            // gbsalonliste
            // 
            this.gbsalonliste.Controls.Add(this.panelsalon);
            this.gbsalonliste.Location = new System.Drawing.Point(150, 241);
            this.gbsalonliste.Name = "gbsalonliste";
            this.gbsalonliste.Size = new System.Drawing.Size(680, 427);
            this.gbsalonliste.TabIndex = 6;
            this.gbsalonliste.TabStop = false;
            // 
            // panelsalon
            // 
            this.panelsalon.AutoScroll = true;
            this.panelsalon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelsalon.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.panelsalon.Location = new System.Drawing.Point(3, 18);
            this.panelsalon.Name = "panelsalon";
            this.panelsalon.Size = new System.Drawing.Size(674, 406);
            this.panelsalon.TabIndex = 0;
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
            // Salon_İşlemleri
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LavenderBlush;
            this.ClientSize = new System.Drawing.Size(960, 694);
            this.Controls.Add(this.gbsalonliste);
            this.Controls.Add(this.gbsalon);
            this.Controls.Add(this.pnlup);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Location = new System.Drawing.Point(350, 125);
            this.Name = "Salon_İşlemleri";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Salon_İşlemleri";
            this.Load += new System.EventHandler(this.Salon_İşlemleri_Load);
            this.pnlup.ResumeLayout(false);
            this.gbsalon.ResumeLayout(false);
            this.gbseatcount.ResumeLayout(false);
            this.gbhallname.ResumeLayout(false);
            this.gbhallname.PerformLayout();
            this.gbsalonliste.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlup;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnmini;
        private System.Windows.Forms.Button btnToggle;
        private System.Windows.Forms.Button btnexit;
        private System.Windows.Forms.GroupBox gbsalon;
        private System.Windows.Forms.GroupBox gbseatcount;
        private System.Windows.Forms.ComboBox cbseatcount;
        private System.Windows.Forms.GroupBox gbhallname;
        private System.Windows.Forms.TextBox txthallname;
        private System.Windows.Forms.Button btnadd;
        private System.Windows.Forms.GroupBox gbsalonliste;
        private System.Windows.Forms.FlowLayoutPanel panelsalon;
    }
}
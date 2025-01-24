using System;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace CINElma
{
    partial class CINElma
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

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CINElma));
            this.pnllogin = new System.Windows.Forms.Panel();
            this.txtpassword = new System.Windows.Forms.TextBox();
            this.lblsign = new System.Windows.Forms.Label();
            this.btnsign = new System.Windows.Forms.Button();
            this.txtUserName = new System.Windows.Forms.RichTextBox();
            this.pnlup = new System.Windows.Forms.Panel();
            this.btnmini = new System.Windows.Forms.Button();
            this.btnToggle = new System.Windows.Forms.Button();
            this.btnexit = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pictureBoxwelcome = new System.Windows.Forms.PictureBox();
            this.pictureBoxpassword = new System.Windows.Forms.PictureBox();
            this.pictureBoxuser = new System.Windows.Forms.PictureBox();
            this.pictureboxlogin = new System.Windows.Forms.PictureBox();
            this.pnllogin.SuspendLayout();
            this.pnlup.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxwelcome)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxpassword)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxuser)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxlogin)).BeginInit();
            this.SuspendLayout();
            // 
            // pnllogin
            // 
            this.pnllogin.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.pnllogin.BackColor = System.Drawing.Color.Plum;
            this.pnllogin.Controls.Add(this.txtpassword);
            this.pnllogin.Controls.Add(this.pictureBoxpassword);
            this.pnllogin.Controls.Add(this.pictureBoxuser);
            this.pnllogin.Controls.Add(this.lblsign);
            this.pnllogin.Controls.Add(this.btnsign);
            this.pnllogin.Controls.Add(this.txtUserName);
            this.pnllogin.Font = new System.Drawing.Font("Niagara Engraved", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.pnllogin.Location = new System.Drawing.Point(164, 330);
            this.pnllogin.Name = "pnllogin";
            this.pnllogin.Size = new System.Drawing.Size(346, 244);
            this.pnllogin.TabIndex = 0;
            // 
            // txtpassword
            // 
            this.txtpassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtpassword.Font = new System.Drawing.Font("Niagara Engraved", 9.7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtpassword.ForeColor = System.Drawing.Color.Gray;
            this.txtpassword.Location = new System.Drawing.Point(65, 136);
            this.txtpassword.Multiline = true;
            this.txtpassword.Name = "txtpassword";
            this.txtpassword.PasswordChar = '*';
            this.txtpassword.Size = new System.Drawing.Size(235, 27);
            this.txtpassword.TabIndex = 2;
            this.txtpassword.Text = "Password";
            this.txtpassword.Enter += new System.EventHandler(this.txtpassword_Enter_1);
            this.txtpassword.Leave += new System.EventHandler(this.txtpassword_Leave_1);
            // 
            // lblsign
            // 
            this.lblsign.AutoSize = true;
            this.lblsign.Font = new System.Drawing.Font("Arial", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.lblsign.ForeColor = System.Drawing.Color.RoyalBlue;
            this.lblsign.Location = new System.Drawing.Point(129, 26);
            this.lblsign.Name = "lblsign";
            this.lblsign.Size = new System.Drawing.Size(96, 30);
            this.lblsign.TabIndex = 5;
            this.lblsign.Text = "Sign In";
            // 
            // btnsign
            // 
            this.btnsign.Location = new System.Drawing.Point(81, 176);
            this.btnsign.Name = "btnsign";
            this.btnsign.Size = new System.Drawing.Size(200, 26);
            this.btnsign.TabIndex = 3;
            this.btnsign.Text = "Login";
            this.btnsign.UseVisualStyleBackColor = true;
            this.btnsign.Click += new System.EventHandler(this.btnsign_Click);
            // 
            // txtUserName
            // 
            this.txtUserName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtUserName.Font = new System.Drawing.Font("Niagara Engraved", 9.7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtUserName.ForeColor = System.Drawing.Color.Gray;
            this.txtUserName.Location = new System.Drawing.Point(64, 88);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(235, 27);
            this.txtUserName.TabIndex = 1;
            this.txtUserName.Text = "Username";
            this.txtUserName.Enter += new System.EventHandler(this.txtUserName_Enter);
            this.txtUserName.Leave += new System.EventHandler(this.txtUserName_Leave);
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
            this.pnlup.Size = new System.Drawing.Size(678, 40);
            this.pnlup.TabIndex = 2;
            // 
            // btnmini
            // 
            this.btnmini.BackColor = System.Drawing.Color.Green;
            this.btnmini.FlatAppearance.BorderSize = 0;
            this.btnmini.Location = new System.Drawing.Point(595, 10);
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
            this.btnToggle.Location = new System.Drawing.Point(621, 10);
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
            this.btnexit.Location = new System.Drawing.Point(646, 10);
            this.btnexit.Name = "btnexit";
            this.btnexit.Size = new System.Drawing.Size(24, 23);
            this.btnexit.TabIndex = 0;
            this.btnexit.UseVisualStyleBackColor = false;
            this.btnexit.Click += new System.EventHandler(this.btnexit_Click);
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
            // pictureBoxwelcome
            // 
            this.pictureBoxwelcome.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.pictureBoxwelcome.Image = ((System.Drawing.Image)(resources.GetObject("pictureBoxwelcome.Image")));
            this.pictureBoxwelcome.Location = new System.Drawing.Point(228, 190);
            this.pictureBoxwelcome.Name = "pictureBoxwelcome";
            this.pictureBoxwelcome.Size = new System.Drawing.Size(224, 106);
            this.pictureBoxwelcome.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBoxwelcome.TabIndex = 1;
            this.pictureBoxwelcome.TabStop = false;
            // 
            // pictureBoxpassword
            // 
            this.pictureBoxpassword.Image = ((System.Drawing.Image)(resources.GetObject("pictureBoxpassword.Image")));
            this.pictureBoxpassword.Location = new System.Drawing.Point(31, 136);
            this.pictureBoxpassword.Name = "pictureBoxpassword";
            this.pictureBoxpassword.Size = new System.Drawing.Size(27, 27);
            this.pictureBoxpassword.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBoxpassword.TabIndex = 6;
            this.pictureBoxpassword.TabStop = false;
            // 
            // pictureBoxuser
            // 
            this.pictureBoxuser.Image = ((System.Drawing.Image)(resources.GetObject("pictureBoxuser.Image")));
            this.pictureBoxuser.Location = new System.Drawing.Point(31, 88);
            this.pictureBoxuser.Name = "pictureBoxuser";
            this.pictureBoxuser.Size = new System.Drawing.Size(27, 27);
            this.pictureBoxuser.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBoxuser.TabIndex = 6;
            this.pictureBoxuser.TabStop = false;
            // 
            // pictureboxlogin
            // 
            this.pictureboxlogin.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pictureboxlogin.BackColor = System.Drawing.Color.Black;
            this.pictureboxlogin.Image = ((System.Drawing.Image)(resources.GetObject("pictureboxlogin.Image")));
            this.pictureboxlogin.Location = new System.Drawing.Point(0, 0);
            this.pictureboxlogin.Name = "pictureboxlogin";
            this.pictureboxlogin.Size = new System.Drawing.Size(680, 621);
            this.pictureboxlogin.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureboxlogin.TabIndex = 0;
            this.pictureboxlogin.TabStop = false;
            this.pictureboxlogin.Click += new System.EventHandler(this.pictureboxlogin_Click);
            // 
            // CINElma
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(678, 619);
            this.Controls.Add(this.pnlup);
            this.Controls.Add(this.pictureBoxwelcome);
            this.Controls.Add(this.pnllogin);
            this.Controls.Add(this.pictureboxlogin);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "CINElma";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "CINElma";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.pnllogin.ResumeLayout(false);
            this.pnllogin.PerformLayout();
            this.pnlup.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxwelcome)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxpassword)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBoxuser)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxlogin)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureboxlogin;
        private System.Windows.Forms.Panel pnllogin;
        private RichTextBox txtUserName;
        private Label lblsign;
        private System.Windows.Forms.Button btnsign;
        private PictureBox pictureBoxpassword;
        private PictureBox pictureBoxuser;
        private PictureBox pictureBoxwelcome;
        private Panel pnlup;
        private System.Windows.Forms.Button btnexit;
        private System.Windows.Forms.Button btnmini;
        private System.Windows.Forms.Button btnToggle;
        private PictureBox pictureBox1;
        private System.Windows.Forms.TextBox txtpassword;
    }
}


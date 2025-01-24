using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace CINElma
{
    public partial class CINElma : Form
    {
        public CINElma()
        {
           
            InitializeComponent();
       
        }

        SqlConnection connection = new SqlConnection(@"Data Source = .\SQLEXPRESS; Initial Catalog = CINElmaDB ; Integrated Security = True");
        
        private void Form1_Load(object sender, EventArgs e)
        {
            SetRoundedCorners(pnllogin, 30); 
            this.ActiveControl = lblsign;

        }

            
        



        

        public void SetRoundedCorners(Panel panel, int cornerRadius)
        {
            
            var path = new System.Drawing.Drawing2D.GraphicsPath();

            
            path.AddArc(0, 0, cornerRadius, cornerRadius, 180, 90); 
            path.AddArc(panel.Width - cornerRadius, 0, cornerRadius, cornerRadius, 270, 90); 
            path.AddArc(panel.Width - cornerRadius, panel.Height - cornerRadius, cornerRadius, cornerRadius, 0, 90); 
            path.AddArc(0, panel.Height - cornerRadius, cornerRadius, cornerRadius, 90, 90); 
            path.CloseFigure();

            
            panel.Region = new Region(path);
        }

        private void btnsign_Click(object sender, EventArgs e)
        {
            
            connection.Open();


            SqlCommand command = new SqlCommand("select * from tbl_Users WHERE Username = @p1 AND Password = @p2 ",connection);

            command.Parameters.AddWithValue("@p1", txtUserName.Text);
            command.Parameters.AddWithValue("@p2", txtpassword.Text);


            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                CINElma_Main_Page main = new CINElma_Main_Page();
                main.Show();
                main.TriggerButtonClick();
                

            }
            else
            {
                MessageBox.Show("Kullanıcı adı ya da şifre hatalı!","UYARI",MessageBoxButtons.OK,MessageBoxIcon.Error);

            }
            

            connection.Close();
            

        }

        private void txtUserName_Enter(object sender, EventArgs e)
        {
            RichTextBox t1 = (RichTextBox)sender;

            if (t1.Text == "Username") 
            {
                t1.Text = string.Empty; 
                t1.ForeColor = Color.Black; 
            }
        }
        private void txtUserName_Leave(object sender, EventArgs e)
        {
            RichTextBox t1 = (RichTextBox)sender;

            if(string.IsNullOrWhiteSpace(t1.Text)) 
            {
                t1.Text = "Username"; 
                t1.ForeColor = Color.Gray; 
            }
        }



        private void btnexit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnmini_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;

        }

        private void btnToggle_Click(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Normal)
            {
                this.WindowState = FormWindowState.Maximized; 
            }
            else if (this.WindowState == FormWindowState.Maximized)
            {
                this.WindowState = FormWindowState.Normal; 
            }
        }

        private void txtpassword_Enter_1(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;

            if (t1.Text == "Password")
            {
                t1.Text = string.Empty;
                t1.ForeColor = Color.Black;
            }
        }

        private void txtpassword_Leave_1(object sender, EventArgs e)
        {
            TextBox t1 = (TextBox)sender;

            if (string.IsNullOrWhiteSpace(t1.Text))
            {
                t1.Text = "Password";
                t1.ForeColor = Color.Gray;
            }
        }

        private void pictureboxlogin_Click(object sender, EventArgs e)
        {

        }






        //string password = ""; // Şifreyi saklayacak değişken
        //private void txtpassword_KeyPress(object sender, KeyPressEventArgs e)
        //{

        //    password += e.KeyChar;

        //    // Ekranda sadece yıldız göster
        //    e.Handled = true;
        //    txtpassword.AppendText("*");

        //}
    }

    
}

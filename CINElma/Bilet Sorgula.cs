using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CINElma
{
    public partial class Bilet_Sorgula : Form
    {
        public Bilet_Sorgula()
        {
            InitializeComponent();
        }

        private void Bilet_Sorgula_Load(object sender, EventArgs e)
        {

        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnsorgula_Click(object sender, EventArgs e)
        {
            Bilet_Detay bilet_Detay = new Bilet_Detay();
            bilet_Detay.biletno = txtbiletno.Text;
            txtbiletno.Text = "";
            bilet_Detay.ShowDialog();
        }
    }
}

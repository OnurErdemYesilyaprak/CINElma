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
    public partial class İşlem_Seçim_1 : Form
    {
        public İşlem_Seçim_1()
        {
            InitializeComponent();
        }

        private void btnoluştur_Click(object sender, EventArgs e)
        {
            this.Hide();
            Bilet_İşlemleri bilet_İşlemleri = new Bilet_İşlemleri()
            {
                Owner = this,
            };
            bilet_İşlemleri.ShowDialog();
            
        }

        private void btnsorgula_Click(object sender, EventArgs e)
        {
            this.Hide();
            Bilet_Sorgula bilet_Sorgula = new Bilet_Sorgula()
            {
                Owner = this,
            };
            
            bilet_Sorgula.ShowDialog();
            
            
            
        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

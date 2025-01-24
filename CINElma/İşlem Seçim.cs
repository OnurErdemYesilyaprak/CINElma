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
    public partial class İşlem_Seçim : Form
    {
        public İşlem_Seçim()
        {
            InitializeComponent();
        }

        private void İşlem_Seçim_Load(object sender, EventArgs e)
        {
           
        }

        private void btnkayıt_Click(object sender, EventArgs e)
        {
            Film_Kayıt film_Kayıt = new Film_Kayıt();
            film_Kayıt.ShowDialog();
            this.Close();
            
        }

        private void btndetay_Click(object sender, EventArgs e)
        {
            Film_Detay film_Detay = new Film_Detay();
            film_Detay.ShowDialog();
            this.Close();
        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

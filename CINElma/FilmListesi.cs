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
    public partial class FilmListesi : UserControl
    {
        public FilmListesi()
        {
            InitializeComponent();
        }

        private void btndetay_Click(object sender, EventArgs e)
        {
            FilmDetaySayfası filmDetaySayfası = new FilmDetaySayfası();
            filmDetaySayfası.ıdno = lblıd.Text;
            filmDetaySayfası.ShowDialog();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}

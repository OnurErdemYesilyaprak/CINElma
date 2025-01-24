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
    public partial class SalonListesi : UserControl
    {
        public SalonListesi()
        {
            InitializeComponent();
        }

        private void gel(object sender, MouseEventArgs e)
        {
            lblsalonadı.ForeColor = Color.CadetBlue;
        }

        private void ayril(object sender, EventArgs e)
        {
            lblsalonadı.ForeColor= Color.Black;
        }

        private void SalonListesi_Load(object sender, EventArgs e)
        {

        }
    }
}

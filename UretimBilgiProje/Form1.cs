using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UretimBilgiProje
{
    public partial class Form1 : Form
    {
        kutuphaneDBEntities entity = new kutuphaneDBEntities();

        public Form1()
        {
            InitializeComponent();
        }

        private void btn_GorevliGiris_Click(object sender, EventArgs e)
        {
            if(entity.SP_gorevliLogin(txt_GorevliTC.Text, txt_GorevliSifre.Text).
                ToList().First().Count() != 0)
            {
                this.Hide();
                Form2 newForm = new Form2();
                newForm.ShowDialog();
            }
        }

        private void txt_UyeGiris_Click(object sender, EventArgs e)
        {
            if (entity.SP_uyeLogin(txt_UyeTC.Text, txt_UyeSifre.Text).
                ToList().First().Count() != 0)
            {
                this.Hide();
                Form2 newForm = new Form2();
                newForm.ShowDialog();
            }
        }
    }
}

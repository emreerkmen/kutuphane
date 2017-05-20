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
    public partial class Form2 : Form
    {
        kutuphaneDBEntities entity = new kutuphaneDBEntities();

        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            List<string> lstTur = entity.SP_TurGetir().ToList();

            foreach(string tur in lstTur)
            {
                cmb_Tur.Items.Add(tur);
            }
        }

        //Buralar kısaltılabilir.
        private void btn_KitapAra_Click(object sender, EventArgs e)
        {
            if(txt_ISBN.Text.Trim() != "")
            {
                lst_KitapAra.Items.Clear();
                List<SP_ISBNileAra_Result> lstKitap = entity.SP_ISBNileAra(txt_ISBN.Text).ToList();

                if (lstKitap.Count() != 0)
                {
                    foreach (SP_ISBNileAra_Result kitap in lstKitap)
                    {
                        ListViewItem lvi = new ListViewItem(kitap.KITAP_ISBN);
                        lvi.SubItems.Add(kitap.KITAP_Adi);
                        lvi.SubItems.Add(kitap.TUR_Adi);
                        lvi.SubItems.Add(kitap.YAYINCI_Adi);
                        lvi.SubItems.Add(kitap.KITAP_Sayfa.ToString());
                        lvi.SubItems.Add(kitap.DIL_Adi);
                        lvi.SubItems.Add(kitap.KITAP_TopSayi.ToString());
                        lvi.SubItems.Add(kitap.KITAP_UygunSayi.ToString());
                        lvi.SubItems.Add(kitap.YAZAR_Adi);
                        lst_KitapAra.Items.Add(lvi);
                    }
                }
                else
                {
                    MessageBox.Show("Kitap bulunamadı!");
                }
            }
            else if(txt_KitapAdı.Text.Trim() != "")
            {
                lst_KitapAra.Items.Clear();
                List<SP_KitapAdiylaAra_Result> lstKitap = entity.SP_KitapAdiylaAra
                    (txt_KitapAdı.Text).ToList();

                if (lstKitap.Count() != 0)
                {
                    foreach (SP_KitapAdiylaAra_Result kitap in lstKitap)
                    {
                        ListViewItem lvi = new ListViewItem(kitap.KITAP_ISBN);
                        lvi.SubItems.Add(kitap.KITAP_Adi);
                        lvi.SubItems.Add(kitap.TUR_Adi);
                        lvi.SubItems.Add(kitap.YAYINCI_Adi);
                        lvi.SubItems.Add(kitap.KITAP_Sayfa.ToString());
                        lvi.SubItems.Add(kitap.DIL_Adi);
                        lvi.SubItems.Add(kitap.KITAP_TopSayi.ToString());
                        lvi.SubItems.Add(kitap.KITAP_UygunSayi.ToString());
                        lvi.SubItems.Add(kitap.YAZAR_Adi);
                        lst_KitapAra.Items.Add(lvi);
                    }
                }
                else
                {
                    MessageBox.Show("Kitap bulunamadı!");
                }
            }
            else if(txt_Yazar.Text.Trim() != "")
            {
                lst_KitapAra.Items.Clear();
                List<SP_YazaraGoreAra_Result> lstKitap = entity.SP_YazaraGoreAra
                    (txt_Yazar.Text).ToList();

                if (lstKitap.Count() != 0)
                {
                    foreach (SP_YazaraGoreAra_Result kitap in lstKitap)
                    {
                        ListViewItem lvi = new ListViewItem(kitap.KITAP_ISBN);
                        lvi.SubItems.Add(kitap.KITAP_Adi);
                        lvi.SubItems.Add(kitap.TUR_Adi);
                        lvi.SubItems.Add(kitap.YAYINCI_Adi);
                        lvi.SubItems.Add(kitap.KITAP_Sayfa.ToString());
                        lvi.SubItems.Add(kitap.DIL_Adi);
                        lvi.SubItems.Add(kitap.KITAP_TopSayi.ToString());
                        lvi.SubItems.Add(kitap.KITAP_UygunSayi.ToString());
                        lvi.SubItems.Add(kitap.YAZAR_Adi);
                        lst_KitapAra.Items.Add(lvi);
                    }
                }
                else
                {
                    MessageBox.Show("Kitap bulunamadı!");
                }
            }
            else if(cmb_Tur.Text != "Seçiniz")
            {
                lst_KitapAra.Items.Clear();
                List<SP_TureGoreAra_Result> lstKitap = entity.SP_TureGoreAra
                    (cmb_Tur.Text).ToList();

                if (lstKitap.Count() != 0)
                {
                    foreach (SP_TureGoreAra_Result kitap in lstKitap)
                    {
                        ListViewItem lvi = new ListViewItem(kitap.KITAP_ISBN);
                        lvi.SubItems.Add(kitap.KITAP_Adi);
                        lvi.SubItems.Add(kitap.TUR_Adi);
                        lvi.SubItems.Add(kitap.YAYINCI_Adi);
                        lvi.SubItems.Add(kitap.KITAP_Sayfa.ToString());
                        lvi.SubItems.Add(kitap.DIL_Adi);
                        lvi.SubItems.Add(kitap.KITAP_TopSayi.ToString());
                        lvi.SubItems.Add(kitap.KITAP_UygunSayi.ToString());
                        lvi.SubItems.Add(kitap.YAZAR_Adi);
                        lst_KitapAra.Items.Add(lvi);
                    }
                }
                else
                {
                    MessageBox.Show("Kitap bulunamadı!");
                }
            }
        }
    }
}

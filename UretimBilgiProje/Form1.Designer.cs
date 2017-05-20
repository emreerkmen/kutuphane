namespace UretimBilgiProje
{
    partial class Form1
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
            this.btn_GorevliGiris = new System.Windows.Forms.Button();
            this.txt_GorevliTC = new System.Windows.Forms.TextBox();
            this.txt_GorevliSifre = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txt_UyeGiris = new System.Windows.Forms.Button();
            this.txt_UyeSifre = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_UyeTC = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_GorevliGiris
            // 
            this.btn_GorevliGiris.Location = new System.Drawing.Point(148, 100);
            this.btn_GorevliGiris.Name = "btn_GorevliGiris";
            this.btn_GorevliGiris.Size = new System.Drawing.Size(87, 39);
            this.btn_GorevliGiris.TabIndex = 0;
            this.btn_GorevliGiris.Text = "Giriş";
            this.btn_GorevliGiris.UseVisualStyleBackColor = true;
            this.btn_GorevliGiris.Click += new System.EventHandler(this.btn_GorevliGiris_Click);
            // 
            // txt_GorevliTC
            // 
            this.txt_GorevliTC.Location = new System.Drawing.Point(119, 43);
            this.txt_GorevliTC.Name = "txt_GorevliTC";
            this.txt_GorevliTC.Size = new System.Drawing.Size(116, 22);
            this.txt_GorevliTC.TabIndex = 1;
            // 
            // txt_GorevliSifre
            // 
            this.txt_GorevliSifre.Location = new System.Drawing.Point(119, 72);
            this.txt_GorevliSifre.Name = "txt_GorevliSifre";
            this.txt_GorevliSifre.Size = new System.Drawing.Size(116, 22);
            this.txt_GorevliSifre.TabIndex = 2;
            this.txt_GorevliSifre.UseSystemPasswordChar = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(51, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 14);
            this.label1.TabIndex = 3;
            this.label1.Text = "TC: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(51, 72);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 14);
            this.label2.TabIndex = 3;
            this.label2.Text = "Şifre: ";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_GorevliGiris);
            this.groupBox1.Controls.Add(this.txt_GorevliSifre);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txt_GorevliTC);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(7, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(279, 163);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Kullanıcı Bilgisi";
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(15, 14);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(302, 207);
            this.tabControl1.TabIndex = 5;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.LightGray;
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Location = new System.Drawing.Point(4, 23);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(294, 180);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Görevli";
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.LightGray;
            this.tabPage2.Controls.Add(this.groupBox2);
            this.tabPage2.Location = new System.Drawing.Point(4, 23);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(294, 180);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Üye";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txt_UyeGiris);
            this.groupBox2.Controls.Add(this.txt_UyeSifre);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txt_UyeTC);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Location = new System.Drawing.Point(7, 6);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(279, 163);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Kullanıcı Bilgisi";
            // 
            // txt_UyeGiris
            // 
            this.txt_UyeGiris.Location = new System.Drawing.Point(148, 100);
            this.txt_UyeGiris.Name = "txt_UyeGiris";
            this.txt_UyeGiris.Size = new System.Drawing.Size(87, 39);
            this.txt_UyeGiris.TabIndex = 0;
            this.txt_UyeGiris.Text = "Giriş";
            this.txt_UyeGiris.UseVisualStyleBackColor = true;
            this.txt_UyeGiris.Click += new System.EventHandler(this.txt_UyeGiris_Click);
            // 
            // txt_UyeSifre
            // 
            this.txt_UyeSifre.Location = new System.Drawing.Point(119, 72);
            this.txt_UyeSifre.Name = "txt_UyeSifre";
            this.txt_UyeSifre.Size = new System.Drawing.Size(116, 22);
            this.txt_UyeSifre.TabIndex = 2;
            this.txt_UyeSifre.UseSystemPasswordChar = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(51, 72);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 14);
            this.label3.TabIndex = 3;
            this.label3.Text = "Şifre: ";
            // 
            // txt_UyeTC
            // 
            this.txt_UyeTC.Location = new System.Drawing.Point(119, 43);
            this.txt_UyeTC.Name = "txt_UyeTC";
            this.txt_UyeTC.Size = new System.Drawing.Size(116, 22);
            this.txt_UyeTC.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(51, 43);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(35, 14);
            this.label4.TabIndex = 3;
            this.label4.Text = "TC: ";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(331, 281);
            this.Controls.Add(this.tabControl1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btn_GorevliGiris;
        private System.Windows.Forms.TextBox txt_GorevliTC;
        private System.Windows.Forms.TextBox txt_GorevliSifre;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button txt_UyeGiris;
        private System.Windows.Forms.TextBox txt_UyeSifre;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_UyeTC;
        private System.Windows.Forms.Label label4;
    }
}


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CrystalDecisions.Shared;
namespace Attendance_Managment_System
{
    public partial class Form4 : Form
    {
        CrystalReport2 CR;
        public Form4()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            CR.SetParameterValue(0, comboBox1.Text);
            CR.SetParameterValue(1, comboBox2.Text);
            crystalReportViewer1.ReportSource = CR;
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            CR = new CrystalReport2();
            foreach (ParameterDiscreteValue v in CR.ParameterFields[0].DefaultValues)
                comboBox1.Items.Add(v.Value);
            foreach (ParameterDiscreteValue v in CR.ParameterFields[1].DefaultValues)
                comboBox2.Items.Add(v.Value);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form5 f5 = new Form5();
            f5.Show();
            this.Hide();
        }
    }
}

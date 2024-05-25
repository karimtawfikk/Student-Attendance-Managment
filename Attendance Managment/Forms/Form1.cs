using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
namespace Attendance_Managment_System
{
    public partial class Form1 : Form
    {
        string ordb = "Data source=orcl;User Id=hr;Password=hr;";
        OracleConnection conn;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            conn = new OracleConnection(ordb);
            conn.Open();
            OracleCommand cmd = new OracleCommand();

            cmd.Connection = conn;
            cmd.CommandText = "select ID from TEACHERS";
            cmd.CommandType = CommandType.Text;
            OracleDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                comboBox1.Items.Add(dr[0]);

            }
            dr.Close();
            OracleCommand cm = new OracleCommand();
            cm.Connection = conn;
            cm.CommandText = "getStudentNames";
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("Names", OracleDbType.RefCursor, ParameterDirection.Output);
            OracleDataReader d = cm.ExecuteReader();
            while (d.Read())
            {
                comboBox2.Items.Add(d[0]);
            }
            d.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            OracleCommand c = new OracleCommand();
            c.Connection = conn;
            c.CommandText = @"select weeknumber from attendances a, courses c, students s where 
                a.courseid= c.courseid and c.teacherid=:Tid and 
                 status='Present' and a.studentid=s.studentid and s.name=:Sname";
            c.CommandType = CommandType.Text;
            c.Parameters.Add("Tid", comboBox1.SelectedItem.ToString());
            c.Parameters.Add("Sname", comboBox2.SelectedItem.ToString());
            OracleDataReader f = c.ExecuteReader();
            while (f.Read())
            {
                comboBox3.Items.Add(f[0]);
            }
            f.Close();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            OracleCommand c = new OracleCommand();
            c.Connection = conn;
            c.CommandText = @"select count(status) from attendances a, courses c, students s 
                            where a.courseid= c.courseid and a.studentid=s.studentid 
                            and c.teacherid=:Tid and status='Present' and s.name=:Sname";
            c.Parameters.Add("Tid", comboBox1.SelectedItem.ToString());
            c.Parameters.Add("Sname", comboBox2.SelectedItem.ToString());
            OracleDataReader k = c.ExecuteReader();
            if (k.Read())
            {
                textBox3.Text = k[0].ToString();
            }
            k.Close();
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            OracleCommand cm = new OracleCommand();
            cm.Connection = conn;
            cm.CommandText = @"select DISTINCT a.StudentID, a.CourseId
                from Students s, Courses c, Attendances a
                where a.studentid = s.studentid 
                and a.courseid = c.courseid and 
                s.name = :name and c.teacherid = :tid";
            cm.CommandType = CommandType.Text;
            cm.Parameters.Add("name", comboBox2.SelectedItem.ToString());
            cm.Parameters.Add("tid", comboBox1.SelectedItem.ToString());
            string ssid = "";
            string ccid = "";
            OracleDataReader dr = cm.ExecuteReader();
            if (dr.Read())
            {
                ssid = dr[0].ToString();
                ccid = dr[1].ToString();
            }
            dr.Close();

            OracleCommand c = new OracleCommand();
            c.Connection = conn;
            c.CommandText = @"insert into Attendances(studentId, CourseId, WeekNumber, Status, Comments, Rate)
values(:Sidd,:Cidd,14,:Statuss,:Commentt,:Ratee)";
            c.CommandType = CommandType.Text;
            c.Parameters.Add("Sidd", ssid);
            c.Parameters.Add("Cidd", ccid);
            c.Parameters.Add("Statuss", textBox5.Text);
            c.Parameters.Add("Commentt", textBox4.Text);
            c.Parameters.Add("Ratee", textBox6.Text);
            int r = c.ExecuteNonQuery();
            if (r != -1)
                MessageBox.Show("Attendance added!");
        }

        private void comboBox3_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            OracleCommand c = new OracleCommand();
            c.Connection = conn;
            c.CommandText = @"select rate, comments from attendances a, courses c, students s 
                             where a.courseid= c.courseid and a.studentid=s.studentid 
                       and c.teacherid=:Tid and a.weeknumber=:Weekselected and s.name=:Sname";
            c.CommandType = CommandType.Text;
            c.Parameters.Add("Tid", comboBox1.SelectedItem.ToString());
            c.Parameters.Add("Weekselected", comboBox3.SelectedItem.ToString());
            c.Parameters.Add("Sname", comboBox2.SelectedItem.ToString());
            OracleDataReader l = c.ExecuteReader();
            if (l.Read())
            {
                textBox2.Text = l[0].ToString();
                textBox1.Text = l[1].ToString();
            }
            l.Close();
        }
        private void button4_Click(object sender, EventArgs e)
        {
            Form5 f5 = new Form5();
            f5.Show();
            this.Hide();
        }
    }
}
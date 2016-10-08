using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmployeeWindow
{
    public partial class Form1 : Form
    {
        
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Employeelocalhost.EmpService obj = new Employeelocalhost.EmpService();
            int eno = int.Parse(textBox1.Text);
            string ename = textBox2.Text;
            double salary = double.Parse(textBox3.Text);
            string message = obj.InsertEmployee(eno, ename, salary);
            MessageBox.Show(message);
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox1.Focus();

        }
    }
}

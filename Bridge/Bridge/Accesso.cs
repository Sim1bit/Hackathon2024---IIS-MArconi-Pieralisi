using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Bridge
{
    public partial class Accesso : UserControl
    {
        public Accesso()
        {
            InitializeComponent();
        }

        public event EventHandler Pressed;

        private bool access_click;
        public bool Access_click
        {
            get => access_click;
            set => access_click = value;
        }

        public bool registration_click;
        public bool Registration_click
        {
            get => registration_click;
            set => registration_click = value;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Access_click = true;
            Pressed?.Invoke(this, EventArgs.Empty);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Registration_click = true;
            Pressed?.Invoke(this, EventArgs.Empty);
        }

        private void Accesso_Load(object sender, EventArgs e)
        {

        }
    }
}

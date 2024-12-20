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
    public partial class Registrazione : UserControl
    {
        public Registrazione()
        {
            InitializeComponent();
        }

        public event EventHandler Pressed;

        public bool registration_click;
        public bool Registration_click
        {
            get => registration_click;
            set => registration_click = value;
        }

        private void Registrazione_b_Click(object sender, EventArgs e)
        {
            Registration_click = true;
            Pressed?.Invoke(this, EventArgs.Empty);
        }
    }
}

namespace Bridge
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            accesso1.Pressed += Change_User;
            registrazione1.Pressed += Change_User;
            accesso1.Visible = true;
            registrazione1.Visible = false;
            applicazione1.Visible = false;
        }

        public void Change_User(object sender, EventArgs e)
        {
            if (sender is Accesso)
                Action(sender as Accesso);
            else if (sender is Registrazione)
                Action(sender as Registrazione);
        }

        private void Action(Accesso sender)
        {
            if (sender.Access_click)
            {
                sender.Access_click = false;

                sender.Visible = false;

                applicazione1.Visible = true;

            }
            else if (sender.Registration_click)
            {
                sender.Registration_click = false;

                sender.Visible = false;

                registrazione1.Visible = true;
            }
        }
        private void Action(Registrazione sender)
        {
            if (sender.Registration_click)
            {
                sender.Registration_click = false;

                sender.Visible = false;

                applicazione1.Visible = true;
            }
        }
    }
}
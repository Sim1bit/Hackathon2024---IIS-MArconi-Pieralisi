namespace Bridge
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.accesso1 = new Bridge.Accesso();
            this.registrazione1 = new Bridge.Registrazione();
            this.applicazione1 = new Bridge.Applicazione();
            this.SuspendLayout();
            // 
            // accesso1
            // 
            this.accesso1.Access_click = false;
            this.accesso1.Location = new System.Drawing.Point(22, 12);
            this.accesso1.Name = "accesso1";
            this.accesso1.Registration_click = false;
            this.accesso1.Size = new System.Drawing.Size(323, 212);
            this.accesso1.TabIndex = 0;
            // 
            // registrazione1
            // 
            this.registrazione1.Location = new System.Drawing.Point(-12, 41);
            this.registrazione1.Name = "registrazione1";
            this.registrazione1.Registration_click = false;
            this.registrazione1.Size = new System.Drawing.Size(414, 510);
            this.registrazione1.TabIndex = 1;
            // 
            // applicazione1
            // 
            this.applicazione1.Location = new System.Drawing.Point(-10, -9);
            this.applicazione1.Name = "applicazione1";
            this.applicazione1.Size = new System.Drawing.Size(430, 932);
            this.applicazione1.TabIndex = 2;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(414, 692);
            this.Controls.Add(this.applicazione1);
            this.Controls.Add(this.registrazione1);
            this.Controls.Add(this.accesso1);
            this.Name = "Form1";
            this.Text = "Bridge";
            this.ResumeLayout(false);

        }

        #endregion

        private Accesso accesso1;
        private Registrazione registrazione1;
        private Applicazione applicazione1;
    }
}
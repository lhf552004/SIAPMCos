namespace SIAPM.MESWinform
{
    partial class MultiTest
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.StreamTextBox = new System.Windows.Forms.TextBox();
            this.FunctionTextBox = new System.Windows.Forms.TextBox();
            this.MessageTextBox = new System.Windows.Forms.TextBox();
            this.StartButton = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.PortTextBox = new System.Windows.Forms.TextBox();
            this.IPTextBox = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.StatusTextBox = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.EstablishCommButton = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.Message2TextBox = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.Function2TextBox = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.Stream2TextBox = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.Port2TextBox = new System.Windows.Forms.TextBox();
            this.IP2TextBox = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(14, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "S";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(157, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(13, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "F";
            // 
            // StreamTextBox
            // 
            this.StreamTextBox.Location = new System.Drawing.Point(41, 38);
            this.StreamTextBox.Name = "StreamTextBox";
            this.StreamTextBox.Size = new System.Drawing.Size(100, 20);
            this.StreamTextBox.TabIndex = 1;
            // 
            // FunctionTextBox
            // 
            this.FunctionTextBox.Location = new System.Drawing.Point(191, 41);
            this.FunctionTextBox.Name = "FunctionTextBox";
            this.FunctionTextBox.Size = new System.Drawing.Size(100, 20);
            this.FunctionTextBox.TabIndex = 1;
            // 
            // MessageTextBox
            // 
            this.MessageTextBox.Location = new System.Drawing.Point(84, 88);
            this.MessageTextBox.Multiline = true;
            this.MessageTextBox.Name = "MessageTextBox";
            this.MessageTextBox.Size = new System.Drawing.Size(207, 78);
            this.MessageTextBox.TabIndex = 2;
            // 
            // StartButton
            // 
            this.StartButton.Location = new System.Drawing.Point(754, 17);
            this.StartButton.Name = "StartButton";
            this.StartButton.Size = new System.Drawing.Size(80, 41);
            this.StartButton.TabIndex = 3;
            this.StartButton.Text = "Start";
            this.StartButton.UseVisualStyleBackColor = true;
            this.StartButton.Click += new System.EventHandler(this.StartButton_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.MessageTextBox);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.FunctionTextBox);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.StreamTextBox);
            this.groupBox1.Location = new System.Drawing.Point(12, 139);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(326, 187);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Message";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.PortTextBox);
            this.groupBox2.Controls.Add(this.IPTextBox);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Location = new System.Drawing.Point(12, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(266, 100);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Device1";
            // 
            // PortTextBox
            // 
            this.PortTextBox.Location = new System.Drawing.Point(75, 53);
            this.PortTextBox.Name = "PortTextBox";
            this.PortTextBox.Size = new System.Drawing.Size(100, 20);
            this.PortTextBox.TabIndex = 1;
            this.PortTextBox.Text = "5005";
            // 
            // IPTextBox
            // 
            this.IPTextBox.Location = new System.Drawing.Point(75, 19);
            this.IPTextBox.Name = "IPTextBox";
            this.IPTextBox.Size = new System.Drawing.Size(100, 20);
            this.IPTextBox.TabIndex = 1;
            this.IPTextBox.Text = "10.215.36.73";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 53);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(26, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Port";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 19);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(17, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "IP";
            // 
            // StatusTextBox
            // 
            this.StatusTextBox.Location = new System.Drawing.Point(96, 358);
            this.StatusTextBox.Multiline = true;
            this.StatusTextBox.Name = "StatusTextBox";
            this.StatusTextBox.Size = new System.Drawing.Size(207, 78);
            this.StatusTextBox.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(18, 361);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(58, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Status Info";
            // 
            // EstablishCommButton
            // 
            this.EstablishCommButton.Location = new System.Drawing.Point(716, 70);
            this.EstablishCommButton.Name = "EstablishCommButton";
            this.EstablishCommButton.Size = new System.Drawing.Size(155, 45);
            this.EstablishCommButton.TabIndex = 17;
            this.EstablishCommButton.Text = "EstablishComm";
            this.EstablishCommButton.UseVisualStyleBackColor = true;
            this.EstablishCommButton.Click += new System.EventHandler(this.EstablishCommButton_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.Message2TextBox);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.Function2TextBox);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Controls.Add(this.Stream2TextBox);
            this.groupBox3.Location = new System.Drawing.Point(383, 139);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(326, 187);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Message";
            // 
            // Message2TextBox
            // 
            this.Message2TextBox.Location = new System.Drawing.Point(84, 88);
            this.Message2TextBox.Multiline = true;
            this.Message2TextBox.Name = "Message2TextBox";
            this.Message2TextBox.Size = new System.Drawing.Size(207, 78);
            this.Message2TextBox.TabIndex = 2;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(21, 41);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(14, 13);
            this.label6.TabIndex = 0;
            this.label6.Text = "S";
            // 
            // Function2TextBox
            // 
            this.Function2TextBox.Location = new System.Drawing.Point(191, 41);
            this.Function2TextBox.Name = "Function2TextBox";
            this.Function2TextBox.Size = new System.Drawing.Size(100, 20);
            this.Function2TextBox.TabIndex = 1;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(157, 41);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(13, 13);
            this.label7.TabIndex = 0;
            this.label7.Text = "F";
            // 
            // Stream2TextBox
            // 
            this.Stream2TextBox.Location = new System.Drawing.Point(41, 38);
            this.Stream2TextBox.Name = "Stream2TextBox";
            this.Stream2TextBox.Size = new System.Drawing.Size(100, 20);
            this.Stream2TextBox.TabIndex = 1;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.Port2TextBox);
            this.groupBox4.Controls.Add(this.IP2TextBox);
            this.groupBox4.Controls.Add(this.label8);
            this.groupBox4.Controls.Add(this.label9);
            this.groupBox4.Location = new System.Drawing.Point(383, 15);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(266, 100);
            this.groupBox4.TabIndex = 5;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Device2";
            // 
            // Port2TextBox
            // 
            this.Port2TextBox.Location = new System.Drawing.Point(75, 53);
            this.Port2TextBox.Name = "Port2TextBox";
            this.Port2TextBox.Size = new System.Drawing.Size(100, 20);
            this.Port2TextBox.TabIndex = 1;
            this.Port2TextBox.Text = "5005";
            // 
            // IP2TextBox
            // 
            this.IP2TextBox.Location = new System.Drawing.Point(75, 19);
            this.IP2TextBox.Name = "IP2TextBox";
            this.IP2TextBox.Size = new System.Drawing.Size(100, 20);
            this.IP2TextBox.TabIndex = 1;
            this.IP2TextBox.Text = "10.215.0.2";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 53);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(26, 13);
            this.label8.TabIndex = 0;
            this.label8.Text = "Port";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 19);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(17, 13);
            this.label9.TabIndex = 0;
            this.label9.Text = "IP";
            // 
            // MultiTest
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(902, 448);
            this.Controls.Add(this.EstablishCommButton);
            this.Controls.Add(this.StatusTextBox);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.StartButton);
            this.Name = "MultiTest";
            this.Text = "Test";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox StreamTextBox;
        private System.Windows.Forms.TextBox FunctionTextBox;
        private System.Windows.Forms.TextBox MessageTextBox;
        private System.Windows.Forms.Button StartButton;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox PortTextBox;
        private System.Windows.Forms.TextBox IPTextBox;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox StatusTextBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button EstablishCommButton;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox Message2TextBox;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox Function2TextBox;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox Stream2TextBox;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox Port2TextBox;
        private System.Windows.Forms.TextBox IP2TextBox;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
    }
}
namespace SIAPM.MESWinform
{
    partial class Test
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
            this.RequestStatusVariableValuesButton = new System.Windows.Forms.Button();
            this.EnbleAllAlarmsButton = new System.Windows.Forms.Button();
            this.DisableAllAlarmsButton = new System.Windows.Forms.Button();
            this.EnableAllEventsButon = new System.Windows.Forms.Button();
            this.DisableAllEventsButton = new System.Windows.Forms.Button();
            this.LinkEventReportsForSpecificEquipmentButton = new System.Windows.Forms.Button();
            this.PurgeSpoolButton = new System.Windows.Forms.Button();
            this.DefineAllReportsForSpecificEquipmentButton = new System.Windows.Forms.Button();
            this.DisableSpoolingButton = new System.Windows.Forms.Button();
            this.RequestOnlineButton = new System.Windows.Forms.Button();
            this.DeleteAllReportsButton = new System.Windows.Forms.Button();
            this.EstablishCommButton = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
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
            this.label2.Location = new System.Drawing.Point(227, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(13, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "F";
            // 
            // StreamTextBox
            // 
            this.StreamTextBox.Location = new System.Drawing.Point(84, 41);
            this.StreamTextBox.Name = "StreamTextBox";
            this.StreamTextBox.Size = new System.Drawing.Size(100, 20);
            this.StreamTextBox.TabIndex = 1;
            // 
            // FunctionTextBox
            // 
            this.FunctionTextBox.Location = new System.Drawing.Point(267, 41);
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
            this.StartButton.Location = new System.Drawing.Point(311, 12);
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
            this.groupBox1.Size = new System.Drawing.Size(404, 187);
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
            this.groupBox2.Location = new System.Drawing.Point(21, 12);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(266, 100);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "groupBox2";
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
            this.IPTextBox.Text = "10.215.36.52";
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
            // RequestStatusVariableValuesButton
            // 
            this.RequestStatusVariableValuesButton.Location = new System.Drawing.Point(660, 307);
            this.RequestStatusVariableValuesButton.Name = "RequestStatusVariableValuesButton";
            this.RequestStatusVariableValuesButton.Size = new System.Drawing.Size(155, 45);
            this.RequestStatusVariableValuesButton.TabIndex = 6;
            this.RequestStatusVariableValuesButton.Text = "RequestStatusVariableValues";
            this.RequestStatusVariableValuesButton.UseVisualStyleBackColor = true;
            // 
            // EnbleAllAlarmsButton
            // 
            this.EnbleAllAlarmsButton.Location = new System.Drawing.Point(660, 256);
            this.EnbleAllAlarmsButton.Name = "EnbleAllAlarmsButton";
            this.EnbleAllAlarmsButton.Size = new System.Drawing.Size(155, 45);
            this.EnbleAllAlarmsButton.TabIndex = 7;
            this.EnbleAllAlarmsButton.Text = "EnbleAllAlarms";
            this.EnbleAllAlarmsButton.UseVisualStyleBackColor = true;
            // 
            // DisableAllAlarmsButton
            // 
            this.DisableAllAlarmsButton.Location = new System.Drawing.Point(482, 307);
            this.DisableAllAlarmsButton.Name = "DisableAllAlarmsButton";
            this.DisableAllAlarmsButton.Size = new System.Drawing.Size(155, 45);
            this.DisableAllAlarmsButton.TabIndex = 8;
            this.DisableAllAlarmsButton.Text = "DisableAllAlarms";
            this.DisableAllAlarmsButton.UseVisualStyleBackColor = true;
            // 
            // EnableAllEventsButon
            // 
            this.EnableAllEventsButon.Location = new System.Drawing.Point(660, 205);
            this.EnableAllEventsButon.Name = "EnableAllEventsButon";
            this.EnableAllEventsButon.Size = new System.Drawing.Size(155, 45);
            this.EnableAllEventsButon.TabIndex = 9;
            this.EnableAllEventsButon.Text = "EnableAllEvents";
            this.EnableAllEventsButon.UseVisualStyleBackColor = true;
            // 
            // DisableAllEventsButton
            // 
            this.DisableAllEventsButton.Location = new System.Drawing.Point(482, 256);
            this.DisableAllEventsButton.Name = "DisableAllEventsButton";
            this.DisableAllEventsButton.Size = new System.Drawing.Size(155, 45);
            this.DisableAllEventsButton.TabIndex = 10;
            this.DisableAllEventsButton.Text = "DisableAllEvents";
            this.DisableAllEventsButton.UseVisualStyleBackColor = true;
            // 
            // LinkEventReportsForSpecificEquipmentButton
            // 
            this.LinkEventReportsForSpecificEquipmentButton.Location = new System.Drawing.Point(660, 154);
            this.LinkEventReportsForSpecificEquipmentButton.Name = "LinkEventReportsForSpecificEquipmentButton";
            this.LinkEventReportsForSpecificEquipmentButton.Size = new System.Drawing.Size(155, 45);
            this.LinkEventReportsForSpecificEquipmentButton.TabIndex = 11;
            this.LinkEventReportsForSpecificEquipmentButton.Text = "LinkEventReportsForSpecificEquipment";
            this.LinkEventReportsForSpecificEquipmentButton.UseVisualStyleBackColor = true;
            // 
            // PurgeSpoolButton
            // 
            this.PurgeSpoolButton.Location = new System.Drawing.Point(482, 205);
            this.PurgeSpoolButton.Name = "PurgeSpoolButton";
            this.PurgeSpoolButton.Size = new System.Drawing.Size(155, 45);
            this.PurgeSpoolButton.TabIndex = 12;
            this.PurgeSpoolButton.Text = "PurgeSpool";
            this.PurgeSpoolButton.UseVisualStyleBackColor = true;
            // 
            // DefineAllReportsForSpecificEquipmentButton
            // 
            this.DefineAllReportsForSpecificEquipmentButton.Location = new System.Drawing.Point(660, 103);
            this.DefineAllReportsForSpecificEquipmentButton.Name = "DefineAllReportsForSpecificEquipmentButton";
            this.DefineAllReportsForSpecificEquipmentButton.Size = new System.Drawing.Size(155, 45);
            this.DefineAllReportsForSpecificEquipmentButton.TabIndex = 13;
            this.DefineAllReportsForSpecificEquipmentButton.Text = "DefineAllReportsForSpecificEquipment";
            this.DefineAllReportsForSpecificEquipmentButton.UseVisualStyleBackColor = true;
            // 
            // DisableSpoolingButton
            // 
            this.DisableSpoolingButton.Location = new System.Drawing.Point(482, 154);
            this.DisableSpoolingButton.Name = "DisableSpoolingButton";
            this.DisableSpoolingButton.Size = new System.Drawing.Size(155, 45);
            this.DisableSpoolingButton.TabIndex = 14;
            this.DisableSpoolingButton.Text = "DisableSpooling";
            this.DisableSpoolingButton.UseVisualStyleBackColor = true;
            // 
            // RequestOnlineButton
            // 
            this.RequestOnlineButton.Location = new System.Drawing.Point(482, 103);
            this.RequestOnlineButton.Name = "RequestOnlineButton";
            this.RequestOnlineButton.Size = new System.Drawing.Size(155, 45);
            this.RequestOnlineButton.TabIndex = 15;
            this.RequestOnlineButton.Text = "RequestOnline";
            this.RequestOnlineButton.UseVisualStyleBackColor = true;
            this.RequestOnlineButton.Click += new System.EventHandler(this.RequestOnlineButton_Click);
            // 
            // DeleteAllReportsButton
            // 
            this.DeleteAllReportsButton.Location = new System.Drawing.Point(660, 52);
            this.DeleteAllReportsButton.Name = "DeleteAllReportsButton";
            this.DeleteAllReportsButton.Size = new System.Drawing.Size(155, 45);
            this.DeleteAllReportsButton.TabIndex = 16;
            this.DeleteAllReportsButton.Text = "DeleteAllReports";
            this.DeleteAllReportsButton.UseVisualStyleBackColor = true;
            this.DeleteAllReportsButton.Click += new System.EventHandler(this.DeleteAllReportsButton_Click);
            // 
            // EstablishCommButton
            // 
            this.EstablishCommButton.Location = new System.Drawing.Point(482, 52);
            this.EstablishCommButton.Name = "EstablishCommButton";
            this.EstablishCommButton.Size = new System.Drawing.Size(155, 45);
            this.EstablishCommButton.TabIndex = 17;
            this.EstablishCommButton.Text = "EstablishComm";
            this.EstablishCommButton.UseVisualStyleBackColor = true;
            this.EstablishCommButton.Click += new System.EventHandler(this.EstablishCommButton_Click);
            // 
            // Test
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(902, 448);
            this.Controls.Add(this.RequestStatusVariableValuesButton);
            this.Controls.Add(this.EnbleAllAlarmsButton);
            this.Controls.Add(this.DisableAllAlarmsButton);
            this.Controls.Add(this.EnableAllEventsButon);
            this.Controls.Add(this.DisableAllEventsButton);
            this.Controls.Add(this.LinkEventReportsForSpecificEquipmentButton);
            this.Controls.Add(this.PurgeSpoolButton);
            this.Controls.Add(this.DefineAllReportsForSpecificEquipmentButton);
            this.Controls.Add(this.DisableSpoolingButton);
            this.Controls.Add(this.RequestOnlineButton);
            this.Controls.Add(this.DeleteAllReportsButton);
            this.Controls.Add(this.EstablishCommButton);
            this.Controls.Add(this.StatusTextBox);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.StartButton);
            this.Name = "Test";
            this.Text = "Test";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
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
        private System.Windows.Forms.Button RequestStatusVariableValuesButton;
        private System.Windows.Forms.Button EnbleAllAlarmsButton;
        private System.Windows.Forms.Button DisableAllAlarmsButton;
        private System.Windows.Forms.Button EnableAllEventsButon;
        private System.Windows.Forms.Button DisableAllEventsButton;
        private System.Windows.Forms.Button LinkEventReportsForSpecificEquipmentButton;
        private System.Windows.Forms.Button PurgeSpoolButton;
        private System.Windows.Forms.Button DefineAllReportsForSpecificEquipmentButton;
        private System.Windows.Forms.Button DisableSpoolingButton;
        private System.Windows.Forms.Button RequestOnlineButton;
        private System.Windows.Forms.Button DeleteAllReportsButton;
        private System.Windows.Forms.Button EstablishCommButton;
    }
}
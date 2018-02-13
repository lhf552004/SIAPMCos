namespace SIAPM.MESWinform
{
    partial class CentralWinform
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
            this.gemStatusLabel = new System.Windows.Forms.Label();
            this.gemStatusLabel88 = new System.Windows.Forms.TextBox();
            this.eqpAddressStatusLabel = new System.Windows.Forms.Label();
            this.EstablishCommButton = new System.Windows.Forms.Button();
            this.RequestOnlineButton = new System.Windows.Forms.Button();
            this.DisableSpoolingButton = new System.Windows.Forms.Button();
            this.PurgeSpoolButton = new System.Windows.Forms.Button();
            this.DisableAllEventsButton = new System.Windows.Forms.Button();
            this.DisableAllAlarmsButton = new System.Windows.Forms.Button();
            this.DeleteAllReportsButton = new System.Windows.Forms.Button();
            this.DefineAllReportsForSpecificEquipmentButton = new System.Windows.Forms.Button();
            this.LinkEventReportsForSpecificEquipmentButton = new System.Windows.Forms.Button();
            this.EnableAllEventsButon = new System.Windows.Forms.Button();
            this.EnbleAllAlarmsButton = new System.Windows.Forms.Button();
            this.RequestStatusVariableValuesButton = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // gemStatusLabel
            // 
            this.gemStatusLabel.AutoSize = true;
            this.gemStatusLabel.Location = new System.Drawing.Point(242, 32);
            this.gemStatusLabel.Name = "gemStatusLabel";
            this.gemStatusLabel.Size = new System.Drawing.Size(37, 13);
            this.gemStatusLabel.TabIndex = 0;
            this.gemStatusLabel.Text = "Status";
            // 
            // gemStatusLabel88
            // 
            this.gemStatusLabel88.Location = new System.Drawing.Point(422, 12);
            this.gemStatusLabel88.Multiline = true;
            this.gemStatusLabel88.Name = "gemStatusLabel88";
            this.gemStatusLabel88.Size = new System.Drawing.Size(188, 83);
            this.gemStatusLabel88.TabIndex = 1;
            // 
            // eqpAddressStatusLabel
            // 
            this.eqpAddressStatusLabel.AutoSize = true;
            this.eqpAddressStatusLabel.Location = new System.Drawing.Point(306, 32);
            this.eqpAddressStatusLabel.Name = "eqpAddressStatusLabel";
            this.eqpAddressStatusLabel.Size = new System.Drawing.Size(78, 13);
            this.eqpAddressStatusLabel.TabIndex = 2;
            this.eqpAddressStatusLabel.Text = "Address Status";
            // 
            // EstablishCommButton
            // 
            this.EstablishCommButton.Location = new System.Drawing.Point(67, 133);
            this.EstablishCommButton.Name = "EstablishCommButton";
            this.EstablishCommButton.Size = new System.Drawing.Size(155, 45);
            this.EstablishCommButton.TabIndex = 3;
            this.EstablishCommButton.Text = "EstablishComm";
            this.EstablishCommButton.UseVisualStyleBackColor = true;
            this.EstablishCommButton.Click += new System.EventHandler(this.EstablishCommButton_Click);
            // 
            // RequestOnlineButton
            // 
            this.RequestOnlineButton.Location = new System.Drawing.Point(67, 184);
            this.RequestOnlineButton.Name = "RequestOnlineButton";
            this.RequestOnlineButton.Size = new System.Drawing.Size(155, 45);
            this.RequestOnlineButton.TabIndex = 3;
            this.RequestOnlineButton.Text = "RequestOnline";
            this.RequestOnlineButton.UseVisualStyleBackColor = true;
            this.RequestOnlineButton.Click += new System.EventHandler(this.RequestOnlineButton_Click);
            // 
            // DisableSpoolingButton
            // 
            this.DisableSpoolingButton.Location = new System.Drawing.Point(67, 235);
            this.DisableSpoolingButton.Name = "DisableSpoolingButton";
            this.DisableSpoolingButton.Size = new System.Drawing.Size(155, 45);
            this.DisableSpoolingButton.TabIndex = 3;
            this.DisableSpoolingButton.Text = "DisableSpooling";
            this.DisableSpoolingButton.UseVisualStyleBackColor = true;
            this.DisableSpoolingButton.Click += new System.EventHandler(this.DisableSpoolingButton_Click);
            // 
            // PurgeSpoolButton
            // 
            this.PurgeSpoolButton.Location = new System.Drawing.Point(67, 286);
            this.PurgeSpoolButton.Name = "PurgeSpoolButton";
            this.PurgeSpoolButton.Size = new System.Drawing.Size(155, 45);
            this.PurgeSpoolButton.TabIndex = 3;
            this.PurgeSpoolButton.Text = "PurgeSpool";
            this.PurgeSpoolButton.UseVisualStyleBackColor = true;
            this.PurgeSpoolButton.Click += new System.EventHandler(this.PurgeSpoolButton_Click);
            // 
            // DisableAllEventsButton
            // 
            this.DisableAllEventsButton.Location = new System.Drawing.Point(67, 337);
            this.DisableAllEventsButton.Name = "DisableAllEventsButton";
            this.DisableAllEventsButton.Size = new System.Drawing.Size(155, 45);
            this.DisableAllEventsButton.TabIndex = 3;
            this.DisableAllEventsButton.Text = "DisableAllEvents";
            this.DisableAllEventsButton.UseVisualStyleBackColor = true;
            this.DisableAllEventsButton.Click += new System.EventHandler(this.DisableAllEventsButton_Click);
            // 
            // DisableAllAlarmsButton
            // 
            this.DisableAllAlarmsButton.Location = new System.Drawing.Point(67, 388);
            this.DisableAllAlarmsButton.Name = "DisableAllAlarmsButton";
            this.DisableAllAlarmsButton.Size = new System.Drawing.Size(155, 45);
            this.DisableAllAlarmsButton.TabIndex = 3;
            this.DisableAllAlarmsButton.Text = "DisableAllAlarms";
            this.DisableAllAlarmsButton.UseVisualStyleBackColor = true;
            this.DisableAllAlarmsButton.Click += new System.EventHandler(this.DisableAllAlarmsButton_Click);
            // 
            // DeleteAllReportsButton
            // 
            this.DeleteAllReportsButton.Location = new System.Drawing.Point(245, 133);
            this.DeleteAllReportsButton.Name = "DeleteAllReportsButton";
            this.DeleteAllReportsButton.Size = new System.Drawing.Size(155, 45);
            this.DeleteAllReportsButton.TabIndex = 3;
            this.DeleteAllReportsButton.Text = "DeleteAllReports";
            this.DeleteAllReportsButton.UseVisualStyleBackColor = true;
            this.DeleteAllReportsButton.Click += new System.EventHandler(this.DeleteAllReportsButton_Click);
            // 
            // DefineAllReportsForSpecificEquipmentButton
            // 
            this.DefineAllReportsForSpecificEquipmentButton.Location = new System.Drawing.Point(245, 184);
            this.DefineAllReportsForSpecificEquipmentButton.Name = "DefineAllReportsForSpecificEquipmentButton";
            this.DefineAllReportsForSpecificEquipmentButton.Size = new System.Drawing.Size(155, 45);
            this.DefineAllReportsForSpecificEquipmentButton.TabIndex = 3;
            this.DefineAllReportsForSpecificEquipmentButton.Text = "DefineAllReportsForSpecificEquipment";
            this.DefineAllReportsForSpecificEquipmentButton.UseVisualStyleBackColor = true;
            this.DefineAllReportsForSpecificEquipmentButton.Click += new System.EventHandler(this.DefineAllReportsForSpecificEquipmentButton_Click);
            // 
            // LinkEventReportsForSpecificEquipmentButton
            // 
            this.LinkEventReportsForSpecificEquipmentButton.Location = new System.Drawing.Point(245, 235);
            this.LinkEventReportsForSpecificEquipmentButton.Name = "LinkEventReportsForSpecificEquipmentButton";
            this.LinkEventReportsForSpecificEquipmentButton.Size = new System.Drawing.Size(155, 45);
            this.LinkEventReportsForSpecificEquipmentButton.TabIndex = 3;
            this.LinkEventReportsForSpecificEquipmentButton.Text = "LinkEventReportsForSpecificEquipment";
            this.LinkEventReportsForSpecificEquipmentButton.UseVisualStyleBackColor = true;
            this.LinkEventReportsForSpecificEquipmentButton.Click += new System.EventHandler(this.LinkEventReportsForSpecificEquipmentButton_Click);
            // 
            // EnableAllEventsButon
            // 
            this.EnableAllEventsButon.Location = new System.Drawing.Point(245, 286);
            this.EnableAllEventsButon.Name = "EnableAllEventsButon";
            this.EnableAllEventsButon.Size = new System.Drawing.Size(155, 45);
            this.EnableAllEventsButon.TabIndex = 3;
            this.EnableAllEventsButon.Text = "EnableAllEvents";
            this.EnableAllEventsButon.UseVisualStyleBackColor = true;
            // 
            // EnbleAllAlarmsButton
            // 
            this.EnbleAllAlarmsButton.Location = new System.Drawing.Point(245, 337);
            this.EnbleAllAlarmsButton.Name = "EnbleAllAlarmsButton";
            this.EnbleAllAlarmsButton.Size = new System.Drawing.Size(155, 45);
            this.EnbleAllAlarmsButton.TabIndex = 3;
            this.EnbleAllAlarmsButton.Text = "EnbleAllAlarms";
            this.EnbleAllAlarmsButton.UseVisualStyleBackColor = true;
            // 
            // RequestStatusVariableValuesButton
            // 
            this.RequestStatusVariableValuesButton.Location = new System.Drawing.Point(245, 388);
            this.RequestStatusVariableValuesButton.Name = "RequestStatusVariableValuesButton";
            this.RequestStatusVariableValuesButton.Size = new System.Drawing.Size(155, 45);
            this.RequestStatusVariableValuesButton.TabIndex = 3;
            this.RequestStatusVariableValuesButton.Text = "RequestStatusVariableValues";
            this.RequestStatusVariableValuesButton.UseVisualStyleBackColor = true;
            // 
            // CentralWinform
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(730, 472);
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
            this.Controls.Add(this.eqpAddressStatusLabel);
            this.Controls.Add(this.gemStatusLabel88);
            this.Controls.Add(this.gemStatusLabel);
            this.Name = "CentralWinform";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label gemStatusLabel;
        private System.Windows.Forms.TextBox gemStatusLabel88;
        private System.Windows.Forms.Label eqpAddressStatusLabel;
        private System.Windows.Forms.Button EstablishCommButton;
        private System.Windows.Forms.Button RequestOnlineButton;
        private System.Windows.Forms.Button DisableSpoolingButton;
        private System.Windows.Forms.Button PurgeSpoolButton;
        private System.Windows.Forms.Button DisableAllEventsButton;
        private System.Windows.Forms.Button DisableAllAlarmsButton;
        private System.Windows.Forms.Button DeleteAllReportsButton;
        private System.Windows.Forms.Button DefineAllReportsForSpecificEquipmentButton;
        private System.Windows.Forms.Button LinkEventReportsForSpecificEquipmentButton;
        private System.Windows.Forms.Button EnableAllEventsButon;
        private System.Windows.Forms.Button EnbleAllAlarmsButton;
        private System.Windows.Forms.Button RequestStatusVariableValuesButton;
    }
}


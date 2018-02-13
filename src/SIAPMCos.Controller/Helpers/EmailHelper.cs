using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MimeKit;
using MailKit.Net.Smtp;
using MailKit.Security;
using System.IO;

namespace AppPodCloud.Helpers
{
    public class EmailHelper
    {
        private string _emailService;
        private string _emailUserName;
        private string _emailPassword;
        private string _emailTemplate;
        public EmailHelper(string emailService,string emailUserName,string emailPassword,string emailTemplate="")
        {
            _emailService = emailService;
            _emailUserName = emailUserName;
            _emailPassword = emailPassword;
            _emailTemplate = emailTemplate;
        }

        public void SendEmailAsync(string email, string subject, string message)
        {
            string userName = _emailUserName.Substring(0, _emailUserName.IndexOf('@'));
            var emailMessage = new MimeMessage();

            emailMessage.From.Add(new MailboxAddress(userName, _emailUserName));
            emailMessage.To.Add(new MailboxAddress("", email));
            emailMessage.Subject = subject;
            var htmlBody = new TextPart("html");

            emailMessage.Body = new TextPart  ("html") { Text = message };

            using (var client = new SmtpClient())
            {
                // For demo-purposes, accept all SSL certificates (in case the server supports STARTTLS)
                client.ServerCertificateValidationCallback = (s, c, h, e) => true;

                client.Connect(_emailService, 25, false);

                // Note: since we don't have an OAuth2 token, disable
                // the XOAUTH2 authentication mechanism.
                client.AuthenticationMechanisms.Remove("XOAUTH2");

                // Note: only needed if the SMTP server requires authentication
                client.Authenticate(userName, _emailPassword);

                client.Send(emailMessage);
                client.Disconnect(true);
            }
        }

        public string GetEmailTemplate()
        {
            string result = "";
            using (FileStream fsRead = new FileStream(_emailTemplate, FileMode.Open))
            {
                int fsLen = (int)fsRead.Length;
                byte[] heByte = new byte[fsLen];
                int r = fsRead.Read(heByte, 0, heByte.Length);
                result = System.Text.Encoding.UTF8.GetString(heByte);
            }
            return result;
        }
    }
}

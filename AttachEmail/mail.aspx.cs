using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmailSend1
{
    public partial class sendmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void send_click(object sender, EventArgs e)
        {

            try
            {
                MailMessage message = new MailMessage(from.Text,to.Text);

                message.Subject = subject.Text.Trim();
                message.Body = body.Text.Trim();
                if (upload.HasFile)
                {
                    HttpFileCollection fc = Request.Files;
                    for (int i = 0; i <= fc.Count - 1; i++)
                    {
                        HttpPostedFile pf = fc[i];
                        Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                        message.Attachments.Add(attach);
                    }
                }
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("mrsolanki1903@gmail.com", “16 CHAR CODE");
                client.Send(message);
                status.Text = "message was sent successfully";
            }
            catch (Exception ex)
            {
                status.Text = ex.StackTrace;
            }
        
     }
}
 }

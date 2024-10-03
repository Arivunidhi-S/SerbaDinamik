using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Threading;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

public partial class ContactUs : System.Web.UI.Page
{

    protected void ValidateCaptcha(object sender, ServerValidateEventArgs e)
    {
        Captcha1.ValidateCaptcha(txtCaptcha.Text.Trim());
        e.IsValid = Captcha1.UserValidated;
        if (e.IsValid)
        {
            SendMailSDSB();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void SendMailSDSB()
    {
        try
        {
            //Send mail to Serba Dinamik - Sales Team
            string strbody = "";
            MailMessage message = new MailMessage();
            message.From = new MailAddress(contact_email.Text.ToString().ToString());
            message.To.Add(new MailAddress("admin@e-serbadk.com"));
            message.CC.Add(new MailAddress("karim@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("antony@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("humanresource@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("arivu@e-serbadk.com"));
            //message.To.Add(new MailAddress("arivu@e-serbadk.com"));
            //message.CC.Add(new MailAddress("nidhiarivu@gmail.com"));
            message.Subject = contact_subject.Text.ToString().ToString();
            strbody = "<table border='0' width='100%'><tr><td><table border='1' width='100%'>";
            strbody = strbody + "<tr><td width='70px'>Name : </td> <td> <b>" + contact_name.Text.ToString().ToString() + "</b> </td></tr>";
            strbody = strbody + "<tr><td>Email : </td> <td> " + contact_email.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td style='vertical-align:top;'>Message : </td> <td> " + contact_msg.Text.ToString().ToString() + " </td></tr></table></td></tr></table>";
            message.IsBodyHtml = true;
            message.Body = strbody;
            SmtpClient client = new SmtpClient("webmail.e-serbadk.com");
            client.Send(message);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully e-mail sent!');", true);
            contact_name.Text = "";
            contact_subject.Text = "";
            contact_msg.Text = "";
            if (contact_email_copy.Checked == true)
            {
                MailMessage message1 = new MailMessage();
                message1.From = new MailAddress("humanresource@e-serbadk.com");
                message1.To.Add(new MailAddress(contact_email.Text.ToString().ToString().Trim()));
                message1.Subject = "Auto Generate Mail";
                message1.Body = "Thank you for contacting us. We will be in touch with you very soon.";
                SmtpClient client1 = new SmtpClient("webmail.e-serbadk.com", 366);
                client1.Credentials = new NetworkCredential("humanresource@e-serbadk.com", "40100");
                client1.Send(message1);
            }
            contact_email.Text = "";
            contact_email_copy.Checked = false;
        }
        catch (Exception ex)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "AlertBox", "alert('" + ex.ToString() + "');", true);
        }
    }

    private string ValidateNull()
    {
        Regex emailRegex = new Regex(@"^[a-zA-Z][\w\.-]{2,28}[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");
        string strRet = "";
        if (contact_name.Text.ToString().ToString() == string.Empty || contact_name.Text.ToString().ToString() == "Name *")
            strRet = "Name cannot be Empty.";
        else if (contact_email.Text.ToString().ToString() == string.Empty || contact_email.Text.ToString().ToString() == "Email *")
            strRet = "Email cannot be Empty.";
        else if (!(emailRegex.IsMatch(contact_email.Text.ToString().Trim())))
            strRet = "Email ID Format is Worng";
        else if (contact_subject.Text.ToString().ToString() == string.Empty || contact_subject.Text.ToString().ToString() == "Subject")
            strRet = "Subject cannot be Empty.";
        else if (contact_msg.Text.ToString().ToString() == string.Empty )
            strRet = "Message cannot be Empty.";
        else
            strRet = "Y";

        return strRet;
    }
}
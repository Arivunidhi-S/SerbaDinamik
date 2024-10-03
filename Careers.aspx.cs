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


public partial class Careers : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //JobtitleDD.Attributes.Add("style", "font-style:italic");
            FillCapctha();

        }
    }
    void FillCapctha()
    {

        try
        {
            Random random = new Random();
            string combination = "23456789ABCDEFGHJKMNPQRSTUVWXYZabcdefghjkmnpqrstuvwxyz";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
        }

        catch
        {
            throw;
        }

    }
    protected void Btn_SendMail_Click(object sender, EventArgs e)
    {
        try
        {
            string val = ValidateNull();
            if (val == "Y")
            {
                if (Session["captcha"].ToString() == txtCaptcha.Text)
                {
                    //lblMsg.Text = "Valid";
                    SendMailSDSB();
                    FillCapctha();
                }
                else
                {
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    lblMsg.Text = "InValid Captcha Try again";
                    FillCapctha();
                }

            }
            else
                lblMsg.Text = val.ToString();
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Could not send the e-mail - error: " + ex.Message;

        }


    }
    private void SendMailSDSB()
    {
        try
        {
            //Send mail to Serba Dinamik - Sales Team
            string strbody = "";
            MailMessage message = new MailMessage();
            message.From = new MailAddress(contact_email.Text.ToString().ToString());
            message.To.Add(new MailAddress("humanresource@e-serbadk.com"));
            message.CC.Add(new MailAddress("karim@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("antony@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("admin@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("arivu@e-serbadk.com"));
            //message.To.Add(new MailAddress("arivu@e-serbadk.com"));
            //if (contact_email_copy.Checked == true)
            //{
            //    message.Bcc.Add(new MailAddress("nidhiarivu@gmail.com"));
            //}
            message.Subject = contact_subject.Text.ToString().ToString();
            strbody = "<table border='0' width='100%'><tr><td><table border='1' width='100%'>";
            strbody = strbody + "<tr><td style='width: 70px'>Name : </td> <td> <b>" + contact_name.Text.ToString().ToString() + "</b> </td></tr>";
            strbody = strbody + "<tr><td>Email : </td> <td> " + contact_email.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td>JobTitle : </td> <td> <i>" + JobtitleDD.Text.ToString().ToString() + " </i></td></tr>";
            strbody = strbody + "<tr><td  style='vertical-align:top;'>Message : </td> <td> " + contact_msg.Text.ToString().ToString() + " </td></tr></table></td></tr></table>";
            message.IsBodyHtml = true;
            message.Body = strbody;
            //START ATTACHMENT CODE
            if (fuAttachment.PostedFile != null
            && fuAttachment.PostedFile.ContentLength > 0)
            {
                //Build an array with the file path, so we can get the file name later.
                string[] strAttachname = fuAttachment.PostedFile.FileName.Split('\\');

                //Create a new attachment object from the posted data and the file name
                Attachment mailAttach = new Attachment(
                fuAttachment.PostedFile.InputStream,  //Data posted from form
                strAttachname[strAttachname.Length - 1] //Filename (from end of our array)
                );

                //Add the attachment to our mail object
                message.Attachments.Add(mailAttach);
            }
            SmtpClient client = new SmtpClient("webmail.e-serbadk.com");
            client.Send(message);
            lblMsg.Text = "Successfully your e-mail sent!";
            lblMsg.ForeColor = System.Drawing.Color.FromArgb(33, 125, 14);
            contact_name.Text = "";
            contact_email.Text = "";
            contact_subject.Text = "";
            contact_msg.Text = "";
            txtCaptcha.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Could not send the e-mail - error: " + ex.Message;

        }
    }
    private string ValidateNull()
    {
        string strRet = "";
        Regex emailRegex = new Regex(@"^[a-zA-Z][\w\.-]{2,28}[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");
        if (JobtitleDD.SelectedItem.Text.ToString() == string.Empty || JobtitleDD.SelectedItem.Text.ToString().ToString() == "<-- Select Job Title -->")
            strRet = "Title cannot be Empty.";
        else if (contact_name.Text.ToString().ToString() == string.Empty || contact_name.Text.ToString().ToString() == "Name *")
            strRet = "Name cannot be Empty.";
        else if (contact_email.Text.ToString().ToString() == string.Empty || contact_email.Text.ToString().ToString() == "Email *")
            strRet = "Email cannot be Empty.";
        else if (!(emailRegex.IsMatch(contact_email.Text.ToString().Trim())))
            strRet = "Email ID Format is Worng";
        else if (contact_subject.Text.ToString().ToString() == string.Empty || contact_subject.Text.ToString().ToString() == "Subject")
            strRet = "Subject cannot be Empty.";
        else if (contact_msg.Text.ToString().ToString() == string.Empty)
            strRet = "Message cannot be Empty.";
        else
            strRet = "Y";
        return strRet;
    }
}


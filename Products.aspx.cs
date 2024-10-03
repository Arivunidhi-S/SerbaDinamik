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
using System.Net.Mail;
using System.Configuration;
//using System.ComponentModel.DataAnnotations;
using System.Text.RegularExpressions;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Login_Click(object sender, EventArgs e)
    {
        //string conStr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        string conStr = ConfigurationManager.AppSettings.Get("connString");

        //string conStr = "Provider=Microsoft.ACE.OLEDB.12.0;data source={MYPATH};Persist Security Info=True";
        conStr = conStr.Replace("{MYPATH}", Server.MapPath("db/Serbadk.mdb"));
        OleDbConnection dbCon = new OleDbConnection(conStr);
        dbCon.Open();
        string sql = "Select FirstName, LastName from Register Where RegisterName = '" + user_name.Text.ToString() + "' and RegisterPasswd = '" + pass_word.Text.ToString() + "'";
        OleDbCommand dbCom = new OleDbCommand(sql, dbCon);
        OleDbDataReader dr = dbCom.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Read();
            Session["Username"] = user_name.Text.ToString();
            user_name.Text = "";
            lblError.ForeColor = Color.Yellow;
            lblError.Text = "Welcome " + dr["FirstName"].ToString() + " " + dr["LastName"].ToString();
            Session["Fullname"] = lblError.Text.ToString();
            Response.Redirect("ProductDownload.aspx");
        }
        else
        {
            lblError.ForeColor = Color.Red;
            lblError.Text = "Invalid Username/Password. Please try again";
        }
        dbCon.Close();
    }

    protected void btnRegister_Click(object sender, System.EventArgs e)
    {
        try
        {
            string val = ValidateNull();
            if (val == "Y")
            {
                if (IsDuplicate() == "N")
                {
                    string conStr = ConfigurationManager.AppSettings.Get("connString");
                    //string conStr = "Provider=Microsoft.ACE.OLEDB.12.0;data source={MYPATH};Persist Security Info=True";
                    conStr = conStr.Replace("{MYPATH}", Server.MapPath("db/Serbadk.mdb"));
                    string sql = "Insert into Register (RegisterName, RegisterPasswd, FirstName, Email, Phone,  Country) values ('" + txtUser.Text.ToString().Trim() + "','" + txtPassword.Text.ToString().Trim() + "','" + txtName.Text.ToString().Trim() + "','" + txtEmail.Text.ToString().Trim() + "','" + txtPhone.Text.ToString().Trim() + "','" + txtCountry.Text.ToString().Trim() + "')";
                    OleDbConnection dbCon = new OleDbConnection(conStr);
                    dbCon.Open();
                    OleDbCommand dbCom = new OleDbCommand(sql, dbCon);
                    int ret = dbCom.ExecuteNonQuery();
                    dbCon.Close();
                    if (ret == 1)
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Green;
                        lblMsg.Text = "Registered Successfully";
                        Session["Username"] = txtUser.Text.ToString().Trim();
                        SendMailSDSB();
                        SendMailCustomer();
                        Response.Redirect("ProductDownload.aspx");
                    }
                    else
                    {
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                        lblMsg.Text = "Error.";
                    }
                }
                else
                {
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    lblMsg.Text = "UserName already exists.";
                }
            }
            else
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = val.ToString();
            }
        }
        catch (Exception ex)
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = ex.Message;
        }
    }

    private void SendMailCustomer()
    {
        try
        {
            //Send to registered User (Trial UserID/Pwd for the online applications)
            string strbody = "";
            MailMessage message = new MailMessage();
            message.From = new MailAddress("admin@e-serbadk.com");
            message.To.Add(new MailAddress(txtEmail.Text.ToString().ToString()));
            message.CC.Add(new MailAddress("enquiry@e-serbadk.com"));
            message.Subject = "Registration Details - www.e-serbadk.com";
            strbody = "<table border='1' width='100%'><tr><td><table border='0' width='100%'>";
            strbody = strbody + "<tr><td>User Name (www.e-serbadk.com/products/) : </td> <td> " + txtUser.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td>Password (www.e-serbadk.com/products/) : </td> <td> " + txtPassword.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td>&nbsp;</td> <td>&nbsp;</td></tr>";
            strbody = strbody + "<tr><td>UserID (AMS Trial Version) : </td> <td>admin</td></tr>";
            strbody = strbody + "<tr><td>Password (AMS Trial Version) : </td> <td>admin</td></tr>";
            strbody = strbody + "<tr><td>&nbsp;</td> <td>&nbsp;</td></tr>";
            strbody = strbody + "<tr><td>UserID (CHMS Trial Version) : </td> <td>admin</td></tr>";
            strbody = strbody + "<tr><td>Password (CHMS Trial Version) : </td> <td>admin</td></tr>";
            strbody = strbody + "<tr><td>&nbsp;</td> <td>&nbsp;</td></tr></table></td></tr></table>";
            message.IsBodyHtml = true;
            message.Body = strbody;
            SmtpClient client = new SmtpClient("webmail.e-serbadk.com");
            client.Send(message);
        }
        catch (Exception ex)
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = ex.Message;
        }
    }

    private void SendMailSDSB()
    {
        try
        {
            //Send mail to Serba Dinamik - Sales Team
            string strbody = "";
            MailMessage message = new MailMessage();
            message.From = new MailAddress("admin@e-serbadk.com");
            message.CC.Add(new MailAddress("karim@e-serbadk.com"));
            message.Bcc.Add(new MailAddress("antony@e-serbadk.com"));
            message.To.Add(new MailAddress("arivu@e-serbadk.com"));
            message.Subject = "New User Registration - www.e-serbadk.com";
            strbody = "<table border='0' width='100%'><tr><td><table border='1' width='100%'>";
            strbody = strbody + "<tr><td>Name : </td> <td> " + txtName.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td>Email : </td> <td> " + txtEmail.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td>Mobile : </td> <td> " + txtPhone.Text.ToString().ToString() + " </td></tr>";
            strbody = strbody + "<tr><td>Country : </td> <td> " + txtCountry.Text.ToString().ToString() + " </td></tr>";
            message.IsBodyHtml = true;
            message.Body = strbody;
            SmtpClient client = new SmtpClient("webmail.e-serbadk.com");
            client.Send(message);
        }
        catch (Exception ex)
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = ex.Message;
        }
    }

    private string ValidateNull()
    {
        Regex emailRegex = new Regex(@"^[a-zA-Z][\w\.-]{2,28}[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");
        string strRet = "";
        if (txtName.Text.ToString().Trim() == string.Empty || txtName.Text.ToString().ToString() == "Name *")
            strRet = "Name cannot be Empty. Please enter Valid Name";
        else if (txtEmail.Text.ToString().Trim() == string.Empty || txtEmail.Text.ToString().ToString() == "Email *")
            strRet = "Email cannot be Empty. Please enter Valid Email";
        else if (!(emailRegex.IsMatch(txtEmail.Text.ToString().Trim())))
            strRet = "Email ID Format is Worng";
        else if (txtPhone.Text.ToString().Trim() == string.Empty || txtPhone.Text.ToString().ToString() == "Mobile *")
            strRet = "Mobile cannot be Empty. Please enter Valid Mobile";
        else if (txtCountry.Text.ToString().Trim() == string.Empty || txtCountry.Text.ToString().ToString() == "Country *")
            strRet = "Country cannot be Empty. Please enter Valid Country";
        else if (txtUser.Text.ToString().Trim() == string.Empty || txtUser.Text.ToString().ToString() == "User ID *")
            strRet = "UserName cannot be Empty. Please enter Valid UserName";
        else if (txtPassword.Text.ToString().Trim() == string.Empty || txtPassword.Text.ToString().ToString() == "Enter-Password ")
            strRet = "Password cannot be Empty. Please enter Valid First Name";
        else if (txtRePassword.Text.ToString().Trim() == string.Empty || txtRePassword.Text.ToString().ToString() == "Retype-Password")
            strRet = "Please re-enter same Password";
        else if (txtPassword.Text.ToString().Trim() != txtRePassword.Text.ToString().Trim())
            strRet = "Password doesn't match. Please re-enter the Password";
        else
            strRet = "Y";
        return strRet;
    }

    private string IsDuplicate()
    {
        string strRet = "";
        //string conStr = "Provider=Microsoft.ACE.OLEDB.12.0;data source={MYPATH};Persist Security Info=True";
        string conStr = ConfigurationManager.AppSettings.Get("connString");
        conStr = conStr.Replace("{MYPATH}", Server.MapPath("db/Serbadk.mdb"));
        string sql = "Select count(*) from Register Where RegisterName = '" + txtUser.Text.ToString().Trim() + "'";
        OleDbConnection dbCon = new OleDbConnection(conStr);
        dbCon.Open();
        OleDbCommand dbCom = new OleDbCommand(sql, dbCon);
        int ret = (int)dbCom.ExecuteScalar();
        dbCon.Close();
        if (ret == 1)
            strRet = "Y";
        else
            strRet = "N";
        return strRet;
    }
}
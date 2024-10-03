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
using System.Security.Cryptography;
using System.Text;
using System.Configuration;

public partial class License : System.Web.UI.Page
{
    public string product = "";
    public string prdDesc = "";
    public string prdPrice = "";
    private string ordAmount = "";

    protected void Page_Load(object sender, EventArgs e)
    {
      
        // Put user code to initialize the page here
        product = Request.QueryString.Get("product");
        prdDesc = Request.QueryString.Get("desc");
        if (product == "AMS")
            prdPrice = ConfigurationManager.AppSettings.Get("AmsPrice");
        else if (product == "CHMS")
            prdPrice = ConfigurationManager.AppSettings.Get("ChmsPrice");
        ordAmount = prdPrice;

        if ((Session["Username"] == null) || (Session["Username"].ToString() == string.Empty))
            Response.Redirect("Products.aspx");
    }

    private string CreateMD5(string orderID)
    {
        System.Security.Cryptography.MD5 md5Hasher = System.Security.Cryptography.MD5.Create();
        string vCode;
        vCode = prdPrice + ConfigurationManager.AppSettings.Get("merchantID") + orderID + ConfigurationManager.AppSettings.Get("VerifyKey");
        Byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(vCode));

        string sBuilder = "";
        for (int i = 0; i < data.Length - 1; i++)
        {
            sBuilder = sBuilder + data[i].ToString("x2");
        }
        return sBuilder.ToString();
    }

    private string RaiseOrder(string name, string email, string phone, string country)
    {

        string sql, ret;
        string balAmount = prdPrice; //Convert.ToInt32(prdPrice) - Convert.ToInt32(ordAmount);
        sql = "Insert into PurchaseOrder (ordAmount, prdAmount, balAmount, ordName, ordEmail, ordPhone, ordDesc, ordCountry) values ('" + ordAmount + "','" + prdPrice + "','" + balAmount + "','" + name + "','" + email + "','" + phone + "','" + prdDesc + "','" + country + "')";
        string conStr = ConfigurationManager.AppSettings.Get("connString");
        //string conStr = "Provider=Microsoft.ACE.OLEDB.12.0;data source={MYPATH};Persist Security Info=True";
        conStr = conStr.Replace("{MYPATH}", Server.MapPath("db/Serbadk.mdb"));
        OleDbConnection dbCon = new OleDbConnection(conStr);
        dbCon.Open();
        OleDbCommand dbCom = new OleDbCommand(sql, dbCon);
        dbCom.ExecuteNonQuery();
        dbCom = new OleDbCommand("Select @@IDENTITY", dbCon);
        ret = dbCom.ExecuteScalar().ToString();
        dbCon.Close();
        return ret;

    }

    protected void btnCheckout_ServerClick(object sender, System.EventArgs e)
    {
        try
        {
            string amount, orderID, buyerName, buyerEmail, buyerPhone, ordDesc, Country, Currency, lan;
            Currency = "usd";
            lan = "en";

            amount = prdPrice;
            //amount = ordAmount;
            ordDesc = prdDesc;
            OleDbDataAdapter dbadap = new OleDbDataAdapter();
            DataSet ds = new DataSet();
            string redirectURL = "", vCode;
            string sql = "Select * from Register Where RegisterName = '" + Session["Username"] + "'";
            string conStr = ConfigurationManager.AppSettings.Get("connString");
            //string conStr = "Provider=Microsoft.ACE.OLEDB.12.0;data source={MYPATH};Persist Security Info=True";
            conStr = conStr.Replace("{MYPATH}", Server.MapPath("db/Serbadk.mdb"));
            OleDbConnection dbCon = new OleDbConnection(conStr);
            dbCon.Open();
            OleDbCommand dbCom = new OleDbCommand(sql, dbCon);
            dbadap.SelectCommand = dbCom;
            dbadap.Fill(ds, "User");
            buyerName = ds.Tables["User"].Rows[0]["FirstName"] + " " + ds.Tables["User"].Rows[0]["LastName"];
            buyerEmail = ds.Tables["User"].Rows[0]["Email"].ToString();
            Session["Email"] = buyerEmail;
            buyerPhone = ds.Tables["User"].Rows[0]["Phone"].ToString();
            Country = ds.Tables["User"].Rows[0]["Country"].ToString();
            dbCon.Close();

            orderID = RaiseOrder(buyerName, buyerEmail, buyerPhone, Country);

            vCode = CreateMD5(orderID);

            string returnURL = ConfigurationManager.AppSettings.Get("returnURL");
            if (cmbPayment.SelectedValue == "Visa")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
                //redirectURL = "https://www.onlinepayment.com.my/MOLPay/pay/serbadinamik/?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency + "&langcode = " + lan;
            else if (cmbPayment.SelectedValue == "May")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/maybank2u.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Mobile")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/mobilemoney.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Pos")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/pospay.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Meps")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/fpx.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Amb")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/amb.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Alliance")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/alb.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Web")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/pay/eserbadk/webcash.php?amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Rhb")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/addPayment/rhb.php?merchantID=eserbadk" + "&amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Eon")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/addPayment/eon.php?merchantID=eserbadk" + "&amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "Mepscash")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/addPayment/mepscash.php?merchantID=eserbadk" + "&amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;
            else if (cmbPayment.SelectedValue == "China")
                redirectURL = "https://www.onlinepayment.com.my/NBepay/addPayment/ips.php?merchantID=eserbadk" + "&amount=" + amount + "&orderid=" + orderID + "&bill_name=" + buyerName + "&bill_email=" + buyerEmail + "&bill_mobile=" + buyerPhone + "&bill_desc=" + prdDesc + "&country=" + Country + "&returnurl=" + returnURL + "&vcode=" + vCode + "&currency=" + Currency;

            Response.Redirect(redirectURL);
        }
        catch
        {

        }
    }
}
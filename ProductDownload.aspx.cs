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
using System.Configuration;

public partial class ProductDownload : System.Web.UI.Page
{
    public string amsPrice = "";
    public string chmsPrice = "";
    public string fmatPrice = ""; public string icnsPrice = "";
    public string imatPrice = ""; public string swimPrice = "";
    public string pcetPrice = ""; public string ppeiPrice = "";
    public string pprsPrice = ""; public string rbiPrice = "";
    public string mocPrice = ""; public string myplantPrice = "";
    public string vibrasolvePrice = ""; public string alignsoftPrice = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        amsPrice = ConfigurationManager.AppSettings.Get("AmsPrice");
        chmsPrice = ConfigurationManager.AppSettings.Get("ChmsPrice");
        fmatPrice = ConfigurationManager.AppSettings.Get("FMATPrice");
        icnsPrice = ConfigurationManager.AppSettings.Get("ICNSPrice");
        imatPrice = ConfigurationManager.AppSettings.Get("IMATPrice");
        swimPrice = ConfigurationManager.AppSettings.Get("SWIMPrice");
        pcetPrice = ConfigurationManager.AppSettings.Get("PCETPrice");
        ppeiPrice = ConfigurationManager.AppSettings.Get("PPEIPrice");
        pprsPrice = ConfigurationManager.AppSettings.Get("PPRSPrice");
        rbiPrice = ConfigurationManager.AppSettings.Get("RBIPrice");
        mocPrice = ConfigurationManager.AppSettings.Get("MOCPrice");
        myplantPrice = ConfigurationManager.AppSettings.Get("MyPlantPrice");
        vibrasolvePrice = ConfigurationManager.AppSettings.Get("VibraSolvePrice");
        alignsoftPrice = ConfigurationManager.AppSettings.Get("AlignSoftPrice");

        if ((Session["Username"] == null) || (Session["Username"].ToString() == string.Empty))
            Response.Redirect("Products.aspx");
    }
}
﻿using System;

using System.Collections.Generic;

using System.Web;

using System.Web.UI;

using System.Web.UI.WebControls;

using System.Drawing;

using System.Drawing.Drawing2D;

using System.Drawing.Imaging;



public partial class GenerateCaptcha : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        Response.Clear();
        int height = 30;
        int width = 100;

        Bitmap bmp = new Bitmap(width, height);
        RectangleF rectf = new RectangleF(10, 5, 0, 0);



        Graphics g = Graphics.FromImage(bmp);

        g.Clear(Color.FromArgb(244, 243, 243));

        g.SmoothingMode = SmoothingMode.AntiAlias;

        g.InterpolationMode = InterpolationMode.HighQualityBicubic;

        g.PixelOffsetMode = PixelOffsetMode.HighQuality;

        g.DrawString(Session["captcha"].ToString(), new Font("Thaoma", 12, FontStyle.Italic), Brushes.Red, rectf);

        //g.DrawRectangle(new Pen(Color.Red), 1, 1, width - 2, height - 2);

        g.Flush();

        Response.ContentType = "image/jpeg";

        bmp.Save(Response.OutputStream, ImageFormat.Jpeg);

        g.Dispose();

        bmp.Dispose();

    }

}
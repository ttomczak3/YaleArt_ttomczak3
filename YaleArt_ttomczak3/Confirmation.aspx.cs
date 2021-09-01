using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YaleArt_ttomczak3
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if(null != Request.QueryString["Name"])
            {
                string Name = Request.QueryString["Name"];
                thankYouSpan.InnerText = "Thank you for reaching out to us " + Name + "; we'll try to respond to you as soon as possible.";
            }
            else
            {
                thankYouSpan.InnerText = "Thank you.";
            }
        }
    }
}
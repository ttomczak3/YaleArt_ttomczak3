using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YaleArt_ttomczak3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Application["supportCounter"] != null)
            {
                support.InnerText = "There are " + Application["supportCounter"] + " supporters.";
            }
            else
            {
                support.InnerText = "No one has supported.";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Name = txtName.Text;
            // Query String
            Response.Redirect("Confirmation.aspx?Name=" + Name);
        }

        protected void btnSupport_Click(object sender, ImageClickEventArgs e)
        {
            // Application State
            if (Application["supportCounter"] == null)
            {
                Application.Add("supportCounter", 1);
            }
            else
            {
                Application["supportCounter"] = Convert.ToInt32(Application["supportCounter"]) + 1;
            }

        }
    }
}
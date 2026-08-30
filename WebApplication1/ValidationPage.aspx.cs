using System;

namespace WebApplication1
{
    public partial class ValidationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

n        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            var lbl = this.Form.FindControl("lblResult") as System.Web.UI.WebControls.Label;
            if (lbl == null) return;
            if (Page.IsValid)
            {
                lbl.ForeColor = System.Drawing.Color.Green;
                lbl.Text = "Submission successful.";
            }
            else
            {
                lbl.ForeColor = System.Drawing.Color.Red;
                lbl.Text = "Please fix validation errors and try again.";
            }
        }
    }
}

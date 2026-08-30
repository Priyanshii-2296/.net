using System;
using System.Data;

namespace WebApplication1
{
    public partial class GridViewPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Price", typeof(decimal));

            dt.Rows.Add(1, "Widget A", 19.99m);
            dt.Rows.Add(2, "Widget B", 29.50m);
            dt.Rows.Add(3, "Widget C", 12.00m);
            dt.Rows.Add(4, "Widget D", 99.99m);

            var gv = this.Form.FindControl("GridView1") as System.Web.UI.WebControls.GridView;
            if (gv != null)
            {
                gv.DataSource = dt;
                gv.DataBind();
            }
        }
    }
}

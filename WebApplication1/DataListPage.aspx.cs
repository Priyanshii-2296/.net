using System;
using System.Collections.Generic;

namespace WebApplication1
{
    public partial class DataListPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataList();
            }
        }

        private void BindDataList()
        {
            var items = new List<dynamic>
            {
                new { ImageUrl = "https://via.placeholder.com/150?text=Item+1", Title = "Product 1", Description = "Description for product 1" },
                new { ImageUrl = "https://via.placeholder.com/150?text=Item+2", Title = "Product 2", Description = "Description for product 2" },
                new { ImageUrl = "https://via.placeholder.com/150?text=Item+3", Title = "Product 3", Description = "Description for product 3" },
                new { ImageUrl = "https://via.placeholder.com/150?text=Item+4", Title = "Product 4", Description = "Description for product 4" },
                new { ImageUrl = "https://via.placeholder.com/150?text=Item+5", Title = "Product 5", Description = "Description for product 5" },
                new { ImageUrl = "https://via.placeholder.com/150?text=Item+6", Title = "Product 6", Description = "Description for product 6" }
            };

            var dl = this.Form.FindControl("DataList1") as System.Web.UI.WebControls.DataList;
            if (dl != null)
            {
                dl.DataSource = items;
                dl.DataBind();
            }
        }
    }
}

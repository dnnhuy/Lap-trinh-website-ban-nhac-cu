using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn_LTW
{
    public partial class Guitar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
            protected void Page_PreRender(object sender, EventArgs e)
            {
               
                if (DropDownList1.SelectedValue != "")
                {
                    string cmdStr = "SELECT MaSP, TenSP, Dongia, Hinh FROM SanPham WHERE MaLSP = " +
                        Convert.ToInt32(DropDownList1.SelectedValue).ToString() + " ORDER BY TenSP";
                    SqlDataSource1.SelectCommand = cmdStr;
                    DataList1.DataBind();
                }
            }
        

    }
}
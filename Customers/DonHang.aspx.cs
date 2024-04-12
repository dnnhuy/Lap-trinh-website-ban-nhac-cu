using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn_LTW
{
    public partial class DonHang : System.Web.UI.Page
    {
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }
        protected void LoadData()
        {
            dt = (DataTable)Session["GioHang"];
            grdDonHang.DataSource = dt;
            grdDonHang.DataBind();
            grdDonHang.Columns[0].ControlStyle.Width = 80;
            grdDonHang.Columns[1].ControlStyle.Width = 150;
            grdDonHang.Columns[2].ControlStyle.Width = 80;
            grdDonHang.Columns[2].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            grdDonHang.Columns[3].ControlStyle.Width = 80;
            grdDonHang.Columns[3].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            grdDonHang.Columns[4].ControlStyle.Width = 100;
            grdDonHang.Columns[4].ItemStyle.HorizontalAlign = HorizontalAlign.Right;
            if (dt != null)
            {
                double tong = (double)Session["tong"];
                lblTongTien.Text = "Tổng tiền trên giỏ hàng là:   " + String.Format("{0:0,000}", tong);
            }
        }

        protected void butDongY_Click(object sender, EventArgs e)
        {
            DateTime d = DateTime.Now;
            string maDonHang = d.Day.ToString() + d.Month.ToString() +
                (d.Year % 100).ToString() + d.Hour.ToString() +
                d.Minute.ToString() + d.Second.ToString();
            Session["txtHoTen"] = txtHoTen;
            Session["txtEmail"] = txtEmail;
            Session["txtDienThoai"] = txtDienThoai;
            Session["txtSoNha"] = txtSoNha;
            Session["txtDuong"] = txtDuong;
            Session["txtPhuong"] = txtPhuong;
            Session["txtQuan"] = txtQuan;
            Session["txtTP"] = txtTP;
            Session["maDH"] = maDonHang;
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(txtEmail.Text);
                mail.From = new MailAddress("2121005193@sv.ufm.edu.vn");
                mail.Subject = "Gởi từ shop nhạc cụ Việt Thương";
                mail.Body = "Đơn hàng có mã là: " + maDonHang + " sẽ được gởi đến quý khách " +
                        txtHoTen.Text + ". Xin cám ơn!";
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("2121005193@sv.ufm.edu.vn", "Klw97366");
                client.Send(mail);
                Server.Transfer("GuiDonHang.aspx");
            }
            catch (SmtpFailedRecipientException ex)
            {
                lblStatus.Text = "Mail không được gởi! " + ex.FailedRecipient;
            }
        }
    }
}
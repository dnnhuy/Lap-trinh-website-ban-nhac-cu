using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAn_LTW.Admin
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void butAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\SANPHAM.mdf;Integrated Security=True"))
            {
                con.Open();
                using (SqlDataAdapter adapt = new SqlDataAdapter())
                {
                    adapt.SelectCommand = new SqlCommand("SELECT MaSP, TenSP, DVT, DonGia, MaLSP, Hinh FROM SanPham", con);
                    DataTable dt = new DataTable();
                    adapt.Fill(dt);
                    string strFileUpload = "";
                    try
                    {
                        if (upHinh.HasFile)
                        {
                            strFileUpload = "~/Image/" + upHinh.FileName;
                            string path = MapPath("/Image/") + upHinh.FileName;
                            upHinh.PostedFile.SaveAs(path);
                        }

                        using (SqlCommand insertCommand = new SqlCommand("INSERT INTO SanPham (MaSP, TenSP, DVT, DonGia, MaLSP, Hinh) VALUES (@MaSP, @TenSP, @DVT, @DonGia, @MaLSP,@Hinh)", con))
                        {
                            insertCommand.Parameters.AddWithValue("@MaSP", txtMaSP.Text);
                            insertCommand.Parameters.AddWithValue("@TenSP", txtTenSP.Text);
                            insertCommand.Parameters.AddWithValue("@DVT", drpDVT.SelectedValue);
                            insertCommand.Parameters.AddWithValue("@DonGia", Convert.ToDouble(txtDonGia.Text));
                            insertCommand.Parameters.AddWithValue("@MaLSP", Convert.ToInt32(drpLoai.SelectedValue));
                            insertCommand.Parameters.AddWithValue("@Hinh", strFileUpload);
                            int rowsAffected = insertCommand.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                DataRow row = dt.NewRow();
                                row["MaSP"] = txtMaSP.Text;
                                row["TenSP"] = txtTenSP.Text;
                                row["DVT"] = "@DVT";
                                row["DonGia"] = Convert.ToDouble(txtDonGia.Text);
                                row["MaLSP"] = Convert.ToInt32(drpLoai.SelectedValue);
                                row["Hinh"] = strFileUpload;
                                dt.Rows.Add(row);
                                lblStatus.Text = "Thêm thành công!";
                            }

                            else
                            {
                                lblStatus.Text = "Không thành công!";
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        lblStatus.Text = ex.Message;
                    }
                }
            }

        }
    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="DoAn_LTW.Admin.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style41 {
            font-weight: bold;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style42 {
            text-align: center;
        }
        .auto-style43 {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            color: #D5BA00;
            width: 42%;
        }
        .auto-style44 {
            color: #D5BA00;
        }
        .auto-style45 {
            height: 39px;
        }
        .auto-style46 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            color: #FFDE00;
        }
        .auto-style47 {
            height: 39px;
            width: 42%;
        }
        .auto-style48 {
            width: 42%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; font-size:14px; color:#0033CC;">
        <tr>
            <td class="auto-style42" colspan="2"><strong>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style41" Text="THÊM SẢN PHẨM"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43">Mã sản phẩm:</td>
            <td>
                <asp:TextBox ID="txtMaSP" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style43">Tên sản phẩm:</td>
            <td>
                <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style43">Đơn vị tính:</td>
            <td>
                <asp:DropDownList ID="drpDVT" runat="server" DataSourceID="srcMatHang" DataTextField="DVT" DataValueField="DVT">
                </asp:DropDownList>
                <asp:SqlDataSource ID="srcMatHang" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT distinct DVT FROM SanPham "></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43">Đơn giá:</td>
            <td>
                <asp:TextBox ID="txtDonGia" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style43">Loại sản phẩm:</td>
            <td>
                <asp:DropDownList ID="drpLoai" runat="server" DataSourceID="srcLoaiHang" DataTextField="TenLSP" DataValueField="MaLSP">
                </asp:DropDownList>
                <asp:SqlDataSource ID="srcLoaiHang" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MaLSP, TenLSP FROM Loaisanpham ORDER BY TenLSP"></asp:SqlDataSource>
            </td>
            <td>&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style43">Hình sản phẩm:</td>
            <td>
                <asp:FileUpload ID="upHinh" runat="server" ForeColor="#000099" />
            </td>
            <td>&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp; </td>
            <td class="auto-style45">
                <asp:Button ID="butAdd" runat="server" ForeColor="#000099" OnClick="butAdd_Click" Text="Thêm" CssClass="auto-style44" />
                <asp:Button ID="butCancel" runat="server" ForeColor="#000099" Text="Hủy Bỏ" CssClass="auto-style44" />
            </td>
            <td class="auto-style45">&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style48">&nbsp; </td>
            <td>
                <asp:Label ID="lblStatus" runat="server" CssClass="auto-style46"></asp:Label>
            </td>
            <td>&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style48">&nbsp; </td>
            <td>&nbsp; </td>
        </tr>
    </table>
</asp:Content>

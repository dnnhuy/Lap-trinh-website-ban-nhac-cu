<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="DoAn_LTW.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            text-align: center;
        height: 99px;
    }
        .auto-style41 {
            font-weight: bold;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style42 {
            font-size: large;
        font-family: Arial, Helvetica, sans-serif;
    }
        .auto-style43 {
        font-size: medium;
        font-family: Arial, Helvetica, sans-serif;
    }
    .auto-style44 {
        font-family: Arial, Helvetica, sans-serif;
    }
    .auto-style45 {
        width: 40px;
    }
    .auto-style46 {
        width: 40px;
        height: 99px;
    }
    .auto-style47 {
        height: 99px;
    }
    .auto-style48 {
        width: 100%;
    }
    .auto-style49 {
        text-align: center;
        height: 99px;
        width: 100%;
        margin-left: auto;
        margin-right: auto;
        padding: 0;
        background-color: #DEDEDE;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style48">
        <tr>
            <td class="auto-style46"></td>
            <td class="auto-style49"> <strong>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style41" Text="GIỎ HÀNG"></asp:Label>
                <br />
            </strong></td>
            <td class="auto-style47"></td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:GridView ID="grdGioHang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" onrowcancelingedit="grdGioHang_RowCancelingEdit" onrowdeleting="grdGioHang_RowDeleting" onrowediting="grdGioHang_RowEditing" onrowupdating="grdGioHang_RowUpdating" Align="Center" CssClass="auto-style44">
                    <Columns>
                        <asp:CommandField CancelText="Hủy Bỏ" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" UpdateText="Cập nhật">
                        <HeaderStyle Width="60px" />
                        </asp:CommandField>
                        <asp:CommandField CancelText="Hủy Bỏ" DeleteText="Xóa" EditText="Sửa" ShowEditButton="True" UpdateText="Cập Nhật">
                        <HeaderStyle Width="100px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã Hàng">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenSP" HeaderText="Tên Hàng">
                        <HeaderStyle HorizontalAlign="Left" Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Gia" HeaderText="Đơn Giá">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TongTien" DataFormatString="{0:0,000}" HeaderText="Thành Tiền">
                        <HeaderStyle Width="100px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="Black" />
                    <HeaderStyle BackColor="#FFDE00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style45">&nbsp;</td>
            <td>
                <asp:Label ID="lblTongTien" runat="server" CssClass="auto-style42" ForeColor="#0033CC"></asp:Label>
                <br />
                <br />
                <button onclick="getBack()" type="button">
                    Tiếp tục mua hàng
                </button>
	<script type="text/javascript">
        function getBack() {
            history.go(-2);
        }
    </script>	&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="butDathang" runat="server" CssClass="auto-style43" onclick="butDathang_Click" PostBackUrl="~/Customers/DonHang.aspx">
        Đặt Hàng
    </asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

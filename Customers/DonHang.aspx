<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DonHang.aspx.cs" Inherits="DoAn_LTW.DonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style45 {
            width: 40px;
        }
        .auto-style40 {
            text-align: center;
        height: 125px;
    }
        .auto-style41 {
            font-weight: bold;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style46 {
        font-size: large;
        font-family: Arial, Helvetica, sans-serif;
    }
    .auto-style47 {
            width: 489px;
        }
    .auto-style48 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
    }
    .auto-style49 {
        font-size: small;
    }
    .auto-style50 {
        width: 40px;
        height: 125px;
    }
    .auto-style51 {
        height: 125px;
    }
        .auto-style52 {
            height: 33px;
        }
        .auto-style53 {
            width: 489px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <table style="width:100%;">
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style40"><strong>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style41" Text="ĐƠN HÀNG"></asp:Label>
                <br />
                <br />
                THÔNG TIN ĐƠN HÀNG:</strong></td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:GridView ID="grdDonHang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Align="Center">
                    <Columns>
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
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#FFDE00" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <br /></td>
        </tr>
        <tr>
            <td class="auto-style45">&nbsp;</td>
            <td>
                <asp:Label ID="lblTongTien" runat="server" CssClass="auto-style46" ForeColor="#0033CC"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;<strong><asp:Label ID="Label2" runat="server" CssClass="auto-style41" Text="THÔNG TIN KHÁCH HÀNG"></asp:Label>
                <br />
                <br />
                </strong>
    </strong>
            </strong>
            </strong>
                <table class="auto-style48">
                    <tr>
                        <td class="auto-style52">Họ tên:</td>
                        <strong>
                        <td class="auto-style53">
                            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Nhập họ tên!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                        </strong>
                        <td class="auto-style52">
                            &nbsp;</td>
                    </tr>
        <strong>
                    <strong>
    <strong>
                    <strong>
                    <tr>
                        <td class="auto-style52">Email:</td>
                        <td class="auto-style53">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="Nhập email!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Điện thoại:</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Nhập số điện thoại!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Số nhà:</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtSoNha" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoNha" ErrorMessage="Nhập số nhà!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Đường:</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtDuong" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDuong" ErrorMessage="Nhập tên đường!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Phường/xã:</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtPhuong" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhuong" ErrorMessage="Nhập phường xã!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Quận/huyện:</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtQuan" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtQuan" ErrorMessage="Nhập tên quận huyện!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Tỉnh/TP:</td>
                        <td class="auto-style47">
                            <asp:TextBox ID="txtTP" runat="server"></asp:TextBox>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTP" ErrorMessage="Nhập tỉnh TP!"></asp:RequiredFieldValidator>
    </strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <asp:Button ID="butDongY" runat="server" Font-Size="Medium" ForeColor="#000099" OnClick="butDongY_Click" style="font-size: small" Text="Thanh Toán Khi Nhận Hàng" Width="259px" />
                            &nbsp;
                            <asp:Label ID="lblStatus" runat="server" CssClass="auto-style49" ForeColor="#0033CC">
                        </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                    </tr>
                </table>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </strong>
            </strong>
</asp:Content>

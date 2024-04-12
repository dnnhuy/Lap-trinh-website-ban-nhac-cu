<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="DoAn_LTW.Admin.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style50 {
            width: 40px;
            height: 33px;
        }
        .auto-style40 {
            text-align: center;
            height: 33px;
        }
        .auto-style41 {
            font-weight: bold;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style51 {
            height: 33px;
        }
        .auto-style52 {
            height: 289px;
        }
        .auto-style45 {
            width: 40px;
        }
        .auto-style25 {
            background-color: black;
            width: 100%;
            height: 101px;
            margin-left: 0px;
        }
        .auto-style29 {
            height: 129px;
            width: 1259px;
            border-bottom: 1px solid #000000;
            padding: 1px 4px;
            background-color: #000000;
        }
        .auto-style28 {
            width: 100%;
            height: 49px;
        }
        .auto-style26 {
            padding: 0;
            width: 272px;
            text-align: center;
        }
        .auto-style32 {
            background-color: #000000;
        }
        .auto-style39 {
            width: 1259px;
            height: 55px;
        }

        .auto-style17 {
            height: 173px;
            text-align: center;
            background-color: #000000;
            margin-bottom: 0px;
        }
        .auto-style21 {
            font-family: Arial, Helvetica, sans-serif;
            margin-left: 0px;
            border-top-style: solid;
            margin-top: 0px;
        }
        .auto-style53 {
            width: 76px;
            height: 70px;
        }
        .auto-style54 {
            width: 69px;
            height: 70px;
        }
        .auto-style55 {
            width: 70px;
            height: 68px;
        }
        .auto-style56 {
            text-align: center;
            background-color: #000000;
        }
        .auto-style57 {
            color: #FFDE00;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .auto-style58 {
            width: 100%;
            height: 569px;
        }
        .auto-style59 {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
            <br />
            <table class="auto-style25">
                 <tr>
                     <td>
                          <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/Image/logo.png" Width="248px" CssClass="auto-style32" />
                     
                          <a id="hinhgiohang0" href="https://localhost:44388/Customers/GioHang.aspx">
                            <asp:Image ID="imgGiohang" runat="server" Height="70px" ImageUrl="https://img.icons8.com/?size=512&id=BQuGRfV3vMf1&format=png" Width="70px"  />
                          </a>
                          <asp:Label  ID="lbSoluong" runat="server" Text="0" Font-Size="X-Large" 
                             Font-Bold="True" ForeColor="yellow">
                        </asp:Label>
                     </td>
                 </tr>
                 <tr class="auto-style42">
                     
                         <strong>
                     
                         <asp:Menu ID="Menu6" runat="server" BackColor="#FFDE00" ForeColor="Black" Height="51px" Orientation="Horizontal" RenderingMode="Table" Width="100%" CssClass="auto-style41">
                                    <DynamicMenuStyle BorderStyle="Double" />
                                    <Items>
                                        <asp:MenuItem NavigateUrl="~/TrangChu.aspx" Text="Trang chủ" Value="Trang chủ"></asp:MenuItem>
                                        <asp:MenuItem Text="Guitar" Value="1" NavigateUrl="~/Customers/Guitar.aspx">
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="Trống" Value="2" NavigateUrl="~/Customers/Trong.aspx">
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="Piano" Value="3" NavigateUrl="~/Customers/Piano.aspx">
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="Phụ kiện" Value="4" NavigateUrl="~/Customers/Phukien.aspx">
                                        </asp:MenuItem>
                                        <asp:MenuItem NavigateUrl="~/Admin/ChiTietSanPham.aspx" Text="Chi tiết nhạc cụ" Value="5"></asp:MenuItem>
                                        <asp:MenuItem NavigateUrl="~/Admin/ThemSanPham.aspx" Text="Thêm nhạc cụ" Value="6"></asp:MenuItem>
                                        <asp:MenuItem Text="Đăng nhập" Value="7" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                                    </Items>
                                </asp:Menu>
                         </strong>
                 </tr>
                                    
            </table>
            <br />
    <table class="auto-style58">
        <tr>
            <td class="auto-style50"></td>
            <td class="auto-style40"><strong>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style41" Text="CHI TIẾT SẢN PHẨM"></asp:Label>
                <br />
                <br />
                <span class="auto-style59">LOẠI SẢN PHẨM</span>: 
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TenLSP" DataValueField="MaLSP">
                </asp:DropDownList>
                </strong></td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style52">
                <strong>
                <asp:GridView ID="grdMatHang" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MaSP" DataSourceID="srcMatHang" GridLines="Horizontal" PageSize="5" Width="100%">
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="MaSP" HeaderText="Mã Hàng" ReadOnly="True" SortExpression="MaSP">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenSP" HeaderText="Tên Hàng">
                        <HeaderStyle HorizontalAlign="Left" Width="120px" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaSP", "~/Customers/Chonsanpham.aspx?MaSP={0}") %>'>
                            <asp:Image ID="Image1" runat="server" Height="30px" Width="30px"
                                ImageUrl='<%# Eval("Hinh")%>' />                             
                        </asp:HyperLink>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="DVT" HeaderText="Đơn Vị Tính" SortExpression="DonViTinh">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DonGia" DataFormatString="{0:0,000}" HeaderText="Đơn Giá" SortExpression="Dongia">
                        <HeaderStyle HorizontalAlign="Left" Width="80px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFDE00" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFDE00" Font-Bold="True" ForeColor="Black" />
                    <HeaderStyle BackColor="#FFDE00" Font-Bold="True" ForeColor="Black" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style45">&nbsp;</td>
            <td>&nbsp;&nbsp;<strong><asp:SqlDataSource ID="srcMatHang" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM SanPham WHERE MaSP = @MaSP" 
        SelectCommand="SELECT MaSP, TenSP, DVT, DonGia, MaLSP, Hinh FROM SanPham WHERE MaLSP = @MaLSP" 
        UpdateCommand="UPDATE SanPham SET TenSP = @TenSP, DVT = @DVT, Dongia = @DonGia WHERE MaSP = @MaSP" >
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="String" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="MaLSP" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="DVT" />
                <asp:Parameter Name="DonGia" Type="Double" />
                <asp:Parameter Name="MaSP" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * from Loaisanpham"></asp:SqlDataSource>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </strong>
        </div>
    </form>
     <footer>
        <div class="width100 social">
		    <span style="text-align: center">
                <ul>
                    <p style = "font-family:arial;">
                        <strong>KẾT NỐI VỚI CHÚNG TÔI TẠI</strong>
                    </p>
                    <a href="https://www.facebook.com/vietthuong.vn"><img src="https://img.icons8.com/?size=512&id=13912&format=png" class="auto-style53" ></a>
			        <a href="https://www.youtube.com/user/videovietthuong"><img src="https://img.icons8.com/?size=512&id=19318&format=png" class="auto-style54"></a>
			        <a href="https://www.instagram.com/vietthuong.music/"><img src="https://img.icons8.com/?size=96&id=Xy10Jcu1L2Su&format=png" class="auto-style55"></a>
		        </ul>
            </span>
	    </div>

        <div class="copyright">
	<div class="auto-style56">
		<br />
		<span class="auto-style57">© 2007 - 2018 Công Ty Cổ Phần TM DV SX Việt Thương / Địa chỉ: 386 CMT8, P.10, Q.3, TPHCM /  GPKD số 0304757232 do sở Kế hoạch Đầu tư TPHCM cấp ngày 01/01/2007. Email: info@vietthuong.vn. </span> 
	</div>
</div>
       
	        
    </footer>
</body>
</html>

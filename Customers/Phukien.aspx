<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Phukien.aspx.cs" Inherits="DoAn_LTW.Customers.Phukien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style43 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style44 {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Phụ kiện:"></asp:Label>
    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TenLSP" DataValueField="MaLSP">
    </asp:DropDownList>
    <div class="auto-style44">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="MaSP" RepeatDirection="Horizontal" RepeatColumns="2" CellPadding="3" CellSpacing="100" HorizontalAlign="Center">
        <ItemTemplate>
            <br />
            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Hinh") %>' CssClass="auto-style42" width="400" height="400"
            ImageAlign="Middle" />
            <br />
            </strong></strong><strong>
            <br />
            </strong><strong></strong><strong>
            <asp:HyperLink ID="HyperLink1" runat="server"
                NavigateUrl='<%# "ChonSanPham.aspx?MaSP=" + Eval("MaSP") %>' 
                Text='<%# Eval("TenSP") %>' CssClass="auto-style43"></asp:HyperLink>
            <br />
            </strong>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style43" Text='<%# Eval("DonGia", "{0:0,000 vnđ}") %>'></asp:Label>
            <strong>
            <br />
            <br />
            <br />
            </strong>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MaSP, TenSP, Dongia, Hinh FROM SanPham WHERE MaLSP = 41 or MaLSP = 42 ORDER BY TenSP" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * from Loaisanpham where MaLSP=41 or MaLSP=42"></asp:SqlDataSource>
    </strong>
</asp:Content>

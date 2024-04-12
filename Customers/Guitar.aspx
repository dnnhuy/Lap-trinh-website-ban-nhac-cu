<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Guitar.aspx.cs" Inherits="DoAn_LTW.Guitar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            text-align: left;
        }
        .auto-style41 {
            text-align: center;
        }
        .auto-style42 {
            text-align: left;
            height: 52px;
        }
        .auto-style43 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style44 {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style40">
        <div class="auto-style42">
            <br />
            <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="    Guitar:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TenLSP" DataValueField="MaLSP">
            </asp:DropDownList>
            </strong></div>
        <div class="auto-style44">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="MaSP" RepeatDirection="Horizontal" RepeatColumns="3" HorizontalAlign="Center">
        <ItemTemplate>
            <br />
            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Hinh") %>' />
            <br />
            </strong></strong>
            <strong>
            <br />
            </strong>
            <strong>
            </strong>
            <strong>
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
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MaSP, TenSP, Dongia, Hinh FROM SanPham WHERE MaLSP = 11 or MaLSP = 12 or MaLSP = 13 ORDER BY TenSP" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
    </asp:SqlDataSource>
            <strong>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * from Loaisanpham where MaLSP=11 or MaLSP=12 or MaLSP=13"></asp:SqlDataSource>
    </strong></asp:Content>

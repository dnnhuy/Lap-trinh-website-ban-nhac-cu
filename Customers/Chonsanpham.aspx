<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Chonsanpham.aspx.cs" Inherits="DoAn_LTW.Chonsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style40 {
        font-size: medium;
        font-family: Arial, Helvetica, sans-serif;
    }
    .auto-style41 {
            font-weight: bold;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
    .auto-style42 {
        font-family: Arial, Helvetica, sans-serif;
    }
    .auto-style43 {
        font-size: medium;
        font-family: Arial, Helvetica, sans-serif;
        background-color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblTenSP" runat="server" CssClass="auto-style42"> </asp:Label>
<br class="auto-style42" />
<asp:Label ID="lblMaSP" runat="server" ForeColor="#0033CC" CssClass="auto-style41"></asp:Label>
<br class="auto-style42" />
<span class="auto-style42">Số lượng:
</span>
<asp:TextBox ID="txtSoluong" runat="server" Text="1" Width="40px" CssClass="auto-style40" TextMode="Number"></asp:TextBox>
&nbsp;<asp:Label ID="lblDonVi" runat="server" ForeColor="#0033CC" CssClass="auto-style43"></asp:Label>
<br class="auto-style42" />
<asp:Label ID="lblDonGia" runat="server" ForeColor="#003399" CssClass="auto-style43"></asp:Label>
<br class="auto-style42" />
<br class="auto-style42" />
<asp:Image ID="imgHinh" runat="server" CssClass="auto-style42" Height="39px" Width="36px" />
<br class="auto-style42" />
<br class="auto-style42" />
<asp:Button ID="butInsert" runat="server" onclick="butInsert_Click" Text="Thêm Vào Giỏ Hàng" Width="197px" />
&nbsp;&nbsp;&nbsp;
  <button type="button" onclick="getBack()">   Trở về   </button>
	<script type="text/javascript">
        function getBack() {
            history.back();
        }
    </script>	
<br class="auto-style42" />
</asp:Content>

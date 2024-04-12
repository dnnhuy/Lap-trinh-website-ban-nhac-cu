<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Quenmatkhau.aspx.cs" Inherits="DoAn_LTW.Quenmatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style43 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" GeneralFailureText="Lấy lại mật khẩu không thành công. Vui lòng thử lại." 
            QuestionFailureText="Câu trả lời của bạn không thể được xác minh. Vui lòng thử lại." 
            QuestionInstructionText="Trả lời câu hỏi sau để nhận mật khẩu." 
            QuestionLabelText="Câu hỏi:" 
            QuestionTitleText="Xác nhận danh tính" 
            SubmitButtonText="Đồng ý" SuccessPageUrl="~/Login.aspx" 
            SuccessText="Mật khẩu của bạn đã được gửi cho bạn." 
            UserNameFailureText="Chúng tôi không thể truy cập thông tin của bạn. Vui lòng thử lại." 
            UserNameInstructionText="Nhập Tên người dùng của bạn để nhận mật khẩu của bạn."
            UserNameLabelText="Tên đăng nhập:" 
            UserNameRequiredErrorMessage="Tên người dùng là bắt buộc." 
            UserNameTitleText="Quên mật khẩu?" CssClass="auto-style43">
            <SubmitButtonStyle BackColor="#FFDA06" BorderColor="White" />
            <MailDefinition From="2121005193@sv.ufm.ude.vn" Subject="[VIỆT THƯƠNG SHOP] MẬT KHẨU MỚI">
            </MailDefinition>
        </asp:PasswordRecovery>
    </div>
</asp:Content>

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="contactForm.ascx.cs" Inherits="about_contactForm" %>
<style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
    }
    .auto-style5 {
        width: 340px;
    }
    .auto-style6 {
    }
    .auto-style7 {
    }
    .auto-style8 {
        width: 377px;
    }
</style>

<table class="auto-style3" runat="server" id="FormTable">
    <tr>
        <td class="auto-style6" colspan="3">Thông tin liên hệ</td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3">Vui lòng nhập tên,email,sdt của bạn</td>
    </tr>
    <tr>
        <td class="auto-style8">Tên</td>
        <td class="auto-style5">
            <asp:TextBox ID="Name" runat="server" Width="197px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Địa chỉ Email</td>
        <td class="auto-style5">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="197px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Xác nhận địa chỉ Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email không khớp nhau">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">xác nhận email</td>
        <td class="auto-style5">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email" Width="195px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">số điện thoại </td>
        <td class="auto-style5">
            <asp:TextBox ID="PhoneHome" runat="server" Width="194px"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="ErrorMessage" ErrorMessage="Nhập số điện thoại">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style5">
            <asp:Button runat="server" Text="Đăng kí" ID="Sendbutton" OnClick="Sendbutton_Click" Width="77px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3">
            <asp:ValidationSummary ID="Message" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
        </td>
    </tr>
    </table>
<asp:Label ID="Message1" runat="server" Text="Message Sent" Visible="false"></asp:Label>


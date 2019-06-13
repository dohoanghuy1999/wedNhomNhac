<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="dangki.aspx.cs" Inherits="controls_Default" %>

<%@ Register Src="~/about/contactForm.ascx" TagPrefix="uc1" TagName="contactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:contactForm runat="server" ID="contactForm" />
</asp:Content>


<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Vui lòng đăng nhập:</p>

    <p> <asp:Label ID="Label2" runat="server" Text="Tài khoản"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="147px"></asp:TextBox>
    </p>
    <p> <asp:Label ID="Label1" runat="server" Text="Mật khẩu"></asp:Label>
        <asp:TextBox ID="TextBox2"  runat="server" style="margin-left: 4px" Width="147px" ></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <button><a href="controls/dangki.aspx">Đăng kí</a></button>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Tên_Bài_Hát" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Tên_Bài_Hát" HeaderText="Tên_Bài_Hát" SortExpression="Tên_Bài_Hát" />
                <asp:BoundField DataField="Nhóm_Nhạc" HeaderText="Nhóm_Nhạc" SortExpression="Nhóm_Nhạc" />
                <asp:BoundField DataField="BXH_Trong_Nước" HeaderText="BXH_Trong_Nước" SortExpression="BXH_Trong_Nước" />
                <asp:BoundField DataField="BXH_Thế_Giới" HeaderText="BXH_Thế_Giới" SortExpression="BXH_Thế_Giới" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Tên_Bài_Hát" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Tên_Bài_Hát" HeaderText="Tên_Bài_Hát" ReadOnly="True" SortExpression="Tên_Bài_Hát" />
                <asp:BoundField DataField="Nhóm_Nhạc" HeaderText="Nhóm_Nhạc" SortExpression="Nhóm_Nhạc" />
                <asp:BoundField DataField="BXH_Trong_Nước" HeaderText="BXH_Trong_Nước" SortExpression="BXH_Trong_Nước" />
                <asp:BoundField DataField="BXH_Thế_Giới" HeaderText="BXH_Thế_Giới" SortExpression="BXH_Thế_Giới" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csdlConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [Tên Bài Hát] = @Tên_Bài_Hát" InsertCommand="INSERT INTO [Table] ([Tên Bài Hát], [Nhóm Nhạc], [BXH Trong Nước], [BXH Thế Giới]) VALUES (@Tên_Bài_Hát, @Nhóm_Nhạc, @BXH_Trong_Nước, @BXH_Thế_Giới)" ProviderName="<%$ ConnectionStrings:csdlConnectionString1.ProviderName %>" SelectCommand="SELECT [Tên Bài Hát] AS Tên_Bài_Hát, [Nhóm Nhạc] AS Nhóm_Nhạc, [BXH Trong Nước] AS BXH_Trong_Nước, [BXH Thế Giới] AS BXH_Thế_Giới FROM [Table]" UpdateCommand="UPDATE [Table] SET [Nhóm Nhạc] = @Nhóm_Nhạc, [BXH Trong Nước] = @BXH_Trong_Nước, [BXH Thế Giới] = @BXH_Thế_Giới WHERE [Tên Bài Hát] = @Tên_Bài_Hát">
            <DeleteParameters>
                <asp:Parameter Name="Tên_Bài_Hát" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tên_Bài_Hát" Type="String" />
                <asp:Parameter Name="Nhóm_Nhạc" Type="String" />
                <asp:Parameter Name="BXH_Trong_Nước" Type="String" />
                <asp:Parameter Name="BXH_Thế_Giới" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nhóm_Nhạc" Type="String" />
                <asp:Parameter Name="BXH_Trong_Nước" Type="String" />
                <asp:Parameter Name="BXH_Thế_Giới" Type="String" />
                <asp:Parameter Name="Tên_Bài_Hát" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>BACK: <a href="Content.aspx">QUAY VỀ</a></p>

</asp:Content>


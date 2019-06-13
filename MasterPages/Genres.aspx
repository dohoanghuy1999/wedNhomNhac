<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="MasterPages_Genres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="558px">
            <Fields>
                <asp:BoundField DataField="Tên_Bài_Hát" HeaderText="Tên_Bài_Hát" SortExpression="Tên_Bài_Hát" />
                <asp:BoundField DataField="Tên_Nhóm" HeaderText="Tên_Nhóm" SortExpression="Tên_Nhóm" />
                <asp:BoundField DataField="Bảng_Xếp_Hạng_Tuần" HeaderText="Bảng_Xếp_Hạng_Tuần" SortExpression="Bảng_Xếp_Hạng_Tuần" />
                <asp:BoundField DataField="Bảng_Xếp_Hạng_Tháng" HeaderText="Bảng_Xếp_Hạng_Tháng" SortExpression="Bảng_Xếp_Hạng_Tháng" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dohoanghuyConnectionString %>" SelectCommand="SELECT [Tên Bài Hát] AS Tên_Bài_Hát, [Tên Nhóm] AS Tên_Nhóm, [Bảng Xếp Hạng Tuần] AS Bảng_Xếp_Hạng_Tuần, [Bảng Xếp Hạng Tháng] AS Bảng_Xếp_Hạng_Tháng FROM [Bảng Xếp Hạng]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

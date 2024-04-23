<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginForm.aspx.cs" Inherits="dbConnect.loginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
             <asp:TextBox ID="tbName" runat="server" Text=""></asp:TextBox>
             <br />
             <asp:Label ID="Label2" runat="server" Text="Department"></asp:Label>
             <asp:TextBox ID="tbDept" runat="server" Text=""></asp:TextBox>
             <br />
             <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
             <asp:TextBox ID="tbCity" runat="server" Text=""></asp:TextBox>
             <br />
             <asp:Label ID="Label4" runat="server" Text="Salary"></asp:Label>
             <asp:TextBox ID="tbSalary" runat="server" Text=""></asp:TextBox>
             <br />
             <br />
        </div>
        <p>
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" style="height: 26px"></asp:Button>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" ProviderName="<%$ ConnectionStrings:RegConnectionString.ProviderName %>" SelectCommand="SELECT [name], [department], [city], [Salary] FROM [Employee_db]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>

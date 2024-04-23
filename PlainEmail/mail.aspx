<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }
        table th, table td
        {
            padding: 5px;
        }
        table, table table td
        {
            border: 0px solid #ccc;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>To:</td>
            <td><asp:TextBox ID="txtTo" runat="server" /></td>
        </tr>
        <tr>
            <td>Subject:</td>
            <td><asp:TextBox ID="txtSubject" runat="server" /></td>
        </tr>
        <tr>
            <td valign = "top">Body:</td>
            <td><asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="150" Width="200" /></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnSend" Text="Send" runat="server" OnClick = "SendEmail" /></td>
        </tr>
    </table>
    </form>
</body>
</html>

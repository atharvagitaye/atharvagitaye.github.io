<!DOCTYPE html>  
<html  
    xmlns="http://www.w3.org/1999/xhtml">  
    <head runat="server">  
        <title></title>  
    </head>  
    <body>  
        <form id="form1" runat="server">  
            <table align="center" width="60%">  
                <tr>  
                    <td>to</td>  
                    <td>  
                        <asp:TextBox ID="to" runat="server" Width="99%">  
                        </asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTo" runat="server" ErrorMessage="Field is Required" ForeColor="Red" ControlToValidate="to">  
                        </asp:RequiredFieldValidator>  
                        <asp:RegularExpressionValidator ID="ExpValidatorTo" runat="server" ErrorMessage="Email is invalid"  
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="to">  
                        </asp:RegularExpressionValidator>  
                    </td>  
                </tr>  
                <tr>  
                    
    
                  
                    <td>from</td>  
                    <td>  
                        <asp:TextBox ID="from" runat="server" Width="99%">  
                        </asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFrom" runat="server"  
ErrorMessage="Field is Required" ForeColor="Red" ControlToValidate="from">  
                        </asp:RequiredFieldValidator>  
                        <asp:RegularExpressionValidator ID="ExpValidatorFrom" runat="server"  
ErrorMessage="Email is invalid"  
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="from">  
                        </asp:RegularExpressionValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td>subject</td>  
                    <td>  
                        <asp:TextBox ID="subject" runat="server" Width="99%">  
                        </asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorsubject" runat="server"  
ErrorMessage="Field is Required" ForeColor="Red" ControlToValidate="subject">  
                        </asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                

                <tr>  
                    <td>body</td>  
                    <td>  
                        <asp:TextBox ID="body" runat="server" Width="99%" Height="150px" TextMode="MultiLine">  
                        </asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorbody" runat="server"  
ErrorMessage="Field is Required" ForeColor="Red" ControlToValidate="body">  
                        </asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td>file upload</td>  
                    <td>  
                        <asp:FileUpload runat="server" AllowMultiple="true" ID="upload">  
                        </asp:FileUpload>  
                    </td>  
                </tr>  
                <tr>  
                    <td></td>  
                    <td>  
                        <asp:Button ID="send" OnClick="send_click" runat="server" Text="send"/>  
                    </td>  
                </tr>  
                <tr>  
                    <td></td>  
                    <td>  
                        <asp:Label ID="status" runat="server">  
                        </asp:Label>  
                    </td>  
                </tr>  
            </table>  
        </form>  
    </body>  
</html> 

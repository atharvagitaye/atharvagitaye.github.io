<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <script>  
        function chkvalidation() {
            // introduce validation code for controls here
            var name = document.getElementById("<%= txtName.ClientID %>").value;
           if (name.length > 0)
            {
                //alert(name);
                return true;
            }  
                
            // You can code for other controls
            return false;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
       

        <div>  
       <table>  
           <tr>  
               <td>Name  
               </td>  
               <td>  
                   <asp:TextBox ID="txtName" runat="server" ClientIDMode="Static" ></asp:TextBox>  
               </td>  
           </tr>  
           <tr>  
               <td>Age  
               </td>  
               <td>  
                   <asp:TextBox ID="txtAge" runat="server"  MaxLength="3"  ></asp:TextBox>  
               </td>  
           </tr>  
           <tr>  
            <td>Mobile  
            </td>  
            <td>  
                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" onkeypress="return OnlyNumbers(event)" ></asp:TextBox>  
            </td>  
        </tr>  
        <tr>  
            <td>Email ID  
            </td>  
            <td>  
                <asp:TextBox ID="txtEmailID" runat="server" placeholder="yourname@server.com" onblur="checkEmail(this)"></asp:TextBox>  
            </td>  
        </tr>  
        <tr>  
            <td rowspan="1">  
                <asp:Button ID="BtnSubmit" Text="Submit" runat="server"  OnClick="BtnSubmit_Click" OnClientClick="return chkvalidation()" />  
                  
            </td>  
        </tr>  
    </table>  
 
</div>  

</form>

</body>
</html>
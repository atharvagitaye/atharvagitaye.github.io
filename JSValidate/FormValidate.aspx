<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title></title>
        <script>
            function OnlyNumbers() {
                var digits = "0123456789";
                var temp;
                var len = document.getElementById("<%=txtCell.ClientID %>")
                    .value.length;
                for (var i = 0; i < len; i++) {
                    temp = document
                        .getElementById("<%=txtCell.ClientID%>")
                        .value.substring(i, i + 1);
                    if (digits.indexOf(temp) == -1) {
                        alert("Please enter correct pin code");
                        document
                            .getElementById("<%=txtCell.ClientID%>")
                            .focus();
                        return false;
                    }
                }
                return true;
            }

            // function chkvalidation() {
            //     // introduce validation code for controls here
            //     var name = document.getElementById(
            //         "<%= txtName.ClientID %>"
            //     ).value;
            //     if (name.length == 0) {
            //         //alert(name);
            //         alert("Name field should not be empty");
            //         return false;
            //     }
            //     var email = document.getElementById(
            //         "<%= EmailID.ClientID %>"
            //     ).value;
            //     //alert(email);
            //     if (email == "") {
            //         alert("Email field should not be empty");
            //         return false;
            //     }
            //     // You can code for other controls
            //     return true;
            // }

            function chkvalidation() {
                var name = document.getElementById("txtName").value;
                var email = document.getElementById("EmailID").value;
                var pinCode = document.getElementById("txtCell").value;

                if (name.trim() === "") {
                    alert("Name field should not be empty");
                    return false;
                }

                if (email.trim() === "") {
                    alert("Email field should not be empty");
                    return false;
                }

                // Check if pin code is not empty and contains only numbers
                if (pinCode.trim() === "" || isNaN(pinCode)) {
                    alert("Please enter a valid pin code");
                    return false;
                }

                // You can add more validation logic here if needed
                return true;
            }


            // For checking email addr.
            function chkEmail()
             {
                 var email = document.getElementById("<%= EmailID.ClientID %>").value;
                 var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; 
                 // /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,5})+$/;


                 if (!email.match(emailExp))
                  {
                     alert("Invalid Email Id");
                     return false;
                 }
             }

        </script>
    </head>
    <body>
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td>Name</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox
                            ID="txtName"
                            runat="server"
                            ClientIDMode="Static"
                        ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Email</td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox
                            name="email"
                            ID="EmailID"
                            runat="server"
                        ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Cell No.</td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox
                            name="contact"
                            ID="txtCell"
                            runat="server"
                            MaxLength="10"
                            onkeypress="return OnlyNumbers(event)"
                        ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button
                            ID="BtnSubmit"
                            Text="Submit"
                            runat="server"
                            OnClick="BtnSubmit_Click"
                            OnClientClick="return chkvalidation()"
                        />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

// aspx.cs

protected void BtnSubmit_Click(object sender, EventArgs e) 
{ 
string a = Request.Form["txtName"]; Response.Write("Hello" + a); 
}
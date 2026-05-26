<%@ Page Language="C#" AutoEventWireup="true" CodeFile="next.aspx.cs" Inherits="next" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color:pink;
        }
        .auto-style1 {
            width: 50%;
            border-style: solid;
            border-width: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large; font-weight: bold; color: #0000FF; text-align: center">
    
        <table align="center" class="auto-style1">
            <tr>
                <td colspan="3">Restaurent Menu</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Dosa" /><br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Pizza" /><br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Burger" /><br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Fried Rice" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="95px" Width="134px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>


</body>
</html>

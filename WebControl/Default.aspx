<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title></title>
    <style>
        body{
        background-color:aqua;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <div>
    
         <asp:Label ID="Label1" runat="server" Text="Enter a number"></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <br />
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
         <br />
         The Table<asp:TextBox ID="TextBox2" runat="server" Height="255px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="176px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>

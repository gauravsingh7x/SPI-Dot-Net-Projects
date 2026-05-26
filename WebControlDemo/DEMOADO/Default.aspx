<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Enter Your Name :
        <br/>
        <asp:TextBox runat="server" ID="TextName" />
        <br/>
        Select Your Gender :
        <asp:RadioButton runat="server" ID="Rbtn_Male" Text="Male" Groupname="gender" required=""/>
        <asp:RadioButton runat="server" ID="Rbtn_Female" Text="female" Groupname="gender"/>
        <br/>
        Enter Your Number :

        <asp:TextBox runat="server" ID="Txt_Mobile" TextMode="Number" required="" />
        <br/>
        Enter Address :
        <asp:TextBox runat="server" ID="Txt_Address" />
        <asp:Button runat="server" ID="Btn" Text="submit" OnClick="Btn_Click" />
    </div>
    </form>
</body>
</html>

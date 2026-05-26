<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Select Your Profile Pic :
        <br/>
        <br/>
        <asp:FileUpload runat="server" ID="Fu_pic" required=""/>
        <br/>
        <br/>
        <asp:Button runat="server" ID="btn" Text="Upload" Onclick="btn_Click"/>
        <br/>
        <br/>
        <asp:Image runat="server" ID="Imgpic" Height="250px" Width="500px" />
        <br/>
        <asp:Label ID="LblDownload" runat="server" Text="Download" />
    </div>
    </form>
</body>
</html>

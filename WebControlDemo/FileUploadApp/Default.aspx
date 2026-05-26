<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:FileUpload runat="server" ID="Fu_File"/>
        <br/>
        <asp:Button runat="server" ID="btn" OnClick="btn_click" Text="Upload File" />

        
            </div>
    </form>
</body>
</html>

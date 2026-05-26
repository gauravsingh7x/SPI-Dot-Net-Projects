<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select City :
        <br />
            <asp:DropDownList runat="server" ID="DDLCity" required="" >
                <asp:ListItem Value="" Text="---Select City---" />
                <asp:ListItem Value="1001" Text="Lucknow" />
                <asp:ListItem Value="1002" Text="Kanpur" />
                <asp:ListItem Value="1003" Text="Sitapur" />
                <asp:ListItem Value="1004" Text="Barabanki" />
            </asp:DropDownList>
            <br/>
            <asp:Button runat="server" ID="btn" OnClick="btn_Click" Text="Submit"/>
            <br/>
            <asp:Label runat="server" ID="Lblmgs" />
        </div>
    </form>
</body>
</html>

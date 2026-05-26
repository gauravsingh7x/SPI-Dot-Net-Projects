<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customgid.aspx.cs" Inherits="customgid" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.5.1.min.js"></script>
    
    <script>
        function del(p)
        {
          
        var id= $(p).next().text();
        var status = confirm("Do you want delet this record ?")
        if (status == true)
        {
            window.location.href = 'customgid.aspx?empid='+id;
        }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="DataView" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>

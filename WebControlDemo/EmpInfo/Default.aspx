<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1>Employee Details</h1>
        <br/>
            <asp:Label runat="server" ID="msg"/>
            <br/>
        Name :
        <asp:TextBox runat="server" ID="Txtname" />
        <br/>
        Gender :
        <asp:RadioButton runat="server" GroupName="male" ID="Rbtnmale"/>Male
        <asp:RadioButton runat="server" GroupName="female"  ID="Rbtnfemale"/>Female
        <br/>
        Mobile :
        <asp:TextBox runat="server"  ID="TxtMobile" />
        <br/>
       Email :
       <asp:TextBox runat="server"  ID="TxtEmail"/>
       <br/>
       Salary :
       <asp:TextBox runat="server" TextMode="number" ID="Txtsalary"/>
       <br/>
       Upload Profile :  
       <asp:FileUpload runat="server" ID="fu_Profile" />
       <br/>
       <asp:Button runat="server" ID="btn" OnClick="btn_Click" />
   </div>
    </form>
</body>
</html>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1>Employee Details</h1>
        <br/>
            <asp:Label runat="server" ID="msg"/>
            <br/>
        Name :
        <asp:TextBox runat="server" ID="Txtname" />
        <br/>
        Gender :
        <asp:RadioButton runat="server" GroupName="male" ID="Rbtnmale"/>Male
        <asp:RadioButton runat="server" GroupName="female"  ID="Rbtnfemale"/>Female
        <br/>
        Mobile :
        <asp:TextBox runat="server"  ID="TxtMobile" />
        <br/>
       Email :
       <asp:TextBox runat="server"  ID="TxtEmail"/>
       <br/>
       Salary :
       <asp:TextBox runat="server" TextMode="number" ID="Txtsalary"/>
       <br/>
       Upload Profile :  
       <asp:FileUpload runat="server" ID="fu_Profile" />
       <br/>
       <asp:Button runat="server" ID="btn" OnClick="btn_Click" />
   </div>
    </form>
</body>
</html>
>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5

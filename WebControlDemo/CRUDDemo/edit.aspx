<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Edit Employee</h2>
        <br/>
       <a href="customgid.aspx">Back</a>
        <br/>
        <asp:HiddenField ID="hid" runat="server"/>
        Enter Employee Name :
        <br/>
        <asp:TextBox runat="server" ID="Txt_Empname" required=""/>
        <br/>
        Select Gender :
        <asp:RadioButton runat="server" ID="Rbtn_Male" Text="Male" GroupName="gender" required=""/>
        <asp:RadioButton runat="server" ID="Rbtn_Female" Text="Female" GroupName="gender" required=""/>
        <br/>
        Enter Mobile number :
        <asp:TextBox runat="server" ID="Txt_mobileno" TextMode="Number" required=""/>
        <br/>
        Enter Email :
        <br/>
        <asp:TextBox runat="server" TextMode="Email" ID="Txt_Email" required=""/>
            <br/>
         Enter Department :
        <asp:DropDownList runat="server" ID="DDLDepartment">
            <asp:ListItem Value="">Select Department</asp:ListItem> 
             <asp:ListItem Value="">HR</asp:ListItem>
            <asp:ListItem Value="testing">testing</asp:ListItem>
            <asp:ListItem Value="Account">Account</asp:ListItem>
            <asp:ListItem Value="Devlopment">Devlopment</asp:ListItem>      
            <asp:ListItem Value=""></asp:ListItem>
            </asp:DropDownList>
        <br/>
        
        Enter Addresss :
        <asp:TextBox runat="server" ID="Txt_Address" TextMode="MultiLine" required=""></asp:TextBox>
      <br/>
         Enter Salary :
         <asp:TextBox runat="server" ID="Txt_Salary" TextMode="Number" required=""></asp:TextBox>
       
        <asp:Button runat="server" ID="btn_update" Text="Update" OnClick="btn_update_Click"/>


    </div>
    </form>
</body>
</html>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Edit Employee</h2>
        <br/>
       <a href="customgid.aspx">Back</a>
        <br/>
        <asp:HiddenField ID="hid" runat="server"/>
        Enter Employee Name :
        <br/>
        <asp:TextBox runat="server" ID="Txt_Empname" required=""/>
        <br/>
        Select Gender :
        <asp:RadioButton runat="server" ID="Rbtn_Male" Text="Male" GroupName="gender" required=""/>
        <asp:RadioButton runat="server" ID="Rbtn_Female" Text="Female" GroupName="gender" required=""/>
        <br/>
        Enter Mobile number :
        <asp:TextBox runat="server" ID="Txt_mobileno" TextMode="Number" required=""/>
        <br/>
        Enter Email :
        <br/>
        <asp:TextBox runat="server" TextMode="Email" ID="Txt_Email" required=""/>
            <br/>
         Enter Department :
        <asp:DropDownList runat="server" ID="DDLDepartment">
            <asp:ListItem Value="">Select Department</asp:ListItem> 
             <asp:ListItem Value="">HR</asp:ListItem>
            <asp:ListItem Value="testing">testing</asp:ListItem>
            <asp:ListItem Value="Account">Account</asp:ListItem>
            <asp:ListItem Value="Devlopment">Devlopment</asp:ListItem>      
            <asp:ListItem Value=""></asp:ListItem>
            </asp:DropDownList>
        <br/>
        
        Enter Addresss :
        <asp:TextBox runat="server" ID="Txt_Address" TextMode="MultiLine" required=""></asp:TextBox>
      <br/>
         Enter Salary :
         <asp:TextBox runat="server" ID="Txt_Salary" TextMode="Number" required=""></asp:TextBox>
       
        <asp:Button runat="server" ID="btn_update" Text="Update" OnClick="btn_update_Click"/>


    </div>
    </form>
</body>
</html>
>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5

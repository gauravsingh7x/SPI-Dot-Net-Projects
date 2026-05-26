<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Display All Record </h1>
        <p> 
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="regid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="regid" HeaderText="regid" InsertVisible="False" ReadOnly="True" SortExpression="regid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                    <asp:BoundField DataField="filename" HeaderText="filename" SortExpression="filename" />
                    <asp:BoundField DataField="regdate" HeaderText="regdate" SortExpression="regdate" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cruddbConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Employee] WHERE [regid] = @original_regid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([mobileno] = @original_mobileno) OR ([mobileno] IS NULL AND @original_mobileno IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([department] = @original_department) OR ([department] IS NULL AND @original_department IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([filename] = @original_filename) OR ([filename] IS NULL AND @original_filename IS NULL)) AND (([regdate] = @original_regdate) OR ([regdate] IS NULL AND @original_regdate IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))" InsertCommand="INSERT INTO [Tbl_Employee] ([name], [gender], [mobileno], [email], [department], [address], [salary], [filename], [regdate], [password]) VALUES (@name, @gender, @mobileno, @email, @department, @address, @salary, @filename, @regdate, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tbl_Employee]" UpdateCommand="UPDATE [Tbl_Employee] SET [name] = @name, [gender] = @gender, [mobileno] = @mobileno, [email] = @email, [department] = @department, [address] = @address, [salary] = @salary, [filename] = @filename, [regdate] = @regdate, [password] = @password WHERE [regid] = @original_regid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([mobileno] = @original_mobileno) OR ([mobileno] IS NULL AND @original_mobileno IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([department] = @original_department) OR ([department] IS NULL AND @original_department IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([filename] = @original_filename) OR ([filename] IS NULL AND @original_filename IS NULL)) AND (([regdate] = @original_regdate) OR ([regdate] IS NULL AND @original_regdate IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_regid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_mobileno" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_department" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_salary" Type="Decimal" />
                    <asp:Parameter Name="original_filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_regdate" />
                    <asp:Parameter Name="original_password" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="department" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="salary" Type="Decimal" />
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="regdate" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="department" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="salary" Type="Decimal" />
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="regdate" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="original_regid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_mobileno" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_department" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_salary" Type="Decimal" />
                    <asp:Parameter Name="original_filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_regdate" />
                    <asp:Parameter Name="original_password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <br/>

    </div>
    </form>
</body>
</html>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Display All Record </h1>
        <p> 
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="regid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="regid" HeaderText="regid" InsertVisible="False" ReadOnly="True" SortExpression="regid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                    <asp:BoundField DataField="filename" HeaderText="filename" SortExpression="filename" />
                    <asp:BoundField DataField="regdate" HeaderText="regdate" SortExpression="regdate" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cruddbConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Employee] WHERE [regid] = @original_regid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([mobileno] = @original_mobileno) OR ([mobileno] IS NULL AND @original_mobileno IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([department] = @original_department) OR ([department] IS NULL AND @original_department IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([filename] = @original_filename) OR ([filename] IS NULL AND @original_filename IS NULL)) AND (([regdate] = @original_regdate) OR ([regdate] IS NULL AND @original_regdate IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))" InsertCommand="INSERT INTO [Tbl_Employee] ([name], [gender], [mobileno], [email], [department], [address], [salary], [filename], [regdate], [password]) VALUES (@name, @gender, @mobileno, @email, @department, @address, @salary, @filename, @regdate, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tbl_Employee]" UpdateCommand="UPDATE [Tbl_Employee] SET [name] = @name, [gender] = @gender, [mobileno] = @mobileno, [email] = @email, [department] = @department, [address] = @address, [salary] = @salary, [filename] = @filename, [regdate] = @regdate, [password] = @password WHERE [regid] = @original_regid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([mobileno] = @original_mobileno) OR ([mobileno] IS NULL AND @original_mobileno IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([department] = @original_department) OR ([department] IS NULL AND @original_department IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([filename] = @original_filename) OR ([filename] IS NULL AND @original_filename IS NULL)) AND (([regdate] = @original_regdate) OR ([regdate] IS NULL AND @original_regdate IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_regid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_mobileno" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_department" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_salary" Type="Decimal" />
                    <asp:Parameter Name="original_filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_regdate" />
                    <asp:Parameter Name="original_password" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="department" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="salary" Type="Decimal" />
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="regdate" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="department" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="salary" Type="Decimal" />
                    <asp:Parameter Name="filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="regdate" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="original_regid" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_mobileno" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_department" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_salary" Type="Decimal" />
                    <asp:Parameter Name="original_filename" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_regdate" />
                    <asp:Parameter Name="original_password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <br/>

    </div>
    </form>
</body>
</html>
>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5

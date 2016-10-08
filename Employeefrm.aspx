<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employeefrm.aspx.cs" Inherits="EmployeeWebApplication.Employeefrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr>
                <td>
                    Employee Number  :
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Employee Name  :
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Employee Salary  :
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                  
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
                </td>
            </tr>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </table>
    </div>
    </form>
</body>
</html>

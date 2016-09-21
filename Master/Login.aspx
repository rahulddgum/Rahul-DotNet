<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <fieldset style="text-align:center;width:20%;margin-left:500px;margin-top:100px;padding-right:50px"><legend>Login</legend>
   <table style="text-align:center">
        <tr>
            <td>UserName*</td>
            <td><asp:TextBox ID="TxtUserName" runat="server" MaxLength="10"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" Text="*" ErrorMessage="Enter UserName" ForeColor="#CC0000" ControlToValidate="TxtUserName" ID="FieldName1">*</asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                  runat="server" ErrorMessage="Enter UserName" 
                  ValidationExpression="^[a-zA-Z'.\s]{1,10}$" ControlToValidate="TxtUserName"></asp:RegularExpressionValidator></td>

        </tr>
        <tr>
            <td>Password*:</td>
            <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" text="*" ErrorMessage="Enter Password" ForeColor="#CC0000" ControlToValidate="TxtPassword" ID="FieldPassword1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Incorrect" 
                ControlToValidate="TxtPassword" ValidationExpression="^[a-zA-Z'.\s]{1,10}$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="2"> <asp:Button ID="BtnSubmit" runat="server" Text="Login" OnClick="BtnSubmit_Click" /></td>
        </tr>

       <tr>
       <td colspan="2"><a href="ForgotPassword.aspx">Forgot Password...?</a></td>
        </tr>
       <tr>
      <td colspan="2"><a href="Register.aspx">New Member</a></td>
       </tr>
    </table>
                  
               <asp:Label ID="lblLoginStatus" runat="server" ForeColor="Red"></asp:Label>
</fieldset>
</asp:Content>


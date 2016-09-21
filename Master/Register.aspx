<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" EnableEventValidation="false" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
   
     <h1 style="margin-left:100px;margin-top:50px">Enter Your Details</h1>               
              <fieldset style="text-align:center;margin-left:500px;margin-top:50px;width:30%;padding-right:50px"> <legend>Register</legend>
                  <table style="text-align:center">
                      <tr><td>UserName*</td>
               <td> <asp:TextBox ID="TxtUserName" runat="server" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter UserName" ForeColor="#CC0000" ControlToValidate="TxtUserName" ID="FieldIdName" Text="*">*</asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter UserName" ValidationExpression="^[a-zA-Z'.\s]{1,10}$" ControlToValidate="TxtUserName"></asp:RegularExpressionValidator></td>
            </tr>
                   <tr>
              <td> Password*</td>
               <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
              <td><asp:RequiredFieldValidator runat="server" Text="*" ErrorMessage="Enter Password" ForeColor="#CC0000" ControlToValidate="TxtPassword" ID="FieldIdPassword" >*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ErrorMessage="Enter Password" runat="server" ValidationExpression="^[a-zA-Z'.\s]{1,10}$" ControlToValidate="TxtPassword"></asp:RegularExpressionValidator></td>
                </tr>
                   <tr>
                       <td> ConfirmPassword*</td>
                        <td><asp:TextBox ID="TxtConformPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                  <td> <asp:RequiredFieldValidator runat="server" Text="*" ErrorMessage="Cnform Password" ForeColor="#CC0000" ControlToValidate="TxtConformPassword" ID="ConformField" >*</asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtConformPassword" ControlToCompare="TxtPassword" ErrorMessage="UnMatch" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator></td>
                   </tr>
                 <tr>
                     <td> Email-Id*</td>
               <td><asp:TextBox ID="TxtEmail_id" runat="server"></asp:TextBox></td>
                  <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ErrorMessage="Enter MailId" ControlToValidate="TxtEmail_id">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                       runat="server" ErrorMessage="Enter Mail Id" ControlToValidate="TxtEmail_Id"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               </td> 
                </tr>
                   <tr>
               <td>Phone*</td>
                <td> <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator runat="server" ForeColor="#CC0000" ControlToValidate="TxtPhone" ErrorMessage="Enter Phone Number">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only Numbers" ControlToValidate="TxtPhone" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></td>
                 </tr>
           
           <!-- <tr><td>Gender</td>
                <td>
                <input type="radio" id="male" name="gender" value="male"/>Male
                <input type="radio" name="gender"value="female"/>Female</td></tr>-->
                <tr>
               <td colspan="2">
                    <asp:Button ID="btn1" Text="Save" OnClick="SaveMethod" runat="server" />
               </td>
               </tr>
                      <tr>
                          <td colspan="3"><asp:Label id="Status" runat="server" ForeColor="Red"></asp:Label></td>
                      </tr>
                  </table>
              </fieldset>
        </asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <table class="center">
        <tr>
            <td>Email-Id</td>
            <td><input type="text" id="emailid" name="email-id" /></td>
        </tr>
        <tr>
            <td></td><td><input type="button" id="submit" value="Submit" /></td>
        </tr>
    </table>
</asp:Content>


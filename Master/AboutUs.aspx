<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <div>
        <h1>AboutUs</h1>
        <h4>You contact at any time 24/7<br /><br />Phone#:123-456-7890<br />Email-Id:rahul@gmail.com<br />Fax:142123123<br />
            To Get More Information <a runat="server" href="<%$  appsettings:WebHelpURL %>" target="_blank">ClickHere</a></h4>
    </div>
</asp:Content>


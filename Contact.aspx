<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
    {
        width: 73%;
    }
    .style7
    {
        width: 182px;
    }
        .style8
        {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table class="style3" align="center">
    <tr>
        <td class="style8" style="font-size: 12px; font-style: normal; color: #FFFFFF">
            <asp:Label ID="Label1" runat="server" Text="Address:" ForeColor="#CC9900"></asp:Label>
        </td>
        <td class="style7" style="font-size: 12px; font-style: normal; color: #FFFFFF">
            4/1354-A,
            <br />
            Near Old Feroz Hospital,<br />
            Sir Syed Nagar,<br />
            Aligarh-202002,<br />
            U.P., India</td>
    </tr>
    <tr>
        <td class="style8" style="font-size: 12px; font-style: normal; color: #FFFFFF">
            <asp:Label ID="Label2" runat="server" Text="Contact No.:" Width="140px" 
                ForeColor="#CC9900"></asp:Label>
        </td>
        <td class="style7" style="font-size: 12px; font-style: normal; color: #FFFFFF">
            +91-989-748-8961</td>
    </tr>
</table>
</asp:Content>


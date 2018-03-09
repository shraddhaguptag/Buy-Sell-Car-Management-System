<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
    {
        width: 45%;
            height: 174px;
        }
    .style4
    {
        width: 567px;
    }
        .style5
        {
            width: 111px;
        }
        .style6
        {
            width: 111px;
            height: 30px;
        }
        .style7
        {
            width: 567px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style3" align="center">
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: 12px; color: #FFFFFF; font-style: normal;" class="style5">
            <asp:Label ID="Label1" runat="server" Text="LoginId"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-size: 12px; color: #FFFFFF; font-style: normal;" class="style5">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password">*</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            </td>
        <td class="style7">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                BackColor="#CC9900" Width="128px" />
        </td>
    </tr>
</table>
</asp:Content>


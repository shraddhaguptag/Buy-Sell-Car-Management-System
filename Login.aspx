<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
        .style4
        {
            width: 178px;
            height: 39px;
        }
        .style5
        {
            width: 174px;
        }
        .style6
        {
            width: 174px;
            height: 39px;
        }
        .style7
        {
            height: 39px;
        }
        .style8
        {
            width: 174px;
            height: 37px;
        }
        .style9
        {
            height: 37px;
        }
        .style10
        {
            width: 174px;
            height: 36px;
        }
        .style11
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style3">
    <tr>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style5">
            &nbsp;</td>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                Height="16px" />
        </td>
    </tr>
    <tr>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style6">
            User Name</td>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style4">
            <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
        </td>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is required !" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style8">
            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Password"></asp:Label>
        </td>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            colspan="2" class="style9">
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="8" TextMode="Password" 
                Width="160px">*</asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Password is required !" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style10">
            </td>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            colspan="2" class="style11">
            <asp:Button ID="Button1" runat="server" BackColor="#CC9900" Text="Login" 
                onclick="Button1_Click" Width="160px" />
        </td>
    </tr>
    <tr>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            class="style5">
            &nbsp;</td>
        <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF" 
            colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" ForeColor="White" Text="New User ?"></asp:Label>
&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC9900" 
                NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>

        </td>
    </tr>
</table>
</asp:Content>


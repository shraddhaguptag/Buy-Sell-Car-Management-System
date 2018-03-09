<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuyCar.aspx.cs" Inherits="BuyCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table style="font-size: 12px; font-style: normal; color: #FFFFFF;">
<tr>
                        <td class="style27" colspan="2" 
                            style="color: #FF0000; font-family: 'Times New Roman', Times, serif">
                             <br />
                             <asp:ValidationSummary ValidationGroup="val1" ID="ValidationSummary1" HeaderText="The following fields are empty or some error has occurred:"
                      BorderColor="#CC9900" ForeColor="Red" BackColor="Black" 
                                 DisplayMode="BulletList" EnableClientScript="true" runat="server" 
                                 BorderStyle="Solid" Height="137px" Width="466px"/>
                     &nbsp;<br />
                                                          </td>
                  </tr>
                    <tr>
                        <td class="style3">
                            Name</td>
                        <td class="style22">
                            <asp:TextBox ID="TBName" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                ErrorMessage="Name" ForeColor="Red" ControlToValidate="TBName">*</asp:RequiredFieldValidator>
                           </td>
                    </tr>

                    <tr>
                        <td class="style3">
                            E-mail</td>
                        <td class="style26">
                            <asp:TextBox ID="TBEmail" runat="server" Width="180px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TBEmail" ErrorMessage="Enter the valid email ID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="val1" ForeColor="Red">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="TBEmail" ErrorMessage="Email is Required" 
                    ValidationGroup="val1" ForeColor="Blue">*</asp:RequiredFieldValidator>
                           </td>
                    </tr>
                    <tr>
                        &nbsp;</td>
                        <td class="style3">
                            <asp:Label ID="Label10" runat="server" Text="Car-Id"></asp:Label>
                        </td>
                        <td class="style18" 
                            style="color: #0000FF; font-style: italic; font-size: 11px">
                            <asp:TextBox ID="TBCar_Id" runat="server" style="height: 22px" Width="180px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ErrorMessage="Car-Id" Text="*" ControlToValidate="TBCar_Id" ForeColor="Red" 
                                ValidationGroup="val1" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                            <br />
                            (car-registration-no.)</tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label12" runat="server" Text="Payment Mode"></asp:Label>
                        </td>
                        <td class="style12">
                        
                            <asp:DropDownList ID="DDPaymentMode" runat="server" Width="180px" 
                                style="height: 22px"> 
                                <asp:ListItem>Cash</asp:ListItem>
                                <asp:ListItem>DD</asp:ListItem>
                                <asp:ListItem Selected="true" >----</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ErrorMessage="Payment Mode is required" Text="*" 
                                ControlToValidate="DDPaymentMode" ForeColor="Red" 
                                ValidationGroup="val1" InitialValue="----"></asp:RequiredFieldValidator>

                           </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label13" runat="server" Text="Bank Name"></asp:Label>
                        </td>
                        <td class="style12">
                        
                            <asp:DropDownList ID="DDBankName" runat="server" Height="16px" Width="180px" >
                            <asp:ListItem Selected="true" >----</asp:ListItem>
                                <asp:ListItem>ICICI</asp:ListItem>
                                <asp:ListItem>Canara</asp:ListItem>
                                <asp:ListItem>SBI</asp:ListItem>
                                <asp:ListItem>HDFC</asp:ListItem>
                                <asp:ListItem>HSBC</asp:ListItem>
                                <asp:ListItem>PNB</asp:ListItem>
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ErrorMessage="Bank is required" Text="*" 
                                ControlToValidate="DDBankName" ForeColor="Red" 
                                ValidationGroup="val1" InitialValue="----"></asp:RequiredFieldValidator>

                           </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Dated</td>
                        <td class="style12" style="font-size: 11px; color: #0000FF; font-style: italic">
                            <asp:TextBox ID="TBDated" runat="server" Width="180px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ErrorMessage="Date" Text="*" ControlToValidate="TBDated" ForeColor="Blue" 
                                ValidationGroup="val1"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="TBDated" ErrorMessage="Dated" ForeColor="Red" 
                                ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" 
                                ValidationGroup="val1">*</asp:RegularExpressionValidator>
                            <br />
                            (dd/mm/yyyy)</td>
                    </tr>
                    <tr>
                        <td class="style14" colspan="2">
                        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
<asp:Button ValidationGroup="val1" CausesValidation="true" ID="Submit" runat="server" Text="Submit" 
                                onclick="Submit_Click" BackColor="#CC9900" Width="111px"/>
                        
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#CC9900" 
                                onclick="Button1_Click" Text="Reset" Width="111px" />
                        
                         </td>
                    </tr>
    </table>
</asp:Content>


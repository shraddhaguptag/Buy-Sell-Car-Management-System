<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SellCar.aspx.cs" Inherits="SellCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 980px;
        }
        .style10
        {
            width: 163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style3">
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                class="style10">
                        <td class="style22" colspan="2" 
                            style="color: #FF0000; font-family: 'Times New Roman', Times, serif;">
                            &nbsp;</td>
                  </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                class="style10">
                        <td>
                             <asp:ValidationSummary ValidationGroup="val1" ID="ValidationSummary1" HeaderText="The following fields are empty or some error has occured:"
                      BorderColor="#CC9900" ForeColor="Red" BackColor="Black" 
                                 EnableClientScript="true" runat="server" Height="137px" Width="466px" 
                                 BorderStyle="Solid"/>
                        </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;"> 
                        <td class="style20">
                            Name</td>
                        <td class="style20">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TName" runat="server" Width="180px" ValidationGroup="val1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RName" runat="server" 
                                ErrorMessage="Name" Text="*"  ControlToValidate="TName" ForeColor="Red" 
                                ValidationGroup="val1" ></asp:RequiredFieldValidator>
                           </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            <asp:Label ID="Label10" runat="server" Text="Car Registration No."></asp:Label>
                        </td>
                        <td class="style18">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TCarRegis" runat="server" ForeColor="Red" Width="180px" 
                                ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RCarRegis" runat="server" 
                                ErrorMessage="Car-Id" Text="*" ControlToValidate="TCarRegis" ForeColor="Red" 
                                ValidationGroup="val1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            Make</td>
                        <td class="style12">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:DropDownList ID="DMake" 
                                runat="server" AutoPostBack="True" onselectedindexchanged="DMake_SelectedIndexChanged"
                                style="height: 22px" Width="180px" >
                                <asp:ListItem>----</asp:ListItem>
                                <asp:ListItem>Maruti Suzuki</asp:ListItem>
                                <asp:ListItem>Hyundai</asp:ListItem>
                                <asp:ListItem>Honda</asp:ListItem>
                                <asp:ListItem Value="Chevrolet">Chevrolet</asp:ListItem>
                                <asp:ListItem>Mahindra</asp:ListItem>
                                <asp:ListItem>Tata</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RMake" runat="server" 
                                ControlToValidate="DMake" ErrorMessage="Brand" ForeColor="Red" 
                                InitialValue="----" ValidationGroup="val1">*</asp:RequiredFieldValidator>

                           </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style21">
                            Model</td>
                        <td class="style21" 
                            style="font-style: italic; color: #000080; font-size: 11px">
                        
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                             <asp:DropDownList ID="DModel" runat="server" Enalbed="False" Width="180px" 
                                  >
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RModel" runat="server" 
                                 ErrorMessage="Model" ForeColor="Red" ControlToValidate="DModel" 
                                 InitialValue="----" ValidationGroup="val1">*</asp:RequiredFieldValidator>
                             <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            (First choose the brand)</td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td>
                        
                            Fuel Type</td>
                        <td class="style14">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DFuel" runat="server" Width="180px">
                                <asp:ListItem>Gasoline</asp:ListItem>
                                <asp:ListItem>Diesel</asp:ListItem>
                                <asp:ListItem>Electric</asp:ListItem>
                                <asp:ListItem>CNG</asp:ListItem>
                                <asp:ListItem>Petrol</asp:ListItem>
                                <asp:ListItem Selected="true" >----</asp:ListItem>
                            </asp:DropDownList>
                        
                            <asp:RequiredFieldValidator ID="RFuel" runat="server" ControlToValidate="TYear" 
                                ErrorMessage="Fuel Type" ForeColor="Red" ValidationGroup="val1">*</asp:RequiredFieldValidator>
                        
                            &nbsp;</td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            Transmission</td>
                        <td class="style12">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:DropDownList ID="DTransission" runat="server" Width="180px">
                                <asp:ListItem>----</asp:ListItem>
                                <asp:ListItem>Manual</asp:ListItem>
                                <asp:ListItem>Automatic</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RTransission" runat="server" 
                                Display="Dynamic" ErrorMessage="Transission" 
                                ControlToValidate="DTransission" ForeColor="Red" InitialValue="----" 
                                ValidationGroup="val1">*</asp:RequiredFieldValidator>

                           </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td>
                            Year</td>
                        <td>
                        
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                             <asp:TextBox ID="TYear" runat="server" Width="180px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RYear" runat="server" ControlToValidate="TYear" 
                                 ErrorMessage="Year" ForeColor="Red" ValidationGroup="val1">*</asp:RequiredFieldValidator>
                        </td>
                        </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            <asp:Label ID="Label12" runat="server" Text="Kilometres Used"></asp:Label>
                        </td>
                        <td class="style12">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:TextBox ID="TKm" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RKm" runat="server" 
                                ErrorMessage="Kilometer used is required" Text="*" 
                                ControlToValidate="TKm" ForeColor="Red" 
                                ValidationGroup="val1"></asp:RequiredFieldValidator>

                           </td>
                        </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            Condition</td>
                        <td class="style12">
                        
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                             <asp:DropDownList ID="DCondition" runat="server" ValidationGroup="val1" 
                                 Width="180px">
                                 <asp:ListItem Selected="True">----</asp:ListItem>
                                 <asp:ListItem>Excellent</asp:ListItem>
                                 <asp:ListItem>Very Good</asp:ListItem>
                                 <asp:ListItem>Good</asp:ListItem>
                                 <asp:ListItem>Poor</asp:ListItem>
                             </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RCondition" runat="server" 
                                 ControlToValidate="DCondition" ErrorMessage="Specify Condition" 
                                 ValidationGroup="val1" ForeColor="Red">*</asp:RequiredFieldValidator>

                           </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td>
                            No. of Owner(s)</td>
                        <td class="style13">
                        
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                             <asp:TextBox ID="TNoofOwner" runat="server" Width="180px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="DNoofOwner" runat="server" 
                                 ErrorMessage="No. of Owners" ForeColor="Red" 
                                 ControlToValidate="TNoofOwner" ValidationGroup="val1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            <asp:Label ID="Label13" runat="server" Text="Selling Price"></asp:Label>
                        </td>
                        <td class="style13">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:TextBox ID="TSelling" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RSelling" runat="server" 
                                ErrorMessage="Selling Price is required" Text="*" 
                                ControlToValidate="TSelling" ForeColor="Red" 
                                ValidationGroup="val1"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            Dated</td>
                        <td class="style12" style="color: #000080; font-size: 11px; font-style: italic">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TDated" runat="server" Width="180px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RDated" runat="server" 
                                ErrorMessage="Date" Text="*" ControlToValidate="TDated" ForeColor="Red" 
                                ValidationGroup="val1" Font-Bold="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TDated" ErrorMessage="Invalid Date" Font-Bold="True" 
                                ForeColor="Red" 
                                ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" 
                                ValidationGroup="val1">*</asp:RegularExpressionValidator>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            (dd/mm/yyyy)</td>
                        </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style19">
                            Upload an Image</td>
                        <td class="style19">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style11" colspan="2">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Submit" runat="server" Text="Submit" onclick="Submit_Click" 
                                ValidationGroup="val1" BackColor="#CC9900" Width="112px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#CC9900" 
                                onclick="Button1_Click" Text="Reset" Width="111px" />
                        </td>
                    </tr>
    </table>
</asp:Content>


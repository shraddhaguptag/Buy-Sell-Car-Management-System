<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 980px;
        }
        .style14
        {
            height: 40px;
        }
        .style15
        {
            width: 161px;
            height: 40px;
        }
        .style16
        {
            height: 37px;
        }
        .style17
        {
            width: 161px;
            height: 37px;
        }
        .style19
        {
            width: 161px;
            height: 20px;
        }
        .style22
        {
            height: 27px;
        }
        .style23
        {
            height: 31px;
        }
        .style24
        {
            height: 33px;
        }
        .style25
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style3">
        <tr>
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                &nbsp;</td>
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                colspan="2">
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" EnableClientScript="true"
                    Height="151px"
 DisplayMode="BulletList" />
                    
                    </td>
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                &nbsp;</td>
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                &nbsp;</td>
        </tr>
        <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="style36" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="TBName" runat="server" CausesValidation="True" 
                                ValidationGroup="val1" Width="155px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ErrorMessage="Name is required !" Text="*" ControlToValidate="TBName" ForeColor="Red"></asp:RequiredFieldValidator>
                           </td>
                        <td>
                            <asp:Label  ID="Label10" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList  RepeatLayout="Flow" ID="RBGender" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="" runat="server" 
                                ErrorMessage="Select a Gender !" Text="*" ControlToValidate="RBGender" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>        
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td class="style25" >
                            <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="style19" >
                            <asp:Label ID="Label12" runat="server" Text="City"></asp:Label>
                        </td>
                        <td class="style25">
                            <asp:TextBox ID="TBCity" runat="server" Width="155px"></asp:TextBox>
                             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ErrorMessage="City is required !" Text="*" ControlToValidate="TBCity" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style25" >
                            <asp:Label ID="Label13" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td  
                            style="font-size: 11px; color: blue; font-style: italic" class="style25">
                            <asp:TextBox  ID="TBDoB" runat="server" Width="155px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ErrorMessage="Date Of Birth is required !" Text="*" ControlToValidate="TBDoB" 
                                ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                                runat="server" 
                                ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" 
                                ErrorMessage="Invalid date"  ControlToValidate="TBDoB" Font-Bold="True" 
                                Font-Size="Small" ForeColor="Red">*</asp:RegularExpressionValidator>
                              <br />
                            (dd/mm/yyyy)</tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td class="style14" >
                            </td>
                        <td class="style15" >
                            <asp:Label ID="Label16" runat="server" Text="State"></asp:Label>
                        </td>
                        <td class="style14">
                            <asp:TextBox ID="TBState" runat="server" Width="155px"></asp:TextBox>
                             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ErrorMessage="Select a State !" Text="*" ControlToValidate="TBState" ForeColor="Red"></asp:RequiredFieldValidator>                        </td>
                        <td class="style14" >
                            <asp:Label ID="Label17" runat="server" Text="ID Proof"></asp:Label>
                        </td>
                        <td class="style14" >
                            <asp:DropDownList ID="DDId" runat="server" Height="22px" Width="158px">
                                <asp:ListItem>Pan Card</asp:ListItem>
                                <asp:ListItem>Adhar Card</asp:ListItem>
                                <asp:ListItem>Driving License</asp:ListItem>
                                <asp:ListItem Selected="True">----</asp:ListItem>
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                ErrorMessage="Id-Proof is required !" ControlToValidate="DDId" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                            
                        </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style16">
                            </td>
                &nbsp;</td>
                        <td class="style17">
                            <asp:Label ID="Label18" runat="server" Text="PIN Code"></asp:Label>
                        </td>
                        <td class="style16">
                            <asp:TextBox ID="TBPIN" runat="server" Width="155px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ErrorMessage="Pin Code is required !" Text="*" ControlToValidate="TBPIN" ForeColor="Red" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                ControlToValidate="TBPIN" ValidationExpression="\d{6}" 
                                ErrorMessage="The pin code must be 6 numeric digits!" 
                                Text="*" runat="server" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                        <td class="style16">
                            Contact Number</td>
                        <td  
                            style="color: #FF0000; font-style: italic; font-size: small" 
                            class="style16">
                            <asp:TextBox ID="TextBox1" runat="server" Width="32px">+91</asp:TextBox>
                            <asp:TextBox ID="TBContactNo" runat="server" EnableTheming="True" 
                                EnableViewState="False" MaxLength="13"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ErrorMessage="Car-Id is required !" Text="*" ControlToValidate="TBContactNo" 
                                ForeColor="Red" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="TBContactNo" ErrorMessage="Invalid contact number" ForeColor="Red" 
                                ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                            <br />
                                </tr>
                        <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td>
                            E-mail</td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TBEmail" runat="server" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TBEmail" ErrorMessage="Enter the valid email ID !" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="TBEmail" ErrorMessage="Email is Required !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                        <td colspan="2">
                            </td>
                        </tr>
                        <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td class="style24">
             User 
                            Name</td>
                        <td colspan="2" class="style24">
                        
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                <asp:TextBox ID="TBUserName" runat="server" Width="155px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ErrorMessage="User Name is Required !" ControlToValidate="TBUserName" ForeColor="Red">*</asp:RequiredFieldValidator>

                           </td>
                        <td colspan="2" class="style24">
                            </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td class="style23">
                            Password</td>
                        <td colspan="2" 
                                    style="font-style: italic; color: #FF0000; font-size: 11px" 
                            class="style23">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxP" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" 
                    ControlToValidate="TextBoxP" runat="server" 
                    ErrorMessage="Password is required !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                ControlToValidate="TextBoxP" ErrorMessage="Password must be 8 characters long !" 
                                ForeColor="Red" ValidationExpression="\d{8}">*</asp:RegularExpressionValidator>
                            <br />
                            </td>
                        <td class="style23">
                            </td>
                        <td class="style23">
                            </td>        
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td class="style22">
                            Confirm Password</td>
                        <td colspan="2" class="style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCP" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="TextBoxP" ControlToValidate="TextBoxCP" 
                    ErrorMessage="The Passwords do not match !" ValidationGroup="val1" ForeColor="Red">*</asp:CompareValidator>
                           </td>
                        <td class="style22">
                            </td>
                        <td class="style22">
                            </td>        
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td colspan="5">
                            </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                        <td colspan="5">
                        
                            &nbsp;</td>
                    </tr>
        <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
                &nbsp;</td>
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: italic; color: #FFFFFF;" 
                colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Height="43px" TextMode="MultiLine" 
                    Width="233px">ACCEPTANCE OF AGREEMENT:

By this , I abide to have let this site use my personal details within the site and I am bound to the terms and conditions of this site.</asp:TextBox>
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    Text="I agree to the terms and conditions."/>
&nbsp;
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="Please check the box !" ForeColor="Red" 
                    onservervalidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
            </td>
        </tr>
        <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF; text-align: center;" 
                colspan="5">
                <asp:Button ID="Button1" runat="server" BackColor="#CC9900" Text="Register" 
                    onclick="Button1_Click" style="text-align: center" Width="111px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="#CC9900" 
                                onclick="Button1_Click" Text="Reset" Width="111px" />
            </td>
        </tr>
        <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;" 
                >
            <td style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF; text-align: center;" 
                colspan="5">
                <asp:Label ID="Label1" runat="server" Text="Already have an account ? "></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC9900" 
                    NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>




<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchCar.aspx.cs" Inherits="SearchCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table>
<tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style14">
                            Make</td>
                        <td class="style12">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
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
                                ControlToValidate="DMake" ErrorMessage="Brand" ForeColor="Blue" 
                                InitialValue="----" ValidationGroup="val1">*</asp:RequiredFieldValidator>

                           </td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style21">
                            Model&nbsp; </td>
                        <td class="style21" 
                            style="font-style: italic; color: #FF0000; font-size: 11px">
                        
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                             <asp:DropDownList ID="DModel" runat="server" Enabled="False" Width="180px" 
                                 >
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RModel" runat="server" 
                                 ErrorMessage="Model" ForeColor="Blue" ControlToValidate="DModel" 
                                 InitialValue="----" ValidationGroup="val1">*</asp:RequiredFieldValidator>
                             <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            (First choose the brand)</td>
                    </tr>
                    <tr style="border-style: none; font-size: 12px; font-weight: normal; font-style: normal; color: #FFFFFF;">
                        <td class="style11" colspan="2">
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:Button ID="Submit" 
                                runat="server" Text="Search" onclick="Submit_Click" ValidationGroup="val1" 
                                BackColor="#CC9900" Width="106px" />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource2" BorderColor="#CC9900" BorderStyle="Solid">
                                <Columns>
                                    <asp:TemplateField HeaderText="Upload_an_Image">
                                        <ItemTemplate>
                                        <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("Upload_an_Image")%>' Height="150" Width="250" />
                                        </ItemTemplate></asp:TemplateField>

                                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT [Upload an Image] AS Upload_an_Image, [Make], [Model] FROM [Selldata] WHERE ([Model] = @Model)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DModel" Name="Model" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            
                            <br />
                            <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="Blue" 
                                onclick="Button1_Click" Text="View Details" ValidationGroup="val1" 
                                Visible="true" />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource3" BorderColor="#CC9900" BorderStyle="Solid">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="column1" HeaderText="column1" 
                                        SortExpression="column1" />
                                    <asp:BoundField DataField="Fuel_Type" HeaderText="Fuel_Type" 
                                        SortExpression="Fuel_Type" />
                                    <asp:BoundField DataField="Transmission" HeaderText="Transmission" 
                                        SortExpression="Transmission" />
                                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                    <asp:BoundField DataField="Kilometres_Used" HeaderText="Kilometres_Used" 
                                        SortExpression="Kilometres_Used" />
                                    <asp:BoundField DataField="Condition" HeaderText="Condition" 
                                        SortExpression="Condition" />
                                    <asp:BoundField DataField="column2" HeaderText="column2" 
                                        SortExpression="column2" />
                                    <asp:BoundField DataField="Selling_Price" HeaderText="Selling_Price" 
                                        SortExpression="Selling_Price" />
                                    <asp:BoundField DataField="Dated" HeaderText="Dated" SortExpression="Dated" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT [Name], [Car Registration No.] AS column1, [Fuel Type] AS Fuel_Type, [Transmission], [Year], [Kilometres Used] AS Kilometres_Used, [Condition], [No. of Owner(s)] AS column2, [Selling Price] AS Selling_Price, [Dated] FROM [Selldata] WHERE ([Model] = @Model)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DModel" Name="Model" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="Buy Car" BackColor="#CC9900" style="text-align: center" 
                                Width="108px" />
                            <br />
                            <br />
                        </td>
                    </tr>
            </table>
</asp:Content>


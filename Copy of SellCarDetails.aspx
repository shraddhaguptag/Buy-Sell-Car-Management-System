<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Copy of SellCarDetails.aspx.cs" Inherits="SellCarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    SOLD CARS:
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BorderColor="#CC9900" BorderStyle="Solid" 
        DataKeyNames="Id" ForeColor="White" Height="300px" 
        style="margin-right: 0px" Width="720px">
        <Columns>

<asp:BoundField DataField="Id" HeaderText="Id" 
                SortExpression="Id" InsertVisible="False" ReadOnly="True" />
<asp:TemplateField HeaderText="Upload_an_Image">
                                        <ItemTemplate>
                                        <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("Upload_an_Image")%>' Height="150" Width="250" />
                                        </ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="Name" 
                HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="column1" HeaderText="column1" 
                SortExpression="column1" />
            <asp:BoundField DataField="Make" HeaderText="Make" 
                SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" 
                SortExpression="Model" />
            <asp:BoundField DataField="Fuel_Type" HeaderText="Fuel_Type" 
                SortExpression="Fuel_Type" />
            <asp:BoundField DataField="Transmission" HeaderText="Transmission" 
                SortExpression="Transmission" />
            <asp:BoundField DataField="Kilometres_Used" HeaderText="Kilometres_Used" 
                SortExpression="Kilometres_Used" />
            <asp:BoundField DataField="Year" HeaderText="Year" 
                SortExpression="Year" />
            <asp:BoundField DataField="Selling_Price" HeaderText="Selling_Price" 
                SortExpression="Selling_Price" />
            <asp:BoundField DataField="Booked" HeaderText="Booked" 
                SortExpression="Booked" />
        </Columns>
    </asp:GridView>
    `<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT [Id], [Upload an Image] AS Upload_an_Image, [Name], [Car Registration No.] AS column1, [Make], [Model], [Fuel Type] AS Fuel_Type, [Transmission], [Kilometres Used] AS Kilometres_Used, [Year], [Selling Price] AS Selling_Price, [Booked] FROM [Selldata]" 
        DeleteCommand="DELETE FROM [Selldata] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Selldata] ([Upload an Image], [Name], [Car Registration No.], [Make], [Model], [Fuel Type], [Transmission], [Kilometres Used], [Year], [Selling Price], [Booked]) VALUES (@Upload_an_Image, @Name, @column1, @Make, @Model, @Fuel_Type, @Transmission, @Kilometres_Used, @Year, @Selling_Price, @Booked)" 
        
        UpdateCommand="UPDATE [Selldata] SET [Upload an Image] = @Upload_an_Image, [Name] = @Name, [Car Registration No.] = @column1, [Make] = @Make, [Model] = @Model, [Fuel Type] = @Fuel_Type, [Transmission] = @Transmission, [Kilometres Used] = @Kilometres_Used, [Year] = @Year, [Selling Price] = @Selling_Price, [Booked] = @Booked WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Upload_an_Image" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Fuel_Type" Type="String" />
            <asp:Parameter Name="Transmission" Type="String" />
            <asp:Parameter Name="Kilometres_Used" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Selling_Price" Type="String" />
            <asp:Parameter Name="Booked" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Upload_an_Image" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Fuel_Type" Type="String" />
            <asp:Parameter Name="Transmission" Type="String" />
            <asp:Parameter Name="Kilometres_Used" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Selling_Price" Type="String" />
            <asp:Parameter Name="Booked" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    BOUGHT CARS:<br />
    <br />
    <asp:GridView runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" ForeColor="White" BorderColor="#CC9900" 
        BorderStyle="Solid" DataKeyNames="Id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="E-mail" HeaderText="E-mail" 
                SortExpression="E-mail" />
            <asp:BoundField DataField="Car_Id" HeaderText="Car_Id" 
                SortExpression="Car_Id" />
            <asp:BoundField DataField="Payment_Mode" HeaderText="Payment_Mode" 
                SortExpression="Payment_Mode" />
            <asp:BoundField DataField="Bank_Name" HeaderText="Bank_Name" 
                SortExpression="Bank_Name" />
            <asp:BoundField DataField="Dated" HeaderText="Dated" SortExpression="Dated" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [Buydata]" 
        DeleteCommand="DELETE FROM [Buydata] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Buydata] ([Name], [E-mail], [Car_Id], [Payment_Mode], [Bank_Name], [Dated]) VALUES (@Name, @column1, @Car_Id, @Payment_Mode, @Bank_Name, @Dated)" 
        UpdateCommand="UPDATE [Buydata] SET [Name] = @Name, [E-mail] = @column1, [Car_Id] = @Car_Id, [Payment_Mode] = @Payment_Mode, [Bank_Name] = @Bank_Name, [Dated] = @Dated WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Car_Id" Type="String" />
            <asp:Parameter Name="Payment_Mode" Type="String" />
            <asp:Parameter Name="Bank_Name" Type="String" />
            <asp:Parameter Name="Dated" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Car_Id" Type="String" />
            <asp:Parameter Name="Payment_Mode" Type="String" />
            <asp:Parameter Name="Bank_Name" Type="String" />
            <asp:Parameter Name="Dated" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
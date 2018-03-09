<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" ForeColor="White" BorderColor="#CC9900" 
        BorderStyle="Solid" DataKeyNames="Id" style="text-align: center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Date Of Birth" HeaderText="Date Of Birth" 
                SortExpression="Date Of Birth" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="PIN Code" HeaderText="PIN Code" 
                SortExpression="PIN Code" />
            <asp:BoundField DataField="ID Proof" HeaderText="ID Proof" 
                SortExpression="ID Proof" />
            <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" 
                SortExpression="Contact Number" />
            <asp:BoundField DataField="User Name" HeaderText="User Name" 
                SortExpression="User Name" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="E-mail" HeaderText="E-mail" 
                SortExpression="E-mail" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
    SelectCommand="SELECT * FROM [Userdata]" 
        DeleteCommand="DELETE FROM [Userdata] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Userdata] ([Name], [Gender], [Date Of Birth], [City], [State], [PIN Code], [ID Proof], [Contact Number], [User Name], [Password], [E-mail]) VALUES (@Name, @Gender, @Date_Of_Birth, @City, @State, @PIN_Code, @ID_Proof, @Contact_Number, @User_Name, @Password, @column1)" 
        UpdateCommand="UPDATE [Userdata] SET [Name] = @Name, [Gender] = @Gender, [Date Of Birth] = @Date_Of_Birth, [City] = @City, [State] = @State, [PIN Code] = @PIN_Code, [ID Proof] = @ID_Proof, [Contact Number] = @Contact_Number, [User Name] = @User_Name, [Password] = @Password, [E-mail] = @column1 WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Date_Of_Birth" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="PIN_Code" Type="String" />
        <asp:Parameter Name="ID_Proof" Type="String" />
        <asp:Parameter Name="Contact_Number" Type="String" />
        <asp:Parameter Name="User_Name" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="column1" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Date_Of_Birth" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="PIN_Code" Type="String" />
        <asp:Parameter Name="ID_Proof" Type="String" />
        <asp:Parameter Name="Contact_Number" Type="String" />
        <asp:Parameter Name="User_Name" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="column1" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


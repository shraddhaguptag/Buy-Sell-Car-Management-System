<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 280px;
        }
        .style4
        {
            width: 594px;
            height: 328px;
        }
        .style5
        {
            height: 328px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4" 
                
                
                style="border: medium ridge #CC9900; background-color: black; font-family: Aharoni; font-size: large; font-style: normal; color: white;">
                CarDealer is a web portal dedicated to the advertising of Buying and selling 
        cars.&nbsp; CarDealer mission is to provide a trusted and 
        simple way to use portal for buying and selling cars.<span 
            class="Apple-converted-space">&nbsp;Car dealer is a trusted site to find 
    second hand car vehicles. Anyone can&nbsp; advertise their Car vehicles for sell in 
    Car dealer completely free of charge&nbsp;. Buyers can find a wide range of Used 
    Cars.The second-hand cars available on CarDealer.com that covers a wide range of 
    prices accessible to anybody wishing to purchase a pre-owned or second-hand Car. 
    You can buy or sell used cars here.</td>
            <td class="style5" 
                
                
                style="border: medium ridge #CC9900; background-color: black; font-family: Aharoni; font-size: medium; font-style: normal; color: white;">
                FOUR STEPS THAT EASE YOU TO EITHER SELL OR BUY CAR<asp:BulletedList 
                    ID="BulletedList1" runat="server" BorderColor="Black">
                    <asp:ListItem>Register Yourself</asp:ListItem>
                    <asp:ListItem>If you want to selll car then click Sell Car</asp:ListItem>
                    <asp:ListItem>If you want to buy car then click Buy Car</asp:ListItem>
                    <asp:ListItem>You can also Login to view your car details</asp:ListItem>
                </asp:BulletedList>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


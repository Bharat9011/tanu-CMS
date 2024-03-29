﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.Master" AutoEventWireup="true" CodeBehind="PreviousHistory.aspx.cs" Inherits="taun_CMS.Doctor.PreviousHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="/assets/css/grid-view.css" />


    <h1><strong style="margin: 25%">History of Treated Patients</strong></h1>
    <br />
    <br />

    <asp:Label ID="PHistory" runat="server"></asp:Label>
    <br />
    <br />

    <asp:GridView ID="PHistoryGrid" runat="server" class="GridView-d" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="800px"
        EnableViewState="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">

        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />

        <Columns>
            <asp:TemplateField HeaderText="No." ItemStyle-Width="50">
                <ItemTemplate>
                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>

                <ItemStyle Width="50px"></ItemStyle>
            </asp:TemplateField>
        </Columns>


    </asp:GridView>


</asp:Content>

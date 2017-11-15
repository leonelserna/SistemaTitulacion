﻿<%@ Page Title="" Language="C#" MasterPageFile="~/tec.Master" AutoEventWireup="true" CodeBehind="Vizor.aspx.cs" Inherits="SistemaDeTitulacion.Vizor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="No_Control" HeaderText="No_Control" SortExpression="No_Control" />
            <asp:BoundField DataField="AP_Pat" HeaderText="AP_Pat" SortExpression="AP_Pat" />
            <asp:BoundField DataField="AP_Mat" HeaderText="AP_Mat" SortExpression="AP_Mat" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Carrera" HeaderText="Carrera" SortExpression="Carrera" />
            <asp:BoundField DataField="Semestre" HeaderText="Semestre" SortExpression="Semestre" />
            <asp:BoundField DataField="Requisito" HeaderText="Requisito" SortExpression="Requisito" />
            <asp:BoundField DataField="Estatus" HeaderText="Estatus" SortExpression="Estatus" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapsuleCorpCon %>" SelectCommand="SELECT * FROM [Alumnos]"></asp:SqlDataSource>
</asp:Content>

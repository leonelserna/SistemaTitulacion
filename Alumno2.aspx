<%@ Page Title="" Language="C#" MasterPageFile="~/tec.Master" AutoEventWireup="true" CodeBehind="Alumno2.aspx.cs" Inherits="SistemaDeTitulacion.Alumno2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Regresar" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
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
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapsuleCorpCon %>" SelectCommand="SELECT [No_Control], [AP_Pat], [AP_Mat], [Nombre], [Carrera], [Semestre], [Requisito], [Estatus] FROM [Alumnos]"></asp:SqlDataSource>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/tec.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaDeTitulacion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CapsuleCorpCon %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>

<asp:Login ID="Login1" runat="server"
 LoginButtonText="Ingresar"
 PasswordLabelText="Contraseña:" RememberMeText="Recordarme la proxima vez." TitleText=""
 UserNameLabelText="Usuario:" OnAuthenticate="Login2_Authenticate" Width="294px"> 
</asp:Login>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/tec.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="SistemaDeTitulacion.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:30%; height: 201px;" class="inputTable" align="center">
            <td class="auto-style1">

    <asp:Label ID="Label8" runat="server" Text="No. Control"></asp:Label>

            </td>
        <td style="text-align: left">

        <asp:TextBox ID="txtControl" runat="server"></asp:TextBox>

            </td>
        <tr>
            <td class="auto-style1">

        <asp:Label ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>

            </td>
        <td style="text-align: left">

        <asp:TextBox ID="txtPat" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">

        <asp:Label ID="Label3" runat="server" Text="Apellido Materno"></asp:Label>

            </td>
        <td style="text-align: left">

        <asp:TextBox ID="txtMat" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">

        <asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>

            </td>
        <td style="text-align: left">

        <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">

        <asp:Label ID="Label5" runat="server" Text="Carrera"></asp:Label>

            </td>
        <td style="text-align: left">

        <asp:TextBox ID="txtCarre" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">

        <asp:Label ID="Label6" runat="server" Text="Semestre"></asp:Label>

            </td>
        <td style="text-align: left">

        <asp:TextBox ID="txtSmes" runat="server" Width="16px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">

                <asp:Label ID="Label9" runat="server" Text="Requisito"></asp:Label>

            </td>
        <td style="text-align: left">

            <asp:TextBox ID="TxtRequi" runat="server"></asp:TextBox>

            </td>
        </tr>
    </table>
    
    
    
    
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Descargar" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Aprobar" />
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Denegar" />
</asp:Content>

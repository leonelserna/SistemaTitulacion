<%@ Page Title="" Language="C#" MasterPageFile="~/tec.Master" AutoEventWireup="true" CodeBehind="Informacion.aspx.cs" Inherits="SistemaDeTitulacion.Informacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <table style="width:100%;" class="inputTable">
        <tr>
            
            <td class="auto-style1" >
                &nbsp;</td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                &nbsp;&nbsp;
                &nbsp;
               &nbsp; &nbsp;<h1> <span style="text-align: center; font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Informacion para el Proceso de Titulacion</span></h1>
                </td>
        </tr>

        <tr>
            
            <td class="auto-style1" >
                &nbsp;</td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                &nbsp;&nbsp;
                &nbsp;
                &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Ejemplo de portada Titulacion</asp:LinkButton>
                </td>
        </tr>
        <tr>
            
            <td class="auto-style1">
                &nbsp;</td>
             <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                &nbsp;&nbsp;
                &nbsp;
                &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Proceso de Titulacion</asp:LinkButton>
                </td>

        </tr>
        <tr>
            <td class="auto-style1" >
                &nbsp;</td>
             <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                &nbsp;&nbsp;
                &nbsp;
                &nbsp;<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Archivo Etiqueta CD</asp:LinkButton>
                </td>
        </tr>
        <tr>
            <td class="auto-style1" >
                &nbsp;</td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                &nbsp;&nbsp;
                &nbsp;
                &nbsp;<asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Caratura de CD</asp:LinkButton>
                </td>
        </tr>
        </table>
         </asp:Content>

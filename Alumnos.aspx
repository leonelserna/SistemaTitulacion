<%@ Page Title="" Language="C#" MasterPageFile="~/tec.Master" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="SistemaDeTitulacion.Alumnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 238px;
            text-align: right;
        }
        .auto-style2 {
            width: 238px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:30%;" class="inputTable" align="center">
        <tr>
            <td class="auto-style2" >
                &nbsp;<asp:Label ID="Label1" runat="server" Text="No. Control"></asp:Label></td>
            <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtControl" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>
            <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtPat" runat="server"></asp:TextBox>
                </td>
            </tr>
        
        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Label ID="Label3" runat="server" Text="Apellido Materno"></asp:Label>
            <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtMat" runat="server"></asp:TextBox>
                </td>
            </tr>

        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Label ID="Label4" runat="server" Text="Nombre"></asp:Label>
            <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                </td>
            </tr>
    
        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Carrera"></asp:Label>
            <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtCarre" runat="server"></asp:TextBox>
                </td>
            </tr>
        
        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Label ID="Label6" runat="server" Text="Semestre"></asp:Label>
            <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtSmes" runat="server" Width="16px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtSmes" ErrorMessage="Solo Numeros" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
       
        <tr>
            <td class="auto-style1" >
                <asp:Label ID="Label9" runat="server" Text="Requisito:"></asp:Label>
                <td style="text-align: left">
               
                &nbsp;<asp:TextBox ID="txtRequi" runat="server"></asp:TextBox>

                </td>

            </td>
            </tr>
       
        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Label ID="Label7" runat="server" Text="Archivos"></asp:Label>
            <td style="text-align: left">
               
                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="236px" />
                </td>
                </td>
            </tr>
          
        <tr>
            <td class="auto-style1" >
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" />
            <td style="text-align: left">
               
                &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Consultar" />
                </td>
        </td>
        </tr>
        </table>
        </asp:Content>

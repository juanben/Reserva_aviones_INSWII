<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IngresarReserva.aspx.cs" Inherits="IngresarReserva" %>
<%@ PreviousPageType VirtualPath="~/PaginaPrincipal.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
    margin: 0;
    background:url("/image.png") no-repeat center ;
    background-size: 1950px 1800px

}
        .auto-style1 
        {
            text-align: center;
            font-size: x-large;
        }
        .auto-style2 {
            width: 550px;
        }
        .auto-style3 {
            width: 16%;
            margin-left: 787px;
            margin-top: 0px;
        }
        .auto-style4 {
            margin-left: 65px;
        }
        .auto-style5 {
            margin-left: 854px;
            margin-top: 24px;
        }
        .auto-style6 {
            width: 550px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            margin-left: 0px;
            margin-bottom: 39;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</head>
     <script>
        function sololetras(e)
        {
            key = e.keyCode || e.which;
            teclado = String.fromCharCode(key);
                 
            especiales = "8-37-38-46";//array que permite funcionar al suprimir
            teclado_especial = false;
            for (var i in especiales) {
                if (key == especiales[i]) {
                    teclado_especial = true;
                }
            }
            var expreg = new RegExp("^[A-z]+$");

            
            if (expreg.test(teclado)== 0  && !teclado_especial)
            {
                alert("Ingrese solo letras por favor");
                return false;
            }

        }
    </script>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Ingresar Reserva</div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="ID Pasajero"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style9" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="Column1" Enabled="False" EnableTheming="True" Height="26px" Width="171px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasConnectionString3 %>" SelectCommand="SELECT MAX(IDPASAJERO) FROM CLIENTE"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Nro. De Vuelo"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" OnTextChanged="TextBox3_TextChanged" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Clase"></asp:Label>
                &nbsp;del vuelo</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8" onkeypress="return sololetras(event)"  maxlength="25"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Asiento"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style9" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Ingresar" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="Cancelar" OnClick="Button2_Click" />
        </p>
    </form>
</body>
</html>

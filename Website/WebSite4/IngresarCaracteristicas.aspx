<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IngresarCaracteristicas.aspx.cs" Inherits="IngresarCaracteristicas" %>

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
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 20%;
            margin-left: 779px;
            margin-top: 70px;
            margin-bottom: 7px;
        }
        .auto-style4 {
            height: 26px;
            width: 120px;
        }
        .auto-style5 {
            width: 120px;
        }
        .auto-style6 {
            width: 22%;
            margin-left: 790px;
        }
        .auto-style7 {
            width: 139px;
        }
        .auto-style8 {
            margin-left: 40px;
        }
        .auto-style9 {
            margin-left: 50px;
        }
    </style>
</head>
    <script>
       function solonumeros(e)
       {
           key = e.keyCode || e.which;
           teclado = String.fromCharCode(key);
           numero = "0123456789";
           especiales = "8-37-38-46";//array que permite funcionar al suprimir
           teclado_especial = false;
           for (var i in especiales)
           {
               if(key == especiales[i])
               {
                   teclado_especial = true;
               }
           }
           if(numero.indexOf(teclado)== -1 && !teclado_especial)
           {
               alert("Ingrese solo números por favor");
               return false;
           }
       }
   </script>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Ingrese las caracteristicas del vuelo</div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">ID Itinerario</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="IDITINERARIO" DataValueField="IDITINERARIO">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasConnectionString3 %>" SelectCommand="SELECT [IDITINERARIO] FROM [ITINERARIO]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Capacidad</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" onkeypress="return solonumeros(event)"  maxlength="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style6">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Ingresar" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" OnClick="Button2_Click" Text="Cancelar" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

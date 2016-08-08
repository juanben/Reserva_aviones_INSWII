<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IngresoVuelos.aspx.cs" Inherits="IngresoVuelos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
  <script type="text/javascript">
      $(document).ready(function () {
          $('#Fecha').datepicker(
            {
                dateFormat: 'yy-mm-dd',
                defaultDate: "w",
                changeMonth: true,
                numberOfMonths: 1,
                minDate: 0,
                dateFormat: 'yy-mm-dd'

            });
      });
  </script> 
    <style type="text/css">
        body {
    margin: 0;
    background:url("/image.png") no-repeat center ;
    background-size: 1950px 1500px

}
        .auto-style1 {
            margin-left: 1px;
        }
        .auto-style2 {
            margin-left: 8px;
        }
        .auto-style3 {
            margin-left: 4px;
        }
        .auto-style4 {
            margin-left: 792px;
        }
        .auto-style5 {
            margin-left: 75px;
        }
        .auto-style6 {
            margin-left: 78px;
        }
        .auto-style7 {
            margin-left: 742px;
            margin-top: 82px;
        }
        .auto-style8 {
            margin-left: 23px;
        }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <div id="abrigo_general" align="center">
            <title>INGRESO DE VUELOS</title>
            <h1>INGRESO DE VUELOS</h1>
            
            
           <h4>&nbsp;</h4> 
           <h2>Ingrese horario de vuelos</h2>         
           <table style="margin: 45px;" border=5>
<tr> <td style="padding: 8px; "> <h4><b>De:</b></h4> </td> 
     <td> 
        <h4><b>A:</b></h4> 
     </td>
    <td> 
        <h4><b>Fecha:</b></h4> 
     </td>
    <td> 
        <h4><b>Hora:</b></h4> 
     </td> 

</tr> 

<tr> <td style="padding: 8px;"> 
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Height="18px" Width="75px" DataSourceID="SqlDataSource1" DataTextField="CIUDADORIGEN" DataValueField="CIUDADORIGEN" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasConnectionString3 %>" SelectCommand="SELECT [CIUDADORIGEN] FROM [ORIGEN]"></asp:SqlDataSource>
    </td> 
     <td> 
          <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style2" Height="17px" Width="60px" DataSourceID="SqlDataSource2" DataTextField="CIUDADDESTINO" DataValueField="CIUDADDESTINO">
          </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReservasConnectionString3 %>" SelectCommand="SELECT [CIUDADDESTINO] FROM [DESTINO]"></asp:SqlDataSource>
    </td>

     </td>
    <td> 
         &nbsp;<asp:TextBox ID="Fecha" runat="server" CssClass="auto-style3" Width="151px"></asp:TextBox>

     </td>
    <td> 
          &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Width="87px"></asp:TextBox>

     </td> 

</tr> 

</table>

            
    

           
            
          
        </div>
    <script src="Script/jquery-3.0.0.min.js"></script>
    <script src="Script/bootstrap.min.js"></script>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Siguiente" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Text="Ver" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="Cancelar" OnClick="Button3_Click" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style7">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:TextBox ID="TextBox3" runat="server" Visible="False">1</asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8" Visible="False">1</asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
    </body>
</html>
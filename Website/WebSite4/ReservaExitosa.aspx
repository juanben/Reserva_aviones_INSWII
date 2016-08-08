<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservaExitosa.aspx.cs" Inherits="ReservaExitosa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
    margin: 0;
    background:url("/A330 MRTT (1).jpg") no-repeat;
    background-size: 1950px 1500px

}
        
        .auto-style1 {
            text-align: center;
            color: #FFFFFF;
            font-size: xx-large;
        }
        
        .auto-style2 {
            margin-left: 834px;
            margin-top: 37px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div class="auto-style1">
            <strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <em>RESERVA EXITOSA.....!!!!!!</em></strong></div>
        <asp:Button ID="Button1" runat="server" BorderStyle="Double" CssClass="auto-style2" OnClick="Button1_Click" Text="Regresar a la pagina principal" />
    </form>
</body>
</html>

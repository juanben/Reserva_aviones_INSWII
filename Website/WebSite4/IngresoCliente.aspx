<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IngresoCliente.aspx.cs" Inherits="IngresoCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
  <script>
      $(function () {
          var dateFormat = "mm/dd/yy",
         from = $('#FechaNac').datepicker({
             dateFormat: 'yy-mm-dd',
             defaultDate: "w",
             changeMonth: true,
             numberOfMonths: 1,
             maxDate: 0
         }).on( "change", function() {
             to.datepicker( "option", "maxDate", getDate( this ) );
         });
	   function getDate(element) {
          var date;
          try {
              date = $.datepicker.parseDate(dateFormat, element.value);
          } catch (error) {
              date = null;
          }

          return date;
	   }
      });
  </script>
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
    <script>
        function emailvalido()
        {
            
            teclado = $('#TextBox6');

           var expreg = new RegExp("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");


           if (expreg.test(teclado))
           {
                alert("Ingrese un correo válido");
                return false;
            }
        }
       
    </script>
    <script>
        function comprobarEmail() {
            clave1 = document.getElementById("TextBox6").value;
            clave2 = document.getElementById("TextBox7").value;
            if (clave1 == clave2)
            {            

                var expreg = new RegExp("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");
                
                if (expreg.test(clave1)==0)
                {
                    alert("Ingrese un correo válido");
                    return false;
                }
              
            }
            else
            {
                alert("Los correos ingresados no coinciden\n por favor corregir");
                return false;
            }
        }
    </script>
    <style type="text/css">
        body {
    margin: 0;
    background:url("/image.png") no-repeat center ;
    background-size: 1950px 1500px

}
        .auto-style1 {
            height: 154px;
        }
        .auto-style2 {
            margin-top: 5px;
        }
        .auto-style4 {
            height: 154px;
            width: 971px;
        }
        .auto-style5 {
            width: 971px
        }
        .auto-style7 {
            margin-left: 23px;
        }
        .auto-style8 {
            margin-left: 17px;
        }
        .auto-style9 {
            margin-left: 18px;
        }
        .auto-style10 {
            margin-left: 16px;
        }
        .auto-style11 {
            margin-left: 6px;
        }
        .auto-style12 {
            margin-left: 70px;
        }
        .auto-style13 {
            margin-left: 80px;
        }
        .auto-style14 {
            margin-left: 8px;
        }
        .auto-style15 {
            margin-left: 35px;
        }
        .auto-style16 {
            margin-left: 755px;
        }
        .auto-style17 {
            margin-left: 535px;
            margin-top: 28px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        </style>
    
</head>
<body>
   
    <form id="form1" runat="server">
        <div id="abrigo_general" align="center">
            <title>RESERVAR UN VUELO</title>
            <p>RESERVAR UN VUELO</p>
            <h1>Pasajeros</h1>
           <table style="margin-left: 45px; margin-right: 45px; margin-bottom: 45px;" border=5 class="auto-style2">
<tr> <td style="color: white; padding: 8px; "> <h4><b>Pa<asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style18" OnTextChanged="TextBox8_TextChanged" Visible="False" Width="23px"></asp:TextBox>
    sajero 1</b></h4> </td> 
     <td class="auto-style5"> 
         <p>Asegurese de ingresar su nombre completo exactamente como aparece en su cedula</p> 
         <p>  <h4>Prefijo:
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style10" AutoPostBack="True">
                    <asp:ListItem Value="Sr."></asp:ListItem>
                    <asp:ListItem Value="Sra."></asp:ListItem>
                    <asp:ListItem Value="Srta."></asp:ListItem>
    </asp:DropDownList>

            </h4> 
             <label>Pasaporte:</label> <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" OnTextChanged="TextBox1_TextChanged" onkeypress="return solonumeros(event)"  maxlength="10"></asp:TextBox>
             <p>
                 <label>Nombre:</label> <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" OnTextChanged="TextBox2_TextChanged" onkeypress="return sololetras(event)"  maxlength="25"></asp:TextBox>
                 
                 <label>Segundo Nombre:</label> <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" onkeypress="return sololetras(event)" MaxLength="25"></asp:TextBox>
            
                 <label>Apellido:</label> <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8"  onkeypress="return sololetras(event)" MaxLength="25"></asp:TextBox>
                 </p>
             <p>
                 <h4>Genero:
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style15" AutoPostBack="True">
                    <asp:ListItem Value="Masculino"></asp:ListItem>
                    <asp:ListItem Value="Femenino"></asp:ListItem>
    </asp:DropDownList>
            </h4> 
             </p>
             <p>
                 <label for="fechanac">Fecha de Nacimiento: </label>
            <br />
            <asp:TextBox ID="FechaNac" runat="server" CssClass="auto-style11"></asp:TextBox>
            <br />
            <br />
                 </p>
            

         </p>

     </td> 

</tr> 

<tr> <td style="color: white; padding: 8px;" class="auto-style1"> <h4><b>Informacion de contacto</b></h4> </td> 
     <td class="auto-style4"> 
          
         <p>  
                
             <p>
                 <label>Numero de telefono:</label> <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style12" onkeypress="return solonumeros(event)" MaxLength="25"></asp:TextBox>
                 </p>
             <p>
              <label>Correo electronico:</label> <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style13" onmousemove="emailvalido()" ></asp:TextBox>   
             </p>
             <p>
              <label>Confirmar Correo electronico:</label> <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style14" onfocus="return comprobarEmail()" ></asp:TextBox>   
             </p>
          
            

         </p>

     </td> 

</tr> 

</table>
          
        </div>
        
        <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Text="Ingresar" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Ver" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Cancelar" OnClick="Button3_Click" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style17">
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
    </form>
    </body>
</html>

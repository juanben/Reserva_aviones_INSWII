using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IngresarReserva : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Text = Request.Params["parametro"];
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
        con.Open();
        string ad = "insert into RESERVA values (@IDPASAJERO, @NROVUELO, @CLASE, @ASIENTO)";
        SqlCommand cmd = new SqlCommand(ad, con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@IDPASAJERO", SqlDbType.Int).Value = DropDownList1.SelectedValue;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@NROVUELO", SqlDbType.Int).Value = TextBox3.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@CLASE", SqlDbType.VarChar).Value = TextBox4.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@ASIENTO", SqlDbType.VarChar).Value = TextBox5.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        DropDownList1.ClearSelection();
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Response.Redirect("ReservaExitosa.aspx");

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("IngresoCliente.aspx");
    }
}
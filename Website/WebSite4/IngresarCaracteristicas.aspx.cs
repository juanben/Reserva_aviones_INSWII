using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IngresarCaracteristicas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.html");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
        con.Open();
        string ad = "insert into VUELO values (@IDITINERARIO, @CAPACIDAD)";
        SqlCommand cmd = new SqlCommand(ad, con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@IDITINERARIO", SqlDbType.Int).Value = DropDownList1.SelectedValue;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@CAPACIDAD", SqlDbType.Int).Value = TextBox1.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        DropDownList1.ClearSelection();
        TextBox1.Text = "";
        
    }
}
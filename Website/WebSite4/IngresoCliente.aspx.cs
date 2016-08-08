using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class IngresoCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox8.Text = Request.Params["parametro"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cadena = "Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True";
        SqlConnection con = new SqlConnection(cadena);
        string ad = "insert into Cliente values (@CEDULA, @PREFIJO, @NOMBRE, @SEGUNDONOMBRE, @APELLIDO, @FECHANACIMIENTO, @EMAIL, @TELEFONO,@GENERO)";
        SqlCommand cmd = new SqlCommand(ad, con);
        DateTime MyDate;
        MyDate = Convert.ToDateTime(FechaNac.Text);
        con.Open();
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@CEDULA", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@PREFIJO", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedValue;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@NOMBRE", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@SEGUNDONOMBRE", SqlDbType.VarChar, 50).Value = TextBox3.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@APELLIDO", SqlDbType.VarChar, 50).Value = TextBox4.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@FECHANACIMIENTO", SqlDbType.Date).Value = MyDate;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@EMAIL", SqlDbType.VarChar, 50).Value = TextBox6.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@TELEFONO", SqlDbType.Int, 50).Value = TextBox5.Text;
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@GENERO", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedValue;
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        FechaNac.Text = "";
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        Response.Redirect("IngresarReserva.aspx?parametro="+TextBox8.Text);
        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("SELECT * FROM CLIENTE", con);
        DataSet ds = new DataSet();
        ad.Fill(ds, "CLIENTE");
        GridView1.Visible = true;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Response.Redirect("index.html");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
}
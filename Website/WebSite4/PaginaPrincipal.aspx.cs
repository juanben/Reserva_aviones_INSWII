using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class PaginaPrincipal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.BackColor = System.Drawing.Color.MediumSeaGreen;
        Button2.Enabled = false;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
        con.Open();
        //SqlDataAdapter asd = new SqlDataAdapter("select * from ITINERARIO, vuelo where ITINERARIO.IDITINERARIO=vuelo.IDITINERARIO and fecha BETWEEN @fechaSalida and @fechaRetorno", con);
        SqlCommand cmd = new SqlCommand("select HORA, FECHA, CIUDADORIGEN as CIUDAD_ORIGEN , CIUDADDESTINO AS CIUDAD_DESTINO,CAPACIDAD, NROVUELO from ITINERARIO, ORIGEN, DESTINO, VUELO where itinerario.ID_ORIGEN = ORIGEN.ID_ORIGEN AND itinerario.IDDESTINO = DESTINO.IDDESTINO AND ITINERARIO.IDITINERARIO = VUELO.IDITINERARIO and fecha BETWEEN @fechaSalida and @fechaRetorno", con);
        GridView1.Visible = true;
        DateTime MyDate;
        DateTime MyDate1;
        MyDate = Convert.ToDateTime(txtFechaIda.Text);
        MyDate1 = Convert.ToDateTime(txtFechaRetorno.Text);
        cmd.Parameters.Add("@fechaSalida",SqlDbType.Date).Value= MyDate;
        cmd.Parameters.Add("@fechaRetorno",SqlDbType.Date).Value= MyDate1;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
        Button1.BackColor = System.Drawing.Color.Empty;
        Button2.BackColor = System.Drawing.Color.Empty;
        Button1.Enabled = true;
        Button2.Enabled = true;
        txtFechaIda.Text = "";
        txtFechaRetorno.Text = "";



    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Response.Redirect("index.html");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button2.BackColor = System.Drawing.Color.MediumSeaGreen;
        Button1.Enabled = false;
    }

    protected void txtFechaIda_TextChanged(object sender, EventArgs e)
    {

    }


    protected void txtFechaRetorno_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        string codigo = row.Cells[6].Text;
        TextBox1.Text = codigo;
        Response.Redirect("IngresoCliente.aspx?parametro=" + TextBox1.Text);

    }
    public String NumeroVuelo
    {
        get
        {
            return TextBox1.Text;
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("IngresarReserva.aspx?parametro="+TextBox1.Text);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class IngresoVuelos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
        con1.Open();
        
        DateTime MyDate;
        MyDate = Convert.ToDateTime(Fecha.Text);

        //validacion para evitar el ingreso de fechas iguales
        SqlDataAdapter hol = new SqlDataAdapter("select FECHA from ITINERARIO, ORIGEN, DESTINO where itinerario.ID_ORIGEN= ORIGEN.ID_ORIGEN AND itinerario.IDDESTINO= DESTINO.IDDESTINO AND itinerario.FECHA=MyDate ", con1);//borrar si no funciona
        
        if (con1 !=null)//borrar si no funciona
        {//borrar si no funciona
            Console.WriteLine("Fecha ingresada anteriormente");//borrar si no funciona
        }//borrar si no funciona
        else//borrar si no funciona
        {//borrar si no funciona
            string ad = "insert into ITINERARIO values (@IDDESTINO, @ID_ORIGEN, @HORA, @FECHA)";
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(ad, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@IDDESTINO", SqlDbType.VarChar).Value = TextBox4.Text;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@ID_ORIGEN", SqlDbType.VarChar).Value = TextBox3.Text;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@HORA", SqlDbType.Time).Value = TextBox2.Text;
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@FECHA", SqlDbType.Date).Value = MyDate;
            cmd.ExecuteNonQuery();
            con.Close();
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
            TextBox2.Text = "";
            Fecha.Text = "";
            Response.Redirect("IngresarCaracteristicas.aspx");
        }//borrar si no funciona
        con1.Close();//borrar si no funciona
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //string cadena = "Provider=SQLNCLI11;Data Source=DESKTOP-4SF0VR3;User ID=sa;Initial Catalog=Practica";
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-4SF0VR3;Initial Catalog=Reservas;Integrated Security=True");
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select HORA, FECHA, CIUDADORIGEN as CIUDAD_ORIGEN , CIUDADDESTINO AS CIUDAD_DESTINO from ITINERARIO, ORIGEN, DESTINO where itinerario.ID_ORIGEN= ORIGEN.ID_ORIGEN AND itinerario.IDDESTINO= DESTINO.IDDESTINO", con);
        DataSet ds = new DataSet();
        ad.Fill(ds, "ITINERARIO");
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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
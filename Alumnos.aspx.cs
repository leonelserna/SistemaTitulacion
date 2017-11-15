using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SistemaDeTitulacion
{
    public partial class Alumnos : System.Web.UI.Page
    {

        SqlConnection Conexion = new SqlConnection("Data Source=Isc-LS;Initial Catalog=CapsuleCorp;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd = Conexion.CreateCommand();
            cmd.CommandText = ("Insert into Alumnos (No_Control, AP_Pat, AP_Mat, Nombre, Carrera, Semestre, Requisito, Archivo) values (@control,@pat,@mat,@nom,@carre,@semes,@Requi,@Archivo)");

            cmd.Parameters.AddWithValue("@control", txtControl.Text);
            cmd.Parameters.AddWithValue("@pat", txtPat.Text);
            cmd.Parameters.AddWithValue("@mat", txtMat.Text);
            cmd.Parameters.AddWithValue("@nom", txtNom.Text);
            cmd.Parameters.AddWithValue("@carre", txtCarre.Text);
            cmd.Parameters.AddWithValue("@semes", txtSmes.Text);
            cmd.Parameters.AddWithValue("@Requi", txtRequi.Text);
            cmd.Parameters.Add(new System.Data.SqlClient.SqlParameter("Archivo", FileUpload1.FileBytes));


            Conexion.Open();
            cmd.ExecuteNonQuery();
            Conexion.Close();

            string script = "alert('HAS ENVIADO UNA NUEVA PETICION');";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

            txtControl.Text = "";
            txtPat.Text = "";
            txtMat.Text = "";
            txtNom.Text = "";
            txtCarre.Text = "";
            txtSmes.Text = "";
            txtRequi.Text = "";

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Alumno2.aspx");
        }
    }
}
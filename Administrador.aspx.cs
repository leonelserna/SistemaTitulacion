using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace SistemaDeTitulacion
{
    public partial class Administrador : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("Data Source=Isc-LS;Initial Catalog=CapsuleCorp;Integrated Security=True");
        //SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CapsuleCorp"].ConnectionString);
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            userid = (string)Session["Usuarios"];

            if (userid == "" || userid == null)
            {



                //se redirecciona al usuario a la pagina de login
                Response.Redirect("~/Administrador.aspx");
            }
            else if (userid != "Leonel-S")
            {
                Session["Usuarios"] = null;


                //se redirecciona al usuario a la pagina de login
                Response.Redirect("~/Administrador.aspx");

            }

            else if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                int fileID = 0;

                if (int.TryParse(Request.QueryString["id"], out fileID))
                {

                    string query = "select No_Control, AP_Pat, AP_Mat, Nombre, Carrera, Semestre From Alumnos where No_Control=" + fileID;
                    SqlCommand cmd = new SqlCommand(query, conexion);
                    conexion.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        txtControl.Text = reader["No_Control"].ToString();
                        txtPat.Text = reader["AP_Pat"].ToString();
                        txtMat.Text = reader["AP_Mat"].ToString();
                        txtNom.Text = reader["Nombre"].ToString();
                        txtCarre.Text = reader["Carrera"].ToString();
                        txtSmes.Text = reader["Semestre"].ToString();

                    }
                    conexion.Close();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtControl.Text);
            byte[] bytes;

            string query = "select Archivo from Alumnos where No_Control = @id";

            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.Parameters.AddWithValue("@id", id);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            bytes = (byte[])reader["Archivo"];
            conexion.Close();

            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.AppendHeader("Content-Disposition", "attachment;filename=Titulacion.pdf");
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Comentario = TxtRequi.Text;

            int id = int.Parse(txtControl.Text);
            string Aprobada = "APROBADA";
            string query = "update Alumnos set Estatus='APROBADA', Requisito= @Requisito WHERE No_Control = @id";

            SqlCommand cmd = new SqlCommand(query, conexion);

            cmd.Parameters.AddWithValue("@id", Int32.Parse(txtControl.Text));
            cmd.Parameters.AddWithValue("@Requisito", TxtRequi.Text.ToString());
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
            string script = "alert('HAS APROBADO LA PETICION')";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Comentario = TxtRequi.Text;

            int id = int.Parse(txtControl.Text);
            string Denegada = "Denegada";
            string query = "update Alumnos set Estatus='Denegar', Requisito= @Requisito WHERE No_COntrol = @id";

            SqlCommand cmd = new SqlCommand(query, conexion);

            cmd.Parameters.AddWithValue("@id", Int32.Parse(txtControl.Text));
            cmd.Parameters.AddWithValue("@Requisito", TxtRequi.Text.ToString());
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
            string script = "alert('HAS DENEGADO LA PETICION')";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);

        }
    }
}
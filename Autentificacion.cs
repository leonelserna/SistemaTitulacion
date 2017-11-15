using System;
using System.Data.SqlClient;
using System.Configuration;

namespace SistemaDeTitulacion
{
    public class Autentificacion
    {
        public static bool Autenticar(string Usuario, string Contrasena)
        {
            //consulta a la base de datos
            string sql = @"SELECT COUNT(*)
                          FROM Usuarios
                          WHERE Usuario = @Usuario AND contrasena = @Contrasena";
            //cadena conexion
            SqlConnection con = new SqlConnection("Data Source=Isc-LS;Initial Catalog=CapsuleCorp;Integrated Security=True");
            {
                con.Open();//abrimos conexion

                SqlCommand cmd = new SqlCommand(sql, con); //ejecutamos la instruccion
                cmd.Parameters.AddWithValue("@Usuario", Usuario); //enviamos los parametros
                cmd.Parameters.AddWithValue("@Contrasena", Contrasena);

                int count = Convert.ToInt32(cmd.ExecuteScalar()); //devuelve la fila afectada

                if (count == 0)
                    return false;
                else
                    return true;

            }
            
        }

    }
}
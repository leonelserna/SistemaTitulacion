using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

namespace SistemaDeTitulacion
{
    public partial class Login : System.Web.UI.Page
    {
        string UsuarioActual;
        protected void Page_Load(object sender, EventArgs e)
        {
            //si se autentica mostramos mensaje y nombre de usuario
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Write("Bienvenido : " + User.Identity.Name);
            }
        }

        protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Autentificacion.Autenticar(Login1.UserName, Login1.Password))
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                Session["Usuarios"] = Login1.UserName;
                UsuarioActual = (string)Session["Usuarios"];

                if (UsuarioActual == "Jorge-A")
                {

                    Response.Redirect("Vizor.aspx");
                }
            if (UsuarioActual == "Martin-S")
            {

                Response.Redirect("Vizor.aspx");
            }
            else if (UsuarioActual == "Andres-F")
                {
                    Response.Redirect("Alumnos.aspx");

                }
            else if (UsuarioActual == "User")
            {
                Response.Redirect("Alumnos.aspx");
            }
            else if (UsuarioActual == "Leonel-S")
                {
                    Response.Redirect("Administrador.aspx");
                }

            }
        }
    }

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaDeTitulacion
{
    public partial class Informacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Informacion\\1.-EJEMP-PORTADA-DE-TEMA-Tit.-Integral.pdf");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Informacion\\PROCESOS-DE-TITULACION-INTEGRAL-para-alumnos1.pdf");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Informacion\\6.-ARCHIVO-ETIQUETA-CD-OPCION-X-I-VII.pdf");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~\\Informacion\\7.-CARATULA-DE-CD-OPCION-X-I-VII.pdf");
        }
    }
}
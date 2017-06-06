using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!(Session["TipoSesion"].ToString().Equals("superadmin")))
            {
                urlNuevoDoc1.Visible = false;
                urlNuevoDoc2.Visible = false;
                urlDocumentos1.Visible = false;
                urlDocumentos2.Visible = false;
                urlEjemplares1.Visible = false;
                urlEjemplares2.Visible = false;
                urlUsuarios1.Visible = false;
                urlUsuarios2.Visible = false;
                urlNuevoEjemplar1.Visible = false;
                urlNuevoEjemplar2.Visible = false;
                urlNuevoUsuario1.Visible = false;
                urlNuevoUsuario2.Visible = false;
            }
            if (Session["TipoSesion"].ToString().Equals("admin"))
            {
                urlNuevoUsuario1.Visible = true;
                urlNuevoUsuario2.Visible = true;
                urlUsuarios1.Visible = true;
                urlUsuarios2.Visible = true;
            }
            if (Session["TipoSesion"].ToString().Equals("bibliotecario"))
            {
                urlNuevoDoc1.Visible = true;
                urlNuevoDoc2.Visible = true;
                urlDocumentos1.Visible = true;
                urlDocumentos2.Visible = true;
                urlEjemplares1.Visible = true;
                urlEjemplares2.Visible = true;
                urlNuevoEjemplar1.Visible = true;
                urlNuevoEjemplar2.Visible = true;
            }
        }
    }
}
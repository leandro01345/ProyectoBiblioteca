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
            if (!(Session["TipoSesion"].ToString().Equals("admin") || Session["TipoSesion"].ToString().Equals("superadmin")))
            {
                urlNuevoDoc1.Visible = false;
                urlNuevoDoc2.Visible = false;
                urlDocumentos1.Visible = false;
                urlDocumentos2.Visible = false;
                urlEjemplares1.Visible = false;
                urlEjemplares2.Visible = false;
                urlNuevoEjemplar1.Visible = false;
                urlNuevoEjemplar2.Visible = false;
                urlNuevoUsuario1.Visible = false;
                urlNuevoUsuario2.Visible = false;
            }
        }
    }
}
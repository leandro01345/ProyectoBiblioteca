using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Bienvenido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                lblUsuario.Text = User.Identity.Name;
            }

            if (Session["TipoSesion"] != null)
            {
                if ((Session["TipoSesion"].ToString().Equals("usuarioNuevo")))
                {
                    Response.Redirect("ActivarCuenta.aspx");
                }
            }
            
        }
    }
}
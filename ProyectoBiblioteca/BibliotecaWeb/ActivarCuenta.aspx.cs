using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

namespace BibliotecaWeb
{
    public partial class ActivarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["TipoSesion"].ToString().Equals("usuarioNuevo")))
            {
                Response.Redirect("Bienvenido.aspx");
            }
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            string RutCompleto = txtRut.Text + "-" + txtDv.Text;
            int idUsuario = (int)Session["IdUsuario"];
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.ActivarUsuario(idUsuario, RutCompleto))
            {
                FormsAuthentication.SignOut();
                Session["UserName"] = null;
                Session["TipoSesion"] = null;
                Session["IdUsuario"] = null;
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblError.Text = "Error al activar la cuenta. Asegúrese de que el Rut coincida.";
            }
        }
    }
}
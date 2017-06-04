using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class NuevoEjemplar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["TipoSesion"].ToString().Equals("bibliotecario") || Session["TipoSesion"].ToString().Equals("superadmin")))
            {
                Response.Redirect("Bienvenido.aspx");
            }
        }

        protected void btnLimpiarFormulario_Click(object sender, EventArgs e)
        {
            txtEstado.Text = string.Empty;
            txtUbicacion.Text = string.Empty;
        }

        protected void btnAgregarEjemplar_Click1(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.AgregarEjemplar(int.Parse(cboDocumentos.SelectedValue), txtEstado.Text, txtUbicacion.Text) == true) {
                lblMensaje.Text = "Ejemplar agregado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al agregar ejemplar.";
            }
        }
    }
}
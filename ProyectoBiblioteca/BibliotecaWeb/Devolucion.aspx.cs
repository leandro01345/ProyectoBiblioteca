using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Devolucion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["TipoSesion"].ToString().Equals("bibliotecario") || Session["TipoSesion"].ToString().Equals("superadmin")))
            {
                Response.Redirect("Bienvenido.aspx");
            }
        }

        protected void grdDocumentos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGenerarPrestamo_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            try
            {
                if (servicio.DevolucionPrestamo(int.Parse(txtID.Text)))
                {
                    lblMensaje.Text = "Devolución exitosa.";
                }
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al devolver ejemplar";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class NuevoDocumento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLimpiarFormulario_Click(object sender, EventArgs e)
        {
            txtTitulo.Text = string.Empty;
            txtAutor.Text = string.Empty;
            txtAnio.Text = string.Empty;
            txtEditorial.Text = string.Empty;
            txtEdicion.Text = string.Empty;
            txtTipo.Text = string.Empty;
            txtCategoria.Text = string.Empty;
        }

        protected void btnAgregarDocumento_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.AgregarDocumento(txtTitulo.Text, txtAutor.Text, txtAnio.Text, txtTipo.Text, txtCategoria.Text, txtEdicion.Text, txtEditorial.Text)== true){
                lblMensaje.Text = "Documento agregado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al agregar documento.";
            }
        }
    }
}
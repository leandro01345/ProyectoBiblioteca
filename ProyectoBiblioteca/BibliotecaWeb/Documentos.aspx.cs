using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Documentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdDocumentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = grdDocumentos.SelectedRow;
            // And you respective cell's value
            txtID.Text = row.Cells[1].Text;
            txtTitulo.Text = row.Cells[2].Text;
            txtAutor.Text = row.Cells[3].Text;
            txtEdicion.Text = row.Cells[4].Text;
            txtEditorial.Text = row.Cells[5].Text;
            txtTipo.Text = row.Cells[7].Text;
            txtAnio.Text = row.Cells[6].Text;
            txtCategoria.Text = row.Cells[8].Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.ModificarDocumento(int.Parse(txtID.Text), txtTitulo.Text, txtAutor.Text, txtAnio.Text, txtTipo.Text, txtCategoria.Text, txtEdicion.Text, txtEditorial.Text) == true)
            {
                lblMensaje.Text = "Documento modificado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al modificar documento.";
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.EliminarDocumento(int.Parse(txtID.Text)))
            {
                lblMensaje.Text = "Documento eliminado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al eliminar documento. Es posible que existan referencias a este elemento en otras tablas.";
                Response.AppendHeader("Refresh", "5");
            }
        }
    }
}
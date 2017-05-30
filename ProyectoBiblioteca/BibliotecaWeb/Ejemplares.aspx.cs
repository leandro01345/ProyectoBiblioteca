using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Ejemplares : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TipoSesion"] == null) {
                lblMensaje.Text = "tipo de sesion es null";
            } else
            {
                if ((Session["TipoSesion"].ToString().Equals("admin")))
                {
                    lblMensaje.Text = "hola admin";
                }
            }
            
        }

        protected void grdEjemplares_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = grdEjemplares.SelectedRow;
            // And you respective cell's value
            txtID.Text = row.Cells[1].Text;
            txtTitulo.Text = row.Cells[2].Text;
            txtEstado.Text = row.Cells[3].Text;
            txtUbicacion.Text = row.Cells[4].Text;
            txtIDDocumento.Text = row.Cells[5].Text;

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.ModificarEjemplar(int.Parse(txtID.Text), int.Parse(txtIDDocumento.Text), txtEstado.Text, txtUbicacion.Text) == true)
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
            if (servicio.EliminarEjemplar(int.Parse(txtID.Text)))
            {
                lblMensaje.Text = "Ejemplar eliminado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al eliminar ejemplar. Es posible que existan referencias a este elemento en otras tablas.";
                Response.AppendHeader("Refresh", "5");
            }
        }
    }
}
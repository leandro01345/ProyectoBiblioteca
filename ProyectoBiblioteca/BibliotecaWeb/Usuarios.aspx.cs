using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = grdUsuarios.SelectedRow;
            // And you respective cell's value
            txtID.Text = row.Cells[1].Text;
            txtRut.Text = row.Cells[2].Text;
            txtNombres.Text = row.Cells[3].Text;
            txtApellidos.Text = row.Cells[4].Text;
            txtDireccion.Text = row.Cells[5].Text;
            txtTelefono.Text = row.Cells[6].Text;
            if (row.Cells[7].Text.Equals("y"))
            {
                chkActivo.Checked = true;
            }
            else
            {
                chkActivo.Checked = false;
            }
            if (row.Cells[9].Text.Equals("y"))
            {
                chkFoto.Checked = true;
            }
            else
            {
                chkFoto.Checked = false;
            }
            if (row.Cells[8].Text.Equals("y"))
            {
                chkHuella.Checked = true;
            }
            else
            {
                chkHuella.Checked = false;
            }

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            
            if (servicio.ModificarUsuario(int.Parse(txtID.Text),txtRut.Text,txtNombres.Text,txtApellidos.Text,txtTelefono.Text,txtDireccion.Text,chkActivo.Checked,chkFoto.Checked,chkHuella.Checked) == true)
            {
                lblMensaje.Text = "Usuario modificado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al modificar usuario.";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.EliminarUsuario(int.Parse(txtID.Text)))
            {
                lblMensaje.Text = "Usuario eliminado.";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al eliminar usuario. Es posible que exista una referencia a este elemento en otra tabla.";
                Response.AppendHeader("Refresh", "5");
            }
        }
    }
}
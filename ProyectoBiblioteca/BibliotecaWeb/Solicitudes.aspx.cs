using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Solicitudes : System.Web.UI.Page
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
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = grdSolicitudes.SelectedRow;
            // And you respective cell's value
            lblIdSoli.Text = row.Cells[1].Text;
            txtID.Text = lblIdSoli.Text;
            lblIdUsuario.Text = row.Cells[2].Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnGenerarPrestamo_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            int idSolicitud = int.Parse(lblIdSoli.Text);
            int idUsuario = int.Parse(lblIdUsuario.Text);
            string tipoPrestamo = "domicilio";
            DateTime fechaDevolucion = DateTime.Now;
            fechaDevolucion = fechaDevolucion.AddDays(14);

            for (int i = 0; i < grdDetalles.Rows.Count; i++)
            {
                GridViewRow row = grdDetalles.Rows[i];
                string strIdEj = row.Cells[1].Text;
                int idEj = int.Parse(strIdEj);
                

                servicio.AgregarPrestamo(idEj, tipoPrestamo, fechaDevolucion, idSolicitud, idUsuario);
   
            }
            Response.AppendHeader("Refresh", "1");
        }

        protected void btnCancelarSolicitud_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            int idSolicitud = int.Parse(lblIdSoli.Text);

            for (int i = 0; i < grdDetalles.Rows.Count; i++)
            {
                GridViewRow row = grdDetalles.Rows[i];
                string strIdEj = row.Cells[1].Text;
                int idEj = int.Parse(strIdEj);

                servicio.RechazarSolicitud(idSolicitud, idEj);
                

            }
            Response.AppendHeader("Refresh", "1");

        }
    }
}
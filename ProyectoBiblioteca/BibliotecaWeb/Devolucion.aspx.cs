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
            GridViewRow row = grdPrestamos.SelectedRow;
            txtID.Text = row.Cells[1].Text;
            lblIdUs.Text = row.Cells[6].Text;
        }

        protected void btnGenerarPrestamo_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            try
            {
                if (servicio.DevolucionPrestamo(int.Parse(txtID.Text)))
                {
                    lblMensaje.Text = "Devolución exitosa.";
                    int dias = servicio.DiasAtraso(int.Parse(txtID.Text));
                    if (dias > 0)
                    {
                        int sancion = 2 * dias;
                        DateTime fechaFinal = DateTime.Now.AddDays(dias);
                        servicio.AgregarSancion(int.Parse(lblIdUs.Text), fechaFinal);

                        lblMensaje.Text = "Devolución exitosa. El ejemplar se ha entregado con "+dias
                            +" día(s) de atraso. Se aplicará una sanción de "+sancion+" días.";
                    }
                    Response.AppendHeader("Refresh", "3");
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
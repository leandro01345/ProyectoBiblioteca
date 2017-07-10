using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

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
            txtNombre.Text = row.Cells[3].Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnGenerarPrestamo_Click(object sender, EventArgs e)
        {
            string RutCompleto = txtRut.Text + "-" + txtDv.Text;
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            int idSolicitud = int.Parse(lblIdSoli.Text);
            int idUsuario = int.Parse(lblIdUsuario.Text);
            
            if ((CheckBox1.Checked))
            {
                if (servicio.GetRutUsuario(idUsuario).Equals(RutCompleto))
                {
                    string tipoPrestamo = cboTipoPrestamo.SelectedValue;
                    StringBuilder sb = new StringBuilder();
                    if (tipoPrestamo.Equals("domicilio"))
                    {
                        sb.Append("Comprobante de préstamo: <br/>");
                        sb.Append("Usuario: " + txtNombre.Text + "<br/>");
                    }
                    for (int i = 0; i < grdDetalles.Rows.Count; i++)
                    {
                        GridViewRow row = grdDetalles.Rows[i];
                        string strIdEj = row.Cells[1].Text;
                        int idEj = int.Parse(strIdEj);
                        DateTime fechaDevolucion = DateTime.Now;
                        if (tipoPrestamo.Equals("domicilio"))
                        {

                            int diasPrestamo = 0;
                            switch (row.Cells[3].Text)
                            {
                                case "Libro":
                                    diasPrestamo = 28;
                                    break;
                                case "Audio":
                                    diasPrestamo = 14;
                                    break;
                                case "DVD":
                                    diasPrestamo = 7;
                                    break;
                                case "Comic":
                                    diasPrestamo = 14;
                                    break;
                                default:
                                    diasPrestamo = 7;
                                    break;
                            }
                            fechaDevolucion = fechaDevolucion.AddDays(diasPrestamo);
                        }

                        if (tipoPrestamo.Equals("sala"))
                        {
                            int horasPrestamo = 0;
                            switch (row.Cells[3].Text)
                            {
                                case "Libro":
                                    horasPrestamo = 6;
                                    break;
                                case "Audio":
                                    horasPrestamo = 2;
                                    break;
                                case "DVD":
                                    horasPrestamo = 2;
                                    break;
                                case "Comic":
                                    horasPrestamo = 4;
                                    break;
                                default:
                                    horasPrestamo = 1;
                                    break;
                            }
                            fechaDevolucion = fechaDevolucion.AddHours(horasPrestamo);
                        }

                        servicio.AgregarPrestamo(idEj, tipoPrestamo, fechaDevolucion, idSolicitud, idUsuario);
                        if (tipoPrestamo.Equals("domicilio"))
                        {
                            sb.Append("<br/>");
                            sb.Append("Título: " + row.Cells[2].Text + "<br/>");
                            sb.Append("Fecha de devolución: " + fechaDevolucion + "<br/>");
                            sb.Append("<br/>");
                        }
                    }

                    if (tipoPrestamo.Equals("domicilio"))
                    {
                        Session["Comprobante"] = sb.ToString();
                        Response.Redirect("Comprobante.aspx");
                    }
                    else
                    {
                        Response.AppendHeader("Refresh", "1");
                    }
                }
                else
                {
                    lblMensaje.Text = "Rut no coincide.";
                }
            }
            else
            {
                lblMensaje.Text = lblMensaje.Text + " No se ha validado la huella.";
            }
            
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

        protected void cboTipoPrestamo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
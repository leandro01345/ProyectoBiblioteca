using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Carro : System.Web.UI.Page
    {
        List<int> idList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idListCarro"] == null)
            {
                lblVacio.Text = "No se han solicitado documentos.";
                btnConfirmar.Enabled = false;
            }
            else
            {
                idList = (List<int>)Session["idListCarro"];
                if (idList.Count == 0)
                {
                    lblVacio.Text = "No se han solicitado documentos.";
                    btnConfirmar.Enabled = false;
                } else
                {
                    lblListaCarro.Text = String.Empty;
                    foreach (var id in idList)
                    {
                        BibliotecaSvc.Service1Client servicioListar = new BibliotecaSvc.Service1Client();
                        lblListaCarro.Text = lblListaCarro.Text + servicioListar.InfoDocumento(id) + "<br/>";
                    }
                }
            }
            //lblVacio.Text = Session["UserName"].ToString();
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            //Crear la solicitud
            string error = String.Empty;
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            int idUsuario = (int)Session["IdUsuario"];
            int idsolicitud = servicio.AgregarSolicitud(idUsuario);//CONFIGURAR ID USUARIO
            if (idsolicitud != -1)
            {
                foreach (var iddoc in idList)
                {

                    int idejemplr = servicio.Doc_EjemplarDisponible(iddoc);
                    if (idejemplr != -1)
                    {
                        servicio.AgregarDetalleSolicitud(idejemplr, idsolicitud);
                    }
                    else
                    {
                        error = "Uno o más documentos de su solicitud ya no se encuentran disponibles.";
                    }
                }
                Session["idListCarro"] = null;
                Response.AppendHeader("Refresh", "1");
            }
            else
            {
                error = "Error al ingresar solicitud.";
            }
            lblError.Text = error;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Session["idListCarro"] = null;
            Response.AppendHeader("Refresh", "1");
        }

        protected void DateChange(object sender, EventArgs e)
        {
            txtFecha.Text = Calendar1.SelectedDate.ToLongDateString();
            DateTime date = Calendar1.SelectedDate;
        }

        protected void chkReservaFecha_CheckedChanged(object sender, EventArgs e)
        {
            if (chkReservaFecha.Checked)
            {
                Calendar1.Enabled = true;
                Calendar1.Visible = true;
                txtFecha.Enabled = true;
                txtFecha.Visible = true;
            }
            else
            {
                Calendar1.Enabled = false;
                Calendar1.Visible = false;
                txtFecha.Enabled = false;
                txtFecha.Visible = false;
            }
        }
    }
}
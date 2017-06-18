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
                }
            }
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
            }
            else
            {
                error = "Error al ingresar solicitud.";
            }
            lblError.Text = error;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }
    }
}
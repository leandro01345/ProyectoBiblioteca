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
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            //int idsolicitud = servicio.
            foreach (var iddoc in idList)
            {
                
                int idejemplr = servicio.Doc_EjemplarDisponible(iddoc);
                if (idejemplr != -1)
                {
                    
                    Response.AppendHeader("Refresh", "3");
                }
                else
                {
                    
                }
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }
    }
}
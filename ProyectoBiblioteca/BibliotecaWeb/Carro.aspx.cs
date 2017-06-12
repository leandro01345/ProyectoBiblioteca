﻿using System;
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
            }
            else
            {
                idList = (List<int>)Session["idListCarro"];
                if (idList.Count == 0)
                {
                    lblVacio.Text = "No se han solicitado documentos.";
                }
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }
    }
}
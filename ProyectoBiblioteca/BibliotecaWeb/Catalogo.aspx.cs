using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Catalogo : System.Web.UI.Page
    {
        List<string> titleList;
        List<int> idList;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0)
            {
                lblVacio.Text = "No se han encontrado documentos.";
            }
            else
            {
                lblVacio.Text = "";
            }

            //if (this.idList  == null)
            //{
            //    idList = new List<int>();
            //}
            if (this.titleList == null)
            {
                titleList = new List<string>();
            }
            if (Session["idListCarro"] == null)
            {
                Session["idListCarro"] = new List<int>();
            }
            idList = (List<int>)Session["idListCarro"];

            lblPrueba.Text = String.Empty;
            foreach (var item in idList)
            {
                lblPrueba.Text = lblPrueba.Text + " " + item;
            }

            if ((Session["TipoSesion"].ToString().Equals("usuarioNuevo")))
            {
                Response.Redirect("ActivarCuenta.aspx");
            }

        }

        protected void grdDocumentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAgregarASolicitud_Click(object sender, EventArgs e)
        {
            int cant = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                //Label lb = (Label)GridView1.Rows[i].FindControl("Label1");

                if (ch.Checked == true)
                {
                    string strTitulo = GridView1.Rows[i].Cells[1].Text;
                    // Get the currently selected row using the SelectedRow property.
                    GridViewRow row = GridView1.Rows[i];
                    // And you respective cell's value
                    strTitulo = row.Cells[2].Text;
                    int idTitulo = int.Parse(row.Cells[1].Text);

                    bool existe = false;
                    foreach (var item in idList)
                    {
                        if (item == idTitulo)
                        {
                            existe = true;
                        }
                    }

                    //this.titleList.Add(strTitulo);
                    if (!existe)
                    {
                        this.idList.Add(idTitulo);
                        cant++;
                    }
                    
                    Session["idListCarro"] = idList;
                }

            }
            if (cant == 0) {
                lblMensaje.Text = "No se han seleccionado documentos o los documentos seleccionados ya están agregados al carro.";
            }
            else
            {
                lblMensaje.Text = "Se han agregado los documentos seleccionados al carro";
            }
            Response.AppendHeader("Refresh", "3");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckBox ch = (CheckBox)GridView1.SelectedRow.FindControl("CheckBox1");
            ch.Checked = true;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            //cboTipo.Items.Insert(0, "Todas");

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            //cboCategoria.Items.Insert(0, "Todas");
        }
    }
}
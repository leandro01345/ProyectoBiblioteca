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
        List<string> titleList = new List<string>();
        List<int> idList = new List<int>();

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

        }

        protected void grdDocumentos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAgregarASolicitud_Click(object sender, EventArgs e)
        {
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

                    lblPrueba.Text = lblPrueba.Text + " " + strTitulo;
                    this.titleList.Add(strTitulo);
                }

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
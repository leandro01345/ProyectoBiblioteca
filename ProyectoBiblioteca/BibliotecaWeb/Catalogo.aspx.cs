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
        protected void Page_Load(object sender, EventArgs e)
        {
            List<object> ListBox1 = new List<object>();
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
                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                if (ch.Checked == true) { 
                    //some action
                    // now we will put selected rows name in our listbox
                    //but first we should make name field as template field..
                    //now we can take the data from name field that shown in Lable1
                    //but first we should do this...
                    //thank U foe watching   :)

                    
                }

            }
        }
    }
}
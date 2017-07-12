using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWeb
{
    public partial class Prestamos : System.Web.UI.Page
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

        }

        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnEnviarRecordatorio_Click(object sender, EventArgs e)
        {
            int cont = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                int idUsuario = int.Parse(row.Cells[5].Text);
                BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
                string emailUsuario = servicio.GetEmailUsuario(idUsuario); 

                
                MailMessage msj = new MailMessage();
                SmtpClient cli = new SmtpClient();

                msj.From = new MailAddress("sis.biblio.auto@gmail.com");
                msj.To.Add(new MailAddress(emailUsuario));
                msj.Subject = "Recordatorio de devolución";
                msj.Body = "Estimado usuario, se solicita la devolución de los ejemplares cuyo préstamo ha vencido.";
                msj.IsBodyHtml = false;

                cli.Host = "smtp.gmail.com";
                cli.Port = 587;
                cli.Credentials = new NetworkCredential("sis.biblio.auto@gmail.com", "SistemaDeBiblioteca");
                cli.EnableSsl = true;
                cli.Send(msj);

                cont++;
            }
            if (cont > 0)
            {
                lblMensaje.Text = "Correos enviados con éxito";
            }
        }
    }
}
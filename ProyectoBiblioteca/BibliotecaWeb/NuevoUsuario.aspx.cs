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
    public partial class NuevoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["TipoSesion"].ToString().Equals("admin") || Session["TipoSesion"].ToString().Equals("superadmin")))
            {
                Response.Redirect("Bienvenido.aspx");
            }
        }

        protected void btnLimpiarFormulario_Click(object sender, EventArgs e)
        {
            txtRut.Text = string.Empty;
            txtDVRut.Text = string.Empty;
            txtNombres.Text = string.Empty;
            txtApellidos.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            chkFoto.Checked = false;
            chkHuella.Checked = false;
            txtCorreo.Text = string.Empty;
        }

        protected void btnAgregarUsuario_Click1(object sender, EventArgs e)
        {
            string RutCompleto = txtRut.Text + "-" + txtDVRut.Text;
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            if (servicio.AgregarUsuario(RutCompleto, txtNombres.Text, txtApellidos.Text, txtTelefono.Text, txtDireccion.Text, chkFoto.Checked, chkHuella.Checked) == true)
            {
                MailMessage msj = new MailMessage();
                SmtpClient cli = new SmtpClient();
                string email = txtCorreo.Text.ToString();
                string nombre = txtNombres.Text.ToString();
                msj.From = new MailAddress("sis.biblio.auto@gmail.com");
                msj.To.Add(new MailAddress(email));
                msj.Subject = "Bienvenido, este correo es automatico";
                msj.Body = "Hola " + nombre + " Bienvenido al sistema sisBiblio, este correo es automatico para validar";
                msj.IsBodyHtml = false;
                
                cli.Host = "smtp.gmail.com";
                cli.Port = 587;
                cli.Credentials = new NetworkCredential("sis.biblio.auto@gmail.com", "sistemaBiblioteca");
                cli.EnableSsl = true;
                cli.Send(msj);
                lblMensaje.Text = "Usuario agregado, Por favor Revise su correo electronico";
                Response.AppendHeader("Refresh", "3");
            }
            else
            {
                lblMensaje.Text = "Error al agregar usuario.";
            }
        }
    }
}
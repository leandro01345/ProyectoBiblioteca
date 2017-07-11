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
            //Nombre de usuario automático
            string NomUsuario = txtNombres.Text.Trim().ToLower();
            Char delimiter = ' ';
            String[] substrings = NomUsuario.Split(delimiter);
            NomUsuario = substrings[0];

            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            string error = "";
            bool errorbool = false;
            if ((servicio.ExisteRutUsuario(RutCompleto))) {
                error = "El Rut ya existe. ";
                errorbool = true;
            }
            if ((servicio.ExisteEmailUsuario(txtCorreo.Text)))
            {
                error = error + "Esta dirección de correo ya está en uso.";
                errorbool = true;
            }

            if (!errorbool)
            {
                if (servicio.UserNameExiste(NomUsuario))
                {
                    int cont = 0;
                    do
                    {
                        cont++;
                    } while (servicio.UserNameExiste(NomUsuario + cont.ToString()));
                    NomUsuario = NomUsuario + cont.ToString();
                }
                //Password random
                Random rnd = new Random();
                int r1 = rnd.Next(9);
                int r2 = rnd.Next(9);
                int r3 = rnd.Next(9);
                string Password = r1.ToString() + r2.ToString() + r3.ToString();

                string email = txtCorreo.Text.ToString();

                if (servicio.AgregarUsuario(RutCompleto, txtNombres.Text, txtApellidos.Text, txtTelefono.Text, txtDireccion.Text, chkFoto.Checked, chkHuella.Checked, NomUsuario, Password, email) == true)
                {
                    MailMessage msj = new MailMessage();
                    SmtpClient cli = new SmtpClient();

                    string nombre = txtNombres.Text.ToString();
                    msj.From = new MailAddress("sis.biblio.auto@gmail.com");
                    msj.To.Add(new MailAddress(email));
                    msj.Subject = "Bienvenido, este correo es automatico";
                    msj.Body = "Hola " + nombre + " Bienvenido al sistema sisBiblio, este es un correo es automático para validar su cuenta.\n" +
                        "Inicie sesión con los siguientes datos:\n" + "Nombre de usuario: " + NomUsuario + "\n" + "Password: " + Password + "\n" +
                        "Si usted no ha solicitado un registro en BEC y ha recibido este mensaje por error, por favor ignórelo.";
                    msj.IsBodyHtml = false;

                    cli.Host = "smtp.gmail.com";
                    cli.Port = 587;
                    cli.Credentials = new NetworkCredential("sis.biblio.auto@gmail.com", "SistemaDeBiblioteca");
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
            else
            {
                lblMensaje.Text = error;
            }

            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

namespace BibliotecaWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void ctrLogin_Authenticate(object sender, AuthenticateEventArgs e)
        //{
        //    BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
        //    if (servicio.Logear(ctrLogin.UserName, ctrLogin.Password))
        //    {
        //        e.Authenticated = true;
        //        Session.Add("UserName", ctrLogin.UserName.ToString());
        //        Session.Add("TipoSesion", servicio.TipoSesion(ctrLogin.UserName));
        //        FormsAuthentication.RedirectFromLoginPage(ctrLogin.UserName, false);
                
        //    }
        //}

        protected void BtnLogear_Click(object sender, EventArgs e)
        {
            BibliotecaSvc.Service1Client servicio = new BibliotecaSvc.Service1Client();
            try
            {
                if (servicio.Logear(txtNomUsuario.Text, txtPwd.Text))
                {

                    Session.Add("UserName", txtNomUsuario.Text);
                    Session.Add("TipoSesion", servicio.TipoSesion(txtNomUsuario.Text));
                    Session.Add("IdUsuario", servicio.IdUsuarioSesion(txtNomUsuario.Text));
                    FormsAuthentication.RedirectFromLoginPage(txtNomUsuario.Text, false);
                    Response.Redirect("Bienvenido.aspx");

                }
                else {
                    lblMsj.Text = "Usuario o contraseña incorrectos";
                }
            }
            catch (Exception)
            {

                
            }
        }
    }
}
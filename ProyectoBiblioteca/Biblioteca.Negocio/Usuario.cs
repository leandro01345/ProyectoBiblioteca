using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Usuario
    {
        public bool Create(string rut, string nombres, string apellidos, string direccion, string telefono, bool foto, bool huella, string username)
        {
            try
            {
                Biblioteca.DALC.USUARIO us = new DALC.USUARIO();
                us.RUTUSUARIO = rut;
                us.NOMBRESUSUARIO = nombres;
                us.APELLIDOSUSUARIO = apellidos;
                us.DIRECCIONUSUARIO = direccion;
                us.TELEFONOUSUARIO = telefono;
                string fotostr = "n";
                string huellastr = "n";
                if (foto)
                {
                    fotostr = "y";
                }
                if (huella)
                {
                    huellastr = "y";
                }
                us.FOTOUSUARIO = fotostr;
                us.HUELLAUSUARIO = huellastr;

                CommonBC.ModeloBiblioteca.PRO_ADD_USUARIO(rut, nombres, apellidos, direccion, telefono, fotostr, huellastr, username);
                CommonBC.ModeloBiblioteca.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(int id, string rut, string nombres, string apellidos, string direccion, string telefono, bool activo, bool foto, bool huella)
        {
            try
            {
                Biblioteca.DALC.USUARIO us = CommonBC.ModeloBiblioteca.USUARIO.First
                    (u => u.IDUSUARIO == id);
                us.RUTUSUARIO = rut;
                us.NOMBRESUSUARIO = nombres;
                us.APELLIDOSUSUARIO = apellidos;
                us.DIRECCIONUSUARIO = direccion;
                us.TELEFONOUSUARIO = telefono;
                string activostr = "n";
                string fotostr = "n";
                string huellastr = "n";
                if (foto)
                {
                    fotostr = "y";
                }
                if (huella)
                {
                    huellastr = "y";
                }
                if (activo)
                {
                    activostr = "y";
                }
                us.ACTIVOUSUARIO = activostr;
                us.FOTOUSUARIO = fotostr;
                us.HUELLAUSUARIO = huellastr;

                CommonBC.ModeloBiblioteca.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Delete(int Id)
        {
            try
            {
                Biblioteca.DALC.USUARIO us = CommonBC.ModeloBiblioteca.USUARIO.First
                    (u => u.IDUSUARIO == Id);
                CommonBC.ModeloBiblioteca.DeleteObject(us);
                CommonBC.ModeloBiblioteca.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Existe(int Id)
        {
            try
            {
                Biblioteca.DALC.USUARIO us = CommonBC.ModeloBiblioteca.USUARIO.First
                   (u => u.IDUSUARIO == Id);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool ExisteUserName(string username)
        {
            try
            {
                Biblioteca.DALC.USUARIO us = CommonBC.ModeloBiblioteca.USUARIO.First
                   (u => u.NOMBRESUSUARIO == username);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Security.Cryptography;

namespace Biblioteca.Negocio
{
    public class Usuario
    {
        public bool Create(string rut, string nombres, string apellidos, string direccion, string telefono, bool foto, bool huella, string username, string password, string email)
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
                password = CalculateMD5Hash(password);
                CommonBC.ModeloBiblioteca.PRO_ADD_USUARIO(rut, nombres, apellidos, direccion, telefono, fotostr, huellastr, username, password, email);
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

        public string CalculateMD5Hash(string input)

        {

            // step 1, calculate MD5 hash from input

            MD5 md5 = System.Security.Cryptography.MD5.Create();

            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);

            byte[] hash = md5.ComputeHash(inputBytes);


            // step 2, convert byte array to hex string

            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < hash.Length; i++)

            {

                sb.Append(hash[i].ToString());

            }

            return sb.ToString();

        }

    }
}

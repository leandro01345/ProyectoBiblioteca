using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Security.Cryptography;

namespace Biblioteca.Negocio
{
    public class Sesion
    {
        public bool Logear(string nomUser, string clave)
        {
            //nomUser = CalculateMD5Hash(nomUser);
            //clave = 123
            clave = CalculateMD5Hash(clave);
            try
            {
                Biblioteca.DALC.SESION sesion = CommonBC.ModeloBiblioteca.SESION.First
                    (c => c.USERNAMESESION.Equals(nomUser) && c.PASSWORDSESION.Equals(clave));
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public string TipoSesion(string nomUser)
        {
            try
            {
                Biblioteca.DALC.SESION sesion = CommonBC.ModeloBiblioteca.SESION.First
                    (c => c.USERNAMESESION.Equals(nomUser));
                return sesion.TIPOSESION;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public int IdUsuarioSesion(string nomUser)
        {
            try
            {
                Biblioteca.DALC.SESION sesion = CommonBC.ModeloBiblioteca.SESION.First
                    (c => c.USERNAMESESION.Equals(nomUser));
                return (int)sesion.USUARIO_IDUSUARIO;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public bool UserNameExiste(string nomUser)
        {
            try
            {
                Biblioteca.DALC.SESION sesion = CommonBC.ModeloBiblioteca.SESION.First
                    (c => c.USERNAMESESION.Equals(nomUser));
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

                sb.Append(hash[i].ToString("x2"));

            }

            return sb.ToString();

        }
    }
}

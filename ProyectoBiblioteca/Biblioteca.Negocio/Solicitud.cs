using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Solicitud
    {

        public int Create(int IdUsuario)
        {
            try
            {
                Biblioteca.DALC.SOLICITUD soli = new DALC.SOLICITUD();
                //soli.FECHASOLICITUD = fechSolicitud;

                //soli.HORASOLICITUD = horaSolicitud;
                soli.USUARIO_IDUSUARIO = IdUsuario;
                CommonBC.ModeloBiblioteca.PRO_ADD_SOLICITUD(soli.USUARIO_IDUSUARIO);
                //int id_sol = CommonBC.ModeloBiblioteca.;
                
                //CommonBC.ModeloBiblioteca.PRO_ADD_SOLICITUD1(1);
                CommonBC.ModeloBiblioteca.SaveChanges();
                return UltimaSolicitud(IdUsuario);
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public bool Update(int id, DateTime fechSolicitud)
        {
            try
            {
                Biblioteca.DALC.SOLICITUD soli = CommonBC.ModeloBiblioteca.SOLICITUD.First
                    (s => s.IDSOLICITUD == id);
                soli.FECHASOLICITUD = fechSolicitud;
                //soli.HORASOLICITUD = horaSolicitud;

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
                Biblioteca.DALC.SOLICITUD soli = CommonBC.ModeloBiblioteca.SOLICITUD.First
                    (s => s.IDSOLICITUD == Id);

                CommonBC.ModeloBiblioteca.DeleteObject(soli);
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
                Biblioteca.DALC.SOLICITUD soli = CommonBC.ModeloBiblioteca.SOLICITUD.First
                   (s => s.IDSOLICITUD == Id);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public int UltimaSolicitud(int id_usuario)
        {
            try
            {

                Biblioteca.DALC.SOLICITUD soli = CommonBC.ModeloBiblioteca.SOLICITUD.OrderByDescending(s => s.IDSOLICITUD).First
                    (s => s.USUARIO_IDUSUARIO == id_usuario);
                return (int)soli.IDSOLICITUD;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public bool CrearDetalle(int idEj, int idSol)
        {
            try
            {
                CommonBC.ModeloBiblioteca.PRO_ADD_DETALLESOLICITUD(idEj, idSol);
                CommonBC.ModeloBiblioteca.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            
            
        }

        public bool Rechazar(int idSol, int idEj)
        {
            try
            {
                Biblioteca.DALC.SOLICITUD soli = CommonBC.ModeloBiblioteca.SOLICITUD.First
                   (s => s.IDSOLICITUD == idSol);

                CommonBC.ModeloBiblioteca.PRO_RECHAZAR_PRESTAMO(idEj, idSol);

                CommonBC.ModeloBiblioteca.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    

}
}

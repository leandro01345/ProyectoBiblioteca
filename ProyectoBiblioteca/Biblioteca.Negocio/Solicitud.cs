using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Solicitud
    {

        public int Create(DateTime fechSolicitud)
        {
            try
            {
                Biblioteca.DALC.SOLICITUD soli = new DALC.SOLICITUD();
                soli.FECHASOLICITUD = fechSolicitud;
                //soli.HORASOLICITUD = horaSolicitud;


                CommonBC.ModeloBiblioteca.SOLICITUD.AddObject(soli);
                CommonBC.ModeloBiblioteca.SaveChanges();
                return (int)soli.IDSOLICITUD;
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


    

}
}

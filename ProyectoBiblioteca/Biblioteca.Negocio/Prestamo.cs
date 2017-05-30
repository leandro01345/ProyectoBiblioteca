using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Prestamo
    {

        public bool Create(string tipoPrestamo, DateTime fechaPrestamo, DateTime horaPrestamo,
            DateTime fechaDevolucion, DateTime horaDevolucion, DateTime fechaRealPrestamo,
            DateTime horaRealPrestamo)
        {
            try
            {
                Biblioteca.DALC.PRESTAMO pres = new DALC.PRESTAMO();
                pres.TIPOPRESTAMO = tipoPrestamo;
                pres.HORAPRESTAMO = horaPrestamo;
                pres.FECHAPRESTAMO = fechaPrestamo;
                pres.HORADEVOLUCIONPRESTAMO = fechaDevolucion;
                pres.HORADEVOLUCIONPRESTAMO = horaDevolucion;
                pres.FECHADEVOLUCIONREALPRESTAMO = fechaRealPrestamo;
                pres.HORADEVOLUCIONREALPRESTAMO = horaRealPrestamo;

                CommonBC.ModeloBiblioteca.PRESTAMO.AddObject(pres);
                //CommonBC.ModeloBiblioteca.DOCUMENTO.AddObject(doc);
                CommonBC.ModeloBiblioteca.SaveChanges();
                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Update(int id, string tipoPrestamo, DateTime fechaPrestamo, DateTime horaPrestamo,
            DateTime fechaDevolucion, DateTime horaDevolucion, DateTime fechaRealPrestamo,
            DateTime horaRealPrestamo)
        {
            try
            {
                Biblioteca.DALC.PRESTAMO pres = CommonBC.ModeloBiblioteca.PRESTAMO.First
                    (p => p.IDPRESTAMO == id);
                pres.TIPOPRESTAMO = tipoPrestamo;
                pres.HORAPRESTAMO = horaPrestamo;
                pres.FECHAPRESTAMO = fechaPrestamo;
                pres.HORADEVOLUCIONPRESTAMO = fechaDevolucion;
                pres.HORADEVOLUCIONPRESTAMO = horaDevolucion;
                pres.FECHADEVOLUCIONREALPRESTAMO = fechaRealPrestamo;
                pres.HORADEVOLUCIONREALPRESTAMO = horaRealPrestamo;
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
                Biblioteca.DALC.PRESTAMO pres = CommonBC.ModeloBiblioteca.PRESTAMO.First
                    (p => p.IDPRESTAMO == Id);

                CommonBC.ModeloBiblioteca.DeleteObject(pres);
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
                Biblioteca.DALC.PRESTAMO doc = CommonBC.ModeloBiblioteca.PRESTAMO.First
                   (p => p.IDPRESTAMO == Id);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Prestamo
    {

        public bool Create(int idEjemplar, string tipoPrestamo,
            DateTime fechaDevolucion, int idSoli, int idUsu)
        {
            try
            {
                Biblioteca.DALC.PRESTAMO pres = new DALC.PRESTAMO();
                pres.TIPOPRESTAMO = tipoPrestamo;
                pres.EJEMPLAR_IDEJEMPLAR = idEjemplar;
                pres.FECHADEVOLUCIONPRESTAMO = fechaDevolucion;

                CommonBC.ModeloBiblioteca.PRO_ADD_PRESTAMO(idEjemplar, tipoPrestamo, fechaDevolucion, idSoli, idUsu);
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
               // pres.HORAPRESTAMO = horaPrestamo;
                pres.FECHAPRESTAMO = fechaPrestamo;
                pres.FECHADEVOLUCIONPRESTAMO = fechaDevolucion;
                //pres.HORADEVOLUCIONPRESTAMO = horaDevolucion;
                pres.FECHADEVOLUCIONREALPRESTAMO = fechaRealPrestamo;
                //pres.HORADEVOLUCIONREALPRESTAMO = horaRealPrestamo;
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

        public bool Devolucion(int idEjemplar)
        {
            try
            {
                CommonBC.ModeloBiblioteca.PRO_DEVOLVER_EJEMPLAR(idEjemplar);
                CommonBC.ModeloBiblioteca.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public int DiasAtrasoUltimaSolicitud (int idEjemplar)
        {
            try
            {
                Biblioteca.DALC.PRESTAMO pres = CommonBC.ModeloBiblioteca.PRESTAMO.Where
                    (e => e.EJEMPLAR_IDEJEMPLAR == idEjemplar).OrderByDescending(p => p.FECHADEVOLUCIONREALPRESTAMO).First();

                if (pres.FECHADEVOLUCIONREALPRESTAMO > pres.FECHADEVOLUCIONPRESTAMO)
                {
                    DateTime fechaFinal = (DateTime)pres.FECHADEVOLUCIONREALPRESTAMO;
                    DateTime fechaInicio = (DateTime)pres.FECHADEVOLUCIONPRESTAMO;

                    int dias = (int)(fechaFinal - fechaInicio).TotalDays;
                    return dias;
                } else
                {
                    return 0;
                }
            }
            catch (Exception)
            {
                return -1;
            }
        }

    }
}

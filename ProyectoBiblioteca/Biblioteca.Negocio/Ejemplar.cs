using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Ejemplar
    {

        public bool Create(int iddocumento, string estado, string ubicacion)
        {
            try
            {
                Biblioteca.DALC.EJEMPLAR ej = new DALC.EJEMPLAR();
                ej.DOCUMENTO_IDDOCUMENTO = iddocumento;
                //ej.IDEJEMPLAR = id;
                ej.ESTADOEJEMPLAR = estado;
                ej.UBICACIONEJEMPLAR = ubicacion;
                
                CommonBC.ModeloBiblioteca.PRO_ADD_EJEMPLAR(ej.DOCUMENTO_IDDOCUMENTO,ej.ESTADOEJEMPLAR,ej.UBICACIONEJEMPLAR);
                //CommonBC.ModeloBiblioteca.EJEMPLAR.AddObject(ej);


                CommonBC.ModeloBiblioteca.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(int id, int iddocumento, string estado, string ubicacion)
        {
            try
            {
                Biblioteca.DALC.EJEMPLAR ej = CommonBC.ModeloBiblioteca.EJEMPLAR.First
                    (e => e.IDEJEMPLAR == id);
                ej.DOCUMENTO_IDDOCUMENTO = iddocumento;
                ej.ESTADOEJEMPLAR = estado;
                ej.UBICACIONEJEMPLAR = ubicacion;
                CommonBC.ModeloBiblioteca.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update_Disponibilidad(int id, string disp)
        {
            try
            {
                Biblioteca.DALC.EJEMPLAR ej = CommonBC.ModeloBiblioteca.EJEMPLAR.First
                    (e => e.IDEJEMPLAR == id);
                ej.DISPONIBILIDAD = disp;
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
                Biblioteca.DALC.EJEMPLAR ej = CommonBC.ModeloBiblioteca.EJEMPLAR.First
                    (e => e.IDEJEMPLAR == Id);
                CommonBC.ModeloBiblioteca.DeleteObject(ej);
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
                Biblioteca.DALC.EJEMPLAR ej = CommonBC.ModeloBiblioteca.EJEMPLAR.First
                   (e => e.IDEJEMPLAR == Id);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


    }
}

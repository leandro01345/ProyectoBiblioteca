using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Negocio
{
    public class Documento
    {
        public bool Create(string titulo, string autor, string anio, string tipo, string categoria, string edicion, string editorial)
        {
            try
            {
                Biblioteca.DALC.DOCUMENTO doc = new DALC.DOCUMENTO();
                //doc.IDDOCUMENTO = id;
                doc.TIPODOCUMENTO = tipo;
                doc.TITULODOCUMENTO = titulo;
                doc.AUTORDOCUMENTO = autor;
                doc.EDITORIALDOCUMENTO = editorial;
                doc.ANIODOCUMENTO = anio;
                doc.EDICIONDOCUMENTO = edicion;
                doc.CATEGORIADOCUMENTO = categoria;

                CommonBC.ModeloBiblioteca.PRO_ADD_DOCUMENTO(titulo,autor,anio,edicion,editorial,tipo,categoria);
                //CommonBC.ModeloBiblioteca.DOCUMENTO.AddObject(doc);
                CommonBC.ModeloBiblioteca.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(int id, string titulo, string autor, string anio, string tipo, string editorial, string edicion, string categoria)
        {
            try
            {
                Biblioteca.DALC.DOCUMENTO doc = CommonBC.ModeloBiblioteca.DOCUMENTO.First
                    (d => d.IDDOCUMENTO == id);
                doc.TITULODOCUMENTO = titulo;
                doc.AUTORDOCUMENTO = autor;
                doc.ANIODOCUMENTO = anio;
                doc.TIPODOCUMENTO = tipo;
                doc.EDITORIALDOCUMENTO = editorial;
                doc.EDICIONDOCUMENTO = edicion;
                doc.CATEGORIADOCUMENTO = categoria;
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
                Biblioteca.DALC.DOCUMENTO doc = CommonBC.ModeloBiblioteca.DOCUMENTO.First
                    (d => d.IDDOCUMENTO == Id);
             
                CommonBC.ModeloBiblioteca.DeleteObject(doc);
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
                Biblioteca.DALC.DOCUMENTO doc = CommonBC.ModeloBiblioteca.DOCUMENTO.First
                   (d => d.IDDOCUMENTO == Id);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public int EjemplarDisponible (int Id)
        {
            try
            {
                Biblioteca.DALC.V_DOC_EJEMPLAR_DISPONIBLE ejdisp = CommonBC.ModeloBiblioteca.V_DOC_EJEMPLAR_DISPONIBLE.First
                (d => d.IDDOCUMENTO == Id);
                int idej = (int)ejdisp.PRIMER_EJEMPLAR_DISPONIBLE;
                return idej;
            }
            catch (Exception)
            {
                return -1;
            }
        }

    }
}

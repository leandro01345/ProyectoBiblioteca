using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

using Biblioteca.Negocio;

namespace Biblioteca.Servicio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Service1 : IService1
    {

        public bool Logear(string nomUser, string clave)
        {
            Sesion sec = new Sesion();
            return sec.Logear(nomUser, clave);
        }

        public string TipoSesion(string nomUser)
        {
            Sesion sec = new Sesion();
            return sec.TipoSesion(nomUser);
        }

        public int IdUsuarioSesion(string nomUser)
        {
            Sesion sec = new Sesion();
            return sec.IdUsuarioSesion(nomUser);
        }

        public bool UserNameExiste (string nomUser)
        {
            Sesion sec = new Sesion();
            return sec.UserNameExiste(nomUser);
        }

        public bool AgregarEjemplar(int iddocumento, string estado, string ubicacion)
        {
            Ejemplar ej = new Ejemplar();
            return ej.Create(iddocumento, estado, ubicacion);
        }

        public bool AgregarDocumento(string titulo, string autor, string anio, string tipo, string categoria, string edicion, string editorial)
        {
            Documento doc = new Documento();
            return doc.Create(titulo, autor, anio, tipo, categoria, edicion, editorial);
        }

        public int Doc_EjemplarDisponible(int iddoc)
        {
            Documento doc = new Documento();
            return doc.EjemplarDisponible(iddoc);
        }

        public bool AgregarUsuario(string rut, string nombres, string apellidos, string telefono, string direccion, bool foto, bool huella, string username, string password, string email)
        {
            Usuario us = new Usuario();
            return us.Create(rut, nombres, apellidos, direccion, telefono, foto, huella, username, password, email);
        }

        public int AgregarSolicitud(int idUsuario)
        {
            Solicitud sol = new Solicitud();
            
            return sol.Create(idUsuario);
        }

        public bool AgregarDetalleSolicitud(int idEjemplar, int idSolicitud)
        {
            Solicitud sol = new Solicitud();

            return sol.CrearDetalle(idEjemplar,idSolicitud);
        }

        public bool ModificarEjemplar(int idejemplar, int iddocumento, string estado, string ubicacion)
        {
            Ejemplar ej = new Ejemplar();
            return ej.Update(idejemplar, iddocumento, estado, ubicacion);
        }

        public bool ModificarEjemplarDisponibilidad(int idejemplar, string disponibilidad)
        {
            Ejemplar ej = new Ejemplar();
            return ej.Update_Disponibilidad (idejemplar, disponibilidad);
        }

        public bool ModificarDocumento(int iddocumento, string titulo, string autor, string anio, string tipo, string categoria, string edicion, string editorial)
        {
            Documento doc = new Documento();
            return doc.Update(iddocumento, titulo, autor, anio, tipo, editorial, edicion, categoria);
        }

        public bool ModificarUsuario(int id, string rut, string nombres, string apellidos, string telefono, string direccion, bool activo, bool foto, bool huella)
        {
            Usuario us = new Usuario();
            return us.Update(id, rut, nombres, apellidos, direccion, telefono, activo, foto, huella);
        }

        public bool EliminarEjemplar(int id)
        {
            Ejemplar ej = new Ejemplar();
            return ej.Delete(id);
        }

        public bool EliminarDocumento(int id)
        {
            Documento doc = new Documento();
            return doc.Delete(id);
        }

        public bool EliminarUsuario(int id)
        {
            Usuario us = new Usuario();
            return us.Delete(id);
        }

    }
}

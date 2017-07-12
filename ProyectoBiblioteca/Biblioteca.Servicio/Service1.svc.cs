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

        public bool UserNameExiste(string nomUser)
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

        public string InfoDocumento(int id)
        {
            Documento doc = new Documento();
            return doc.InfoDocumento(id);
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

        public int AgregarSolicitudFecha(int idUsuario, DateTime fecha)
        {
            Solicitud sol = new Solicitud();

            return sol.CreateFecha(idUsuario, fecha);
        }

        public bool AgregarDetalleSolicitud(int idEjemplar, int idSolicitud)
        {
            Solicitud sol = new Solicitud();

            return sol.CrearDetalle(idEjemplar, idSolicitud);
        }

        public bool AgregarPrestamo(int idEjemplar, string tipoPrestamo, DateTime fechaDevolucion, int idSoli, int idUsu)
        {
            Prestamo pres = new Prestamo();
            return pres.Create(idEjemplar, tipoPrestamo, fechaDevolucion, idSoli, idUsu);
        }

        public bool DevolucionPrestamo(int idEjemplar)
        {
            Prestamo pres = new Prestamo();
            return pres.Devolucion(idEjemplar);
        }

        public bool ModificarEjemplar(int idejemplar, int iddocumento, string estado, string ubicacion)
        {
            Ejemplar ej = new Ejemplar();
            return ej.Update(idejemplar, iddocumento, estado, ubicacion);
        }

        public bool ModificarEjemplarDisponibilidad(int idejemplar, string disponibilidad)
        {
            Ejemplar ej = new Ejemplar();
            return ej.Update_Disponibilidad(idejemplar, disponibilidad);
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

        public bool RechazarSolicitud(int idSol, int idEj)
        {
            Solicitud sol = new Solicitud();
            return sol.Rechazar(idSol, idEj);
        }

        public string GetEmailUsuario(int idUsuario)
        {
            Usuario us = new Usuario();
            return us.getEmail(idUsuario);
        }

        public string GetRutUsuario(int idUsuario)
        {
            Usuario us = new Usuario();
            return us.getRut(idUsuario);
        }

        public bool ExisteRutUsuario(string rut)
        {
            Usuario us = new Usuario();
            return us.ExisteRut(rut);
        }

        public bool ExisteEmailUsuario(string email)
        {
            Usuario us = new Usuario();
            return us.ExisteEmail(email);
        }

        public bool ActivarUsuario (int id, string rut)
        {
            Usuario us = new Usuario();
            Sesion se = new Sesion();
            bool activo = us.Activar(id, rut);
            if (activo)
            {
                activo = se.SesionUsuarioNormal(id);
            }
            return activo;
        }

        public bool EsActivoUsuario(int id)
        {
            Usuario us = new Usuario();
            return us.EsActivo(id);
        }

        public bool AgregarSancion(int idUs, DateTime fechaTermino)
        {
            Usuario us = new Usuario();
            return us.agregarSancion(idUs, fechaTermino);
        }

        public bool ExisteSancion(int idUs)
        {
            Usuario us = new Usuario();
            return us.existeSancion(idUs);
        }

        public int DiasAtraso(int idEj)
        {
            Prestamo pr = new Prestamo();
            return pr.DiasAtrasoUltimaSolicitud(idEj);
        }

    }
}

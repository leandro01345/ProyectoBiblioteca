﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Biblioteca.Servicio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IService1
    {

        // TODO: agregue aquí sus operaciones de servicio
        [OperationContract]
        bool Logear(string nomUser, string clave);
        [OperationContract]
        string TipoSesion(string nomUser);
        [OperationContract]
        int IdUsuarioSesion(string nomUser);
        [OperationContract]
        bool UserNameExiste(string nomUser);
        [OperationContract]
        bool AgregarEjemplar(int iddocumento, string estado, string ubicacion);
        [OperationContract]
        bool AgregarDocumento(string titulo, string autor, string anio, string tipo, string categoria, string edicion, string editorial);
        [OperationContract]
        string InfoDocumento(int id);
        [OperationContract]
        bool AgregarUsuario(string rut, string nombres, string apellidos, string telefono, string direccion, bool foto, bool huella, string username, string password, string email);
        [OperationContract]
        int AgregarSolicitud(int idUsuario);
        [OperationContract]
        int AgregarSolicitudFecha(int idUsuario, DateTime fecha);
        [OperationContract]
        bool AgregarDetalleSolicitud(int idEjemplar, int idSolicitud);
        [OperationContract]
        bool AgregarPrestamo(int idEjemplar, string tipoPrestamo, DateTime fechaDevolucion, int idSoli, int idUsu);
        [OperationContract]
        bool DevolucionPrestamo(int idEjemplar);
        [OperationContract]
        int Doc_EjemplarDisponible(int iddoc);
        [OperationContract]
        bool ModificarEjemplar(int idejemplar, int iddocumento, string estado, string ubicacion);
        [OperationContract]
        bool ModificarEjemplarDisponibilidad(int idejemplar, string disponibilidad);
        [OperationContract]
        bool ModificarDocumento(int iddocumento, string titulo, string autor, string anio, string tipo, string categoria, string edicion, string editorial);
        [OperationContract]
        bool ModificarUsuario(int id, string rut, string nombres, string apellidos, string telefono, string direccion, bool activo, bool foto, bool huella);
        [OperationContract]
        bool EliminarEjemplar(int id);
        [OperationContract]
        bool EliminarDocumento(int id);
        [OperationContract]
        bool EliminarUsuario(int id);
        [OperationContract]
        bool RechazarSolicitud(int idSol, int idEj);
        [OperationContract]
        string GetEmailUsuario(int idUsuario);
        [OperationContract]
        string GetRutUsuario(int idUsuario);
        [OperationContract]
        bool ExisteRutUsuario(string rut);
        [OperationContract]
        bool ExisteEmailUsuario(string email);
        [OperationContract]
        bool ActivarUsuario(int id, string rut);
        [OperationContract]
        bool EsActivoUsuario(int id);
        [OperationContract]
        bool AgregarSancion(int idUs, DateTime fechaTermino);
        [OperationContract]
        bool ExisteSancion(int idUs);
        [OperationContract]
        int DiasAtraso(int idEj);
    }


    // Utilice un contrato de datos, como se ilustra en el ejemplo siguiente, para agregar tipos compuestos a las operaciones de servicio.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}

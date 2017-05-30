using System;
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
        bool AgregarEjemplar(int iddocumento, string estado, string ubicacion);
        [OperationContract]
        bool AgregarDocumento(string titulo, string autor, string anio, string tipo, string categoria, string edicion, string editorial);
        [OperationContract]
        bool AgregarUsuario(string rut, string nombres, string apellidos, string telefono, string direccion, bool foto, bool huella);
        [OperationContract]
        bool ModificarEjemplar(int idejemplar, int iddocumento, string estado, string ubicacion);
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Biblioteca.DALC;

namespace Biblioteca.Negocio
{
    public class CommonBC
    {
        private static BibliotecaEntities _modeloBiblioteca;

        public static BibliotecaEntities ModeloBiblioteca
        {
            get
            {
                if (_modeloBiblioteca==null)
                {
                    _modeloBiblioteca = new BibliotecaEntities();
                }
                return _modeloBiblioteca;
            }
        }
    }
}

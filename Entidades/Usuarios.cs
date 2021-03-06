﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;


namespace Entidades
{
    public class Usuarios
    {
        [Key]
        public int UsuariosId { get; set; }
        public string Nombres { get; set; }
        public string NombreUsuario { get; set; }
        public string Contraseña { get; set; }
        public string ConfirmarContraseña { get; set; }       
        public string Cargo { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }

        public Usuarios()
        {
            UsuariosId = 0;
            Nombres = string.Empty;
            NombreUsuario = string.Empty;
            Contraseña = string.Empty;
            ConfirmarContraseña = string.Empty;
            Cargo = string.Empty;
            Email = string.Empty;
            Telefono = string.Empty;
            Celular = string.Empty;
        }

        public Usuarios(int usuariosId, string nombres, string nombreUsuario, string contraseña, string confirmarContraseña, string cargo, string email, string telefono, string celular)
        {
            UsuariosId = usuariosId;
            Nombres = nombres;
            NombreUsuario = nombreUsuario;
            Contraseña = contraseña;
            ConfirmarContraseña = confirmarContraseña;
            Cargo = cargo;
            Email = email;
            Telefono = telefono;
            Celular = celular;
        }
    }
}

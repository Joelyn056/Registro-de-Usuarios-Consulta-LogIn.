using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Linq.Expressions;
using Entidades;

namespace RegistroUsuario.Consultas
{
    public partial class cUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MetodoBuscar();
        }

        private void MetodoBuscar()
        {
            Expression<Func<Usuarios, bool>> filtro = x => true;
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();

            int id;

            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0: //Todo
                    repositorio.GetList(c => true);
                    break;
                case 1: //UsuarioId
                    id = Convert.ToInt32(CriterioTextBox.Text);
                    filtro = c => c.UsuariosId == id;
                    break;
                case 2: //Nombres
                    filtro = c => c.Nombres.Contains(CriterioTextBox.Text);
                    break;
                case 3: //Nombre Usuario
                    filtro = c => c.NombreUsuario.Contains(CriterioTextBox.Text);
                    break;
                case 4: //Contraseña
                    filtro = c => c.Contraseña.Contains(CriterioTextBox.Text);
                    break;
                case 5: //Confirmar Contrase;a
                    filtro = c => c.ConfirmarContraseña.Contains(CriterioTextBox.Text);
                    break;
                case 6: //Cargo
                    filtro = c => c.Cargo.Contains(CriterioTextBox.Text);
                    break;
                case 7: ///  Email
                    filtro = c => c.Email.Contains(CriterioTextBox.Text);
                    break;
                case 8: // Telefono
                    filtro = c => c.Telefono.Contains(CriterioTextBox.Text);
                    break;
                case 9: //Celular
                    filtro = c => c.Celular.Contains(CriterioTextBox.Text);
                    break;

            }

            DatosGridView.DataSource = repositorio.GetList(filtro);
            DatosGridView.DataBind();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            MetodoBuscar();
        }
    }
}
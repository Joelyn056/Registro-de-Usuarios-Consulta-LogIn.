using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using BLL;
using System.Web.Security;

namespace RegistroUsuario.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Usuarios user = new Usuarios();
            BLL.LoginRepositorio repositorio = new LoginRepositorio();

            if(UserTextBox.Text.Length > 0 && PassTextBox.Text.Length > 0)
            {
                if (repositorio.Auntenticar(UserTextBox.Text, PassTextBox.Text))
                {
                    FormsAuthentication.RedirectFromLoginPage(user.NombreUsuario, true);
                }
                else
                    MostrarMensaje(TiposMensaje.Error, "Usuario no existe");
            }

            protected void MostrarMensaje(TiposMensaje tipo, string mensaje)
            {

                ErrorLabel.Text = mensaje;

                if (tipo == TiposMensaje.Success)
                    ErrorLabel.CssClass = "alert-success";
                else
                    ErrorLabel.CssClass = "alert-danger";
            }
        }
    }
}
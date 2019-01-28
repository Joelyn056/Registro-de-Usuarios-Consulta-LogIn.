<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuario.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="card-header text-white text-center bg-primary">
        <h3>Registro de usuarios</h3>
    </div>


    <div class="panel-body">
        <div class="form-horizontal col-md-12" role="form">

            <%--UsuarioID--%>
            <div class="form-group row">
                <label for="UsuarioIdTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">UsuarioId</label>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:TextBox ID="UsuarioIdTextBox" runat="server" placeholder="0" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>
                </div>
                <div class="col-md-1 col-sm-2 col-xs-4">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-primary btn-md" OnClick="BuscarButton_Click" />
                    <span class="fas fa-search"></span>
                </div>
            </div>
        </div>

        <%--Nombres--%>
        <div class="form-group row">
            <label for="NombresTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Nombres</label>
            <div class="col-md-8">
                <asp:TextBox ID="NombresTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

            </div>
           

            <%--  <div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe ingresar su nombre"
                    ControlToValidate="NombresTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>


        <%--Nombre de usuario--%>
        <div class="form-group row">
            <label for="NombreUsuarioTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Nombre de usuario</label>
            <div class="col-md-8">
                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" class="form-control input-sm" Style="font-size: medium"></asp:TextBox>

            </div>
            <%--<div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe ingresar el nombre de usuario"
                    ControlToValidate="NombreUsuarioTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>


        <%--Contraseña--%>
        <div class="form-group row">
            <label for="ContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Contraseña</label>
            <div class="col-md-8">
                <asp:TextBox ID="ContraseñaTextBox" runat="server" class="form-control input-sm" type="password" Style="font-size: medium"></asp:TextBox>

            </div>
            <%--<div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe ingresar la contraseña"
                    ControlToValidate="ContraseñaTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>


        <%--Confirmar Contraseña--%>
        <div class="form-group row">
            <label for="ConfirmarContraseñaTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Confirmar Contraseña</label>
            <div class="col-md-8">
                <asp:TextBox ID="ConfirmarContraseñaTextBox" runat="server" class="form-control input-sm" type="password" Style="font-size: medium"></asp:TextBox>

            </div>
            <%--<div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe confirmar la contraseña"
                    ControlToValidate="ConfirmarContraseñaTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>

        <%--Email--%>
        <div class="form-group row">
            <label for="EmailTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Email</label>
            <div class="col-md-8">
                <asp:TextBox ID="EmailTexbox" runat="server" class="form-control input-sm" type="text" Style="font-size: medium"></asp:TextBox>

            </div>
            <%-- <div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe ingresar el Email"
                    ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>


        <%--Telefono--%>
        <div class="form-group row">
            <label for="TelefonoTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Telefono</label>
            <div class="col-md-8">
                <asp:TextBox ID="TelefonoTextBox" runat="server" class="form-control input-sm" type="Tel" Style="font-size: medium"></asp:TextBox>

            </div>
            <%-- <div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe ingresar el Telefono"
                    ControlToValidate="TelefonoTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>

        <%--Celular--%>
        <div class="form-group row">
            <label for="CelularTextBox" class="col-md-3 control-label input-sm" style="font-size: medium">Celular</label>
            <div class="col-md-8">
                <asp:TextBox ID="CelularTextBox" runat="server" class="form-control input-sm" type="Cel" Style="font-size: medium"></asp:TextBox>

            </div>
            <%-- <div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                    runat="server"
                    Text="*"
                    Display="Dynamic"
                    ErrorMessage="Nombre: Debe ingresar el Celular"
                    ControlToValidate="CelularTextBox">*</asp:RequiredFieldValidator>
            </div>--%>
        </div>


        <%--Cargo--%>
        <div class="form-group row">
            <label for="CargoDropDownList" class="col-md-3 control-label input-sm" style="font-size: medium">Cargo</label>
            <div class="col-md-8">
                <asp:DropDownList ID="CargoDropDownList" runat="server" Class="form-control input-sm" Style="font-size: medium">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

    </div>

    <%--Botones--%>
    <div class="panel">
        <div class="text-center">
            <div class="form-group">
                <asp:Button ID="NuevoButton" runat="server" Text="Nuevo" class="btn btn-primary" OnClick="NuevoButton_Click" />
                <asp:Button ID="GuardarButton" runat="server" Text="Guardar" class="btn btn-primary" OnClick="GuardarButton_Click" />
                <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" class="btn btn-primary" OnClick="EliminarButton_Click" />
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
    </div>



</asp:Content>

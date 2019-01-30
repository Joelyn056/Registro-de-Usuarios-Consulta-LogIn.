<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cUsuario.aspx.cs" Inherits="RegistroUsuario.Consultas.cUsuario" %>

   <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--Encabezado--%>
    <div class="panel" style="background-color:#039BE5">
         <div class="card-header text-white text-center bg-primary">
        <h3>Consulta de usuarios</h3>
    </div>
        <%--<div class="panel-heading" style="font-family: white; font-size: x-large; color: blue">Consulta de Usuarios</div>--%>
    </div>
    <%--Entradas de las consulta--%>
    <div class="form-group">
            <div class="col-md-4">
                    <asp:DropDownList ID="FiltroDropDownList" runat="server" Class="form-control input-sm" style="font-size:medium">
                        <asp:ListItem Selected="True">Todo</asp:ListItem>
                            <asp:ListItem>UsuarioId</asp:ListItem>
                            <asp:ListItem>Nombres</asp:ListItem>
                            <asp:ListItem>Nombre de usuario</asp:ListItem>
                            <asp:ListItem>Cargo</asp:ListItem>
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Telefono</asp:ListItem>
                            <asp:ListItem>Celular</asp:ListItem>
                    </asp:DropDownList>
            </div>
            <div class="col-md-6">
                 <asp:TextBox ID="CriterioTextBox" runat="server" class="form-control input-sm" style="font-size:medium"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-info btn-md" OnClick="BuscarButton_Click" />
            </div>
        </div>

        <%--Fechas para consulta--%>
    <div class="form-group">
        <div class="col-md-12">
                <label for="DesdeTextBox" class="col-md-1 control-label input-sm" style="font-size: medium">Desde</label>
                <div class="col-md-4">
                    <asp:TextBox ID="DesdeTextBox" TextMode="Date" runat="server" class="form-control input-sm" Style="font-size: medium" Visible="true" ></asp:TextBox>
                </div>

                <label for="HastaTextBox" class="col-md-1 control-label input-sm" style="font-size: medium">Hasta</label>
                <div class="col-md-4">
                    <asp:TextBox ID="HastaTextBox" TextMode="Date" runat="server" class="form-control input-sm" Style="font-size: medium" Visible="true" ></asp:TextBox>
                </div>
                <asp:CheckBox ID="FechaCheckBox" runat="server" Checked="True" Visible="False"  />
        </div>
     </div>
    <br/>
    <br />

    <%--Grid--%>
    <div>
        <asp:GridView ID="DatosGridView" runat="server" class="table table-condensed tabled-bordered table-responsive" CellPadding="6" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField ControlStyle-ForeColor="#039BE5"
                        DataNavigateUrlFields="UsuarioId"
                        DataNavigateUrlFormatString="~/Registros/rUsuarios.aspx?Id={0}"
                        Text="Editar">
                    </asp:HyperLinkField>
                </Columns>
                <HeaderStyle BackColor="#039BE5" Font-Bold="true" ForeColor="White" />
                <RowStyle BackColor="#EFF3FF" />
        </asp:GridView>
    </div>
</asp:Content>

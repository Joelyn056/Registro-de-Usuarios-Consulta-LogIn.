<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistroUsuario.Login.Login" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 

    <%--<div class="panel-body">
        <div class="col-lg-12" style="text-align:right">
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-md-4">
                <%--Usuario--%>
                <%--<div class="form-group">
                    <asp:TextBox ID="UsuarioTextBox" placeholder="Usuario" TabIndex="1" class="form-control" runat="server"></asp:TextBox>
                  
                </div>
                <%--Contraseña--%>
                <%--<div class="form-group">
                    <asp:TextBox type="password" ID="ContraseñaTextBox" placeholder="Contraseña" TabIndex="2" class="form-control" runat="server"></asp:TextBox>            
                </div>--%>

              <%--  <hr />
                <%--Botones--%>
                <%--<div class="form-group">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Button ID="LoginButton" runat="server" Text="Login"  class="btn btn-info btn-lg" Width="1112px" OnClick="LoginButton_Click" ValidationGroup="Login"/>
                        </div>--%>
                  <%--  </div>--%>
               <%-- </div>--%--%>>
          <%--  </div>--%>
      <%--  </div>--%>


    <div class="panel-body">
        <div class="col-lg-12" style="text-align:right">
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </div>
        </div>




     <div class="container">
      <div class="row" id="pwd-container">   
          <div class="col-md-4"></div>
          <div class="col-md-4">
              <section class="login-form">             
                  <%--<form id="form" role="Login" runat="server"> --%>                       
                      <asp:TextBox ID="UserTextBox" ToolTip="UserName" Class="form-control input-lg" runat="server"></asp:TextBox>
                      <asp:TextBox ID="PassTextBox" ToolTip="Password" TextMode="Password" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                      <asp:Button ID="SignInButton" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Sign in" OnClick="SignInButton_Click" />
                      <div>
                        <a runat="server" href="~/Registro/rUsuarios.aspx">Create account</a>
                      </div>
                  <%--  </form>--%>
               </section>  
          </div>
          <div class="col-md-4"></div>
      </div>
    </div>


</asp:Content>


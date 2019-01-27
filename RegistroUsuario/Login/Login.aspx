<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistroUsuario.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <%--  <meta name="viewport" content="width=device-width, initial-scale=1">--%>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" />
</head>
<body>
    
     <div class="container">
      <div class="row" id="pwd-container">   
          <div class="col-md-4"></div>
          <div class="col-md-4">
              <section class="login-form">             
                  <form id="form" role="login" runat="server">                        
                      <asp:TextBox ID="UserTextBox" ToolTip="UserName" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                      <asp:TextBox ID="PassTextBox" ToolTip="Password" TextMode="Password" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                      <asp:Button ID="SignInButton" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Sign in" OnClick="SignInButton_Click" />
                      <div>
                        <a runat="server" href="~/Registro/rUsuarios.aspx">Create account</a>
                      </div>
                    </form>
               </section>  
          </div>
          <div class="col-md-4"></div>
      </div>
    </div>



</body>
</html>

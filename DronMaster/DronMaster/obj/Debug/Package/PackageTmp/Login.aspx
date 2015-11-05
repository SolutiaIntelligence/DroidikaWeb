<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DronMaster.Login" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html class="full" lang="es">
    <head>	
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Droidika - Login</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />                
        <link href="bootstrap/css/signin.css" rel="stylesheet" type="text/css" />   
        <link href="bootstrap/css/the-big-picture.css" rel="stylesheet" type="text/css" />   
        <link rel="shortcut icon" href="Images/favicon.png">
    </head>

    <body>    
        <!-- Page Content -->
        <div class="container">
            <img src="Images/Droidika-Identificador.png" class="img-rounded img-responsive center-block" alt="">

              <form class="form-signin" id="form1" runat="server">
                <div class="panel panel-default">
                    <div class="panel-body">                    
                        <h2 class="form-signin-heading center-block">Inicio de sessión</h2>
                        <label for="inputEmail" class="sr-only">Usuario</label>        
                        <asp:TextBox ID="txtUsr" runat="server" MaxLength="50" class="form-control" placeholder="Email" Width="100%"></asp:TextBox>
                        <h3></h3>      
                        <label for="inputPassword" class="sr-only">Contraseña</label>                        
                        <asp:TextBox ID="txtPwd" runat="server" MaxLength="12" class="form-control" placeholder="Contraseña" TextMode="Password" Width="100%"></asp:TextBox>        
                                                  
                        <h3><asp:Label ID="LabelMsg" runat="server" Font-Bold="False" class="label label-danger label-md center-block" role="alert" Width="264px" Visible="False"></asp:Label></h3>            
                        <h3></h3>                       
                        <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-lg btn-warning btn-block" type="submit" OnClick="Button1_Click"/>
                    </div>
                </div>
              </form>           
        </div>
        <!-- Load Scripts-->
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>


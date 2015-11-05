<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CodeGenerator.aspx.cs" Inherits="DronMaster.CodeGenerator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Qr Generator</title>        
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/starter-template/starter-template.css" rel="stylesheet">
    <script src="Bootstrap/js/pdfobject_source.js"></script>
    <script src="./Starter Template for Bootstrap_files/ie-emulation-modes-warning.js"></script><style type="text/css"></style>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Denuncias.aspx">                   
            <span class="glyphicon glyphicon-leaf" aria-hidden="true"></span> 
            Solutia Intelligence
           </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="CodeGenerator.aspx">Generador QR</a></li>          
            <li><a href="Denuncias.aspx">Denuncias</a></li>          
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div class="container">
        <form id="form1" runat="server">
          <div class="starter-template">
            <h1>Generador de Codigo Qr</h1>
              <h1></h1>
            <%--<p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>                                     --%>
              <div class="input-group input-group-lg">
                  <span class="input-group-addon glyphicon glyphicon-align-left" id="basic-addon1"></span>
                  <asp:TextBox ID="txtCode" runat="server" Class="form-control"  placeholder="Introduzca su URL"></asp:TextBox>         
              </div>
            <h3></h3>
            <asp:Button ID="printButton" runat="server" Text="Imprime tu página" OnClientClick="javascript:window.print();" class="btn btn-info btn-lg"/>             
            <h3></h3>
            <asp:Button ID="btnGenerate" runat="server" Text="Genera tu código " OnClick="btnGenerate_Click" class="btn btn-success btn-lg" />
            <h3></h3>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                       <b> ESTE ES CU CODIGO QR</b>
                    </div>
                    <div class="panel-body center-block">                                                                            
                        <h3>Click derecho  en tu código y descárgalo</h3>
                                                                   
                    </div>
                    <div class="row">
				        <div class="col-lg-4">
						    <asp:PlaceHolder ID="plBarCode" runat="server" />  			
				        </div>				
				        <div class="col-lg-8">
					            <div class="panel panel center-block">
                                <asp:Image ID="Image1" runat="server" Width="250" Height="250px" Visible="false" />                                     
                            </div>  
				        </div>								
			        </div>	                                                                                                          
            </div>
        </form>
    </div><!-- /.container -->    
</body>
</html>

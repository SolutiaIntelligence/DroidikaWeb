<%@ Page Title="" Language="C#" MasterPageFile="~/LmontanoPage.master" AutoEventWireup="true" CodeBehind="Denuncias.aspx.cs" Inherits="DronMaster.Denuncias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Denuncias</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"  style="margin-top: 40px">
	    <div class="page-header" class="center-block text-center">
           <h1 class="center-block text-center">Información de la denuncia</h1>
        </div>

         <ul class="nav nav-tabs">	
                <li class="active"><a data-toggle="tab" href="#AltaVenta">Denunciante</a></li>
				<li><a data-toggle="tab" href="#VentaDia">Denunciado</a></li>
				<li><a data-toggle="tab" href="#DetDia">Falta o delito</a></li>
<%--				<li><a data-toggle="tab" href="#GastosAbonos">Gastos y Abonos</a></li>             			              --%>
			  </ul>
	  
            <div class="tab-content"><!-- TabContent -->
			  <!-- Panel 1 Alta venta-->
				<div id="AltaVenta" class="tab-pane fade in active">
					 <div class="panel panel-primary">
					 <div class="panel-heading text-center">Denunciante</div> 
						 <div class="panel-body">                     							
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Nombre</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtNombre" runat="server" type="text" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Apellido Paterno:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtApPat" runat="server" type="text" placeholder="Apellido Paterno" CssClass="form-control"></asp:TextBox>				                   
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Apellido Materno:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtApMat" runat="server" type="text" placeholder="Apellido Materno" CssClass="form-control"></asp:TextBox>							          
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Email:</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtEmail" runat="server" type="email" placeholder="Correo Electrónico" CssClass="form-control"></asp:TextBox>								           										
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Teléfono:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtTel" runat="server" type="tel" placeholder="Teléfono" CssClass="form-control"></asp:TextBox>												                          
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3" >Código Postal:</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtCodigoPostal" runat="server" type="text" placeholder="Código Postal" CssClass="form-control"></asp:TextBox>		
                                    </div>
                                </div>    
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Domicilio:</label>
                                    <div class="col-xs-9">                                
                                        <asp:TextBox ID="txtDomicilio" Rows="3" runat="server" type="text" placeholder="Domicilio" CssClass="form-control"></asp:TextBox>	
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Genero:</label>
                                    <div class="col-xs-2">
                                        <label class="radio-inline">                    
                                            <asp:RadioButton ID="rbMale" runat="server" Text="Masculino" Checked="true"/>
                                        </label>
                                    </div>
                                    <div class="col-xs-2">
                                        <label class="radio-inline">
                                            <asp:RadioButton ID="rbFemale" runat="server" Text="Femenino"/>
                                        </label>
                                    </div>
                                </div>   
                            </form>                   		    								                                                                                                                                                             
							 </div> <!-- Panel 1 body-->
						 </div> <!-- Panel 1 primary-->
                 						
					</div><!-- Panel 1 main tab-->     
				<!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
				<!-- Panel 2 Denunciado-->
				<div id="VentaDia" class="tab-pane fade">
					 <div class="panel panel-primary">
						<div class="panel-heading text-center">Denunciado</div>
						 <div class="panel-body">
						    <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="control-label col-xs-3 text-left">Nombre</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtNombreDen" runat="server" type="text" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Apellido Paterno:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtApPatDen" runat="server" type="text" placeholder="Apellido Paterno" CssClass="form-control"></asp:TextBox>				                   
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Apellido Materno:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtApMatDen" runat="server" type="text" placeholder="Apellido Materno" CssClass="form-control"></asp:TextBox>							          
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Le dicen:</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtLeDicen" runat="server" type="text" placeholder="Le dicen" CssClass="form-control"></asp:TextBox>								           										
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-xs-3">Genero:</label>
                                    <div class="col-xs-2">
                                        <label class="radio-inline">                    
                                            <asp:RadioButton ID="rbMale2" runat="server" Text="Masculino" Checked="true"/>
                                        </label>
                                    </div>
                                    <div class="col-xs-2">
                                        <label class="radio-inline">
                                            <asp:RadioButton ID="rbFemale2" runat="server" Text="Femenino"/>
                                        </label>
                                    </div>
                                </div>                      
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Características físicas y señas particulares:</label>
                                    <div class="col-xs-9">                                
                                        <asp:TextBox ID="txtCaracFisicasDen" Rows="3" runat="server" type="text" placeholder="Características físicas y señas particulares" CssClass="form-control"></asp:TextBox>	
                                    </div>
                                </div>                   
                            </form>      
						</div><!-- Panel 2 body-->                         
					</div> <!-- Panel 2 primary-->           
				</div><!-- Panel 2 main tab-->
				<!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
				<!-- Panel 3 Falta o delito-->
				<div id="DetDia" class="tab-pane fade">
					 <div class="panel panel-primary">
						<div class="panel-heading text-center">Falta o delito</div>
						<div class="panel-body">
						      <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="control-label col-xs-3 text-left">El delito que se comete es:</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtDelitoQue" runat="server" type="text" placeholder="Delito" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Horario:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtHorarioDel" runat="server" type="text" placeholder="Horario en que regularmente realiza los ilícitos" CssClass="form-control"></asp:TextBox>				                   
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Dias:</label>
                                    <div class="col-xs-9">
                                         <asp:TextBox ID="txtDiasDel" runat="server" type="text" placeholder="Dias de la semana en que se comete las faltas o delitos" CssClass="form-control"></asp:TextBox>							          
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Calle:</label>
                                    <div class="col-xs-9">
                                          <asp:TextBox ID="txtCalleDelito" runat="server" type="text" placeholder="Calle" CssClass="form-control"></asp:TextBox>								           										
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-xs-3">Numero Exterior:</label>
                                    <div class="col-xs-2">
                                        <label class="radio-inline">                    
                                            <asp:TextBox ID="txtNumExt" runat="server" type="text" placeholder="Num Exterior" CssClass="form-control"></asp:TextBox>		
                                        </label>
                                    </div>
                                    <div class="col-xs-2">
                                        <label class="radio-inline">                                             
                                              <asp:TextBox ID="txtNumInt" runat="server" type="text" placeholder="Num Interior" CssClass="form-control"></asp:TextBox>		
                                        </label>
                                    </div>
                                </div>                      
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Características físicas y señas particulares:</label>
                                    <div class="col-xs-9">                                
                                        <asp:TextBox ID="txtCaractFis" Rows="3" runat="server" type="text" placeholder="Características" CssClass="form-control"></asp:TextBox>	
                                    </div>
                                </div>         
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Entre la calle</label>
                                    <div class="col-xs-9">                                
                                        <asp:TextBox ID="txtEntreCalle" Rows="3" runat="server" type="text" placeholder="Entre la calle" CssClass="form-control"></asp:TextBox>	
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-3">Y la calle</label>
                                    <div class="col-xs-9">                                
                                        <asp:TextBox ID="txtEntrelaotra" Rows="3" runat="server" type="text" placeholder="y la calle" CssClass="form-control"></asp:TextBox>	
                                    </div>
                                </div>     
                                   <div class="form-group">
                                    <label class="control-label col-xs-3">Características del domicilio:</label>
                                    <div class="col-xs-9">                                
                                        <asp:TextBox ID="txtCarDom" Rows="3" runat="server" type="text" placeholder="Características del domicilio" CssClass="form-control"></asp:TextBox>	
                                    </div>
                                </div>                        
                            </form>               
						</div><!-- Panel 3 body-->                         
					</div> <!-- Panel 3 primary-->           
				</div><!-- Panel 3 main tab-->
				<!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
                <!-- Panel 4 Gastos y Abonos-->
				<div id="GastosAbonos" class="tab-pane fade">
					 <div class="panel panel-primary">
						<div class="panel-heading text-center">GASTOS Y ABONOS</div>
						<div class="panel-body">
						Body                    
						</div><!-- Panel 4 body-->                         
					</div> <!-- Panel 4 primary-->           
				</div><!-- Panel 4 main tab-->
				<!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
			  </div><!-- TabContent -->         
        <br />
    </div><!-- Container -->                       
</asp:Content>


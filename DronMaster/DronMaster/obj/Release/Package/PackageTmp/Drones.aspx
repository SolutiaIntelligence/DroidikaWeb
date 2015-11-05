<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Drones.aspx.cs" Inherits="DronMaster.Drones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Bootstrap/js/jquery.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
		<div class="col-lg-12">
			<div class="page-header text-center">
				<h1>
					Catálogo de Drones <small>By Droidika</small>
				</h1>
			</div>
            <div class="row">
		        <div class="col-md-12">
			        <div class="jumbotron">
                        <asp:Image ID="Image1" runat="server" Height="405px" ImageUrl="~/Images/Solo.jpg" Width="809px" />
			        </div>
		        </div>
	        </div>

			<%--<div class="row">
                <form class="form-horizontal" role="form">
                    <div class="col-md-6">					
					    <div class="form-group">							  		             	       
						    <label for="txtMarca" class="col-sm-2 control-label">
							    Marca
						    </label>
						    <div class="col-sm-10">
							    <asp:TextBox ID="txtMarca" runat="server" MaxLength="10" class="form-control"  placeholder="Marca" ></asp:TextBox> 
						    </div>
					    </div>
                        <br />
					    <div class="form-group">							 
						    <label for="txtModelo" class="col-sm-2 control-label">
							    Modelo
						    </label>
						    <div class="col-sm-10">
								    <asp:TextBox ID="txtModelo" runat="server" MaxLength="50" class="form-control" placeholder="Modelo"></asp:TextBox>
						    </div>
					    </div>												
				    </div>				
				    <div class="col-md-6">					
					<div class="form-group">							  		             	       
						<label for="txtUSD" class="col-sm-2 control-label">
							USD
						</label>
						<div class="col-sm-10">
							<asp:TextBox ID="txtUSD" runat="server" MaxLength="10" class="form-control" placeholder="USD"></asp:TextBox>	        
						</div>
					</div>
					<div class="form-group">							 
						<label for="txtTiempoVuelo" class="col-sm-2 control-label">
							Vuelo
						</label>
						<div class="col-sm-10">
								<asp:TextBox ID="txtTiempoVuelo" runat="server" MaxLength="3" class="form-control"  placeholder="Tiempo de vuelo"></asp:TextBox>
						</div>
					</div>																	
				</div>
                </form>
			</div>--%>

            <h1></h1>
            <%--  Area de botones en la página  --%>
			<%--<div class="btn-group btn-group-md center-block" >				 
				<asp:LinkButton ID="btnNuevo" runat="server" CssClass="btn btn-success"  Visible="true" OnClick="btnNuevo_Click">
		            Agregar&nbsp;<span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
	            </asp:LinkButton>	
                 <asp:LinkButton ID="btnEliminar" runat="server" CssClass="btn btn-danger"  Visible="true" OnClick="btnEliminar_Click">
		            Eliminar&nbsp;<span aria-hidden="true" class="glyphicon glyphicon-minus"></span>
	            </asp:LinkButton>
				  <asp:LinkButton ID="btnModificar" runat="server" CssClass="btn btn-warning"  Visible="true" OnClick="btnModificar_Click">
		            Modificar&nbsp;<span aria-hidden="true" class="glyphicon glyphicon-pencil"></span>
	            </asp:LinkButton>			
			</div>--%>

            <div class="center-block text-center">                                                                        
                <h3><asp:Label ID="lblMensaje" runat="server" Font-Bold="false" class="label label-info label-lg" role="alert"></asp:Label></h3>            
            </div>
			<h1></h1>
            <%--  GridView Catálogo de drones  --%>
            <div class="center-block">
		            <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCatDrones"
                        OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No se han añadido registros."
                        CssClass="table table-hover table-striped" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
                        <Columns>

                            <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Label ID="lblBrand" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtBrand" runat="server" Text='<%# Eval("brand") %>'></asp:TextBox>
                                </EditItemTemplate>

        <ItemStyle Width="150px"></ItemStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Model" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Label ID="lblModel" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtModel" runat="server" Text='<%# Eval("model") %>'></asp:TextBox>
                                </EditItemTemplate>

        <ItemStyle Width="150px"></ItemStyle>
                            </asp:TemplateField>
                    
                            <asp:TemplateField HeaderText="CostUSD" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Label ID="lblCostUSD" runat="server" Text='<%# Eval("costUSD") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCostUSD" runat="server" Text='<%# Eval("costUSD") %>'></asp:TextBox>
                                </EditItemTemplate>

        <ItemStyle Width="150px"></ItemStyle>
                            </asp:TemplateField>
                    
                            <asp:TemplateField HeaderText="Country" ItemStyle-Width="150">
                                <ItemTemplate>
                                    <asp:Label ID="lblFlightTime" runat="server" Text='<%# Eval("flightTime") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtFlightTime" runat="server" Text='<%# Eval("flightTime") %>'></asp:TextBox>
                                </EditItemTemplate>

                            <ItemStyle Width="150px"></ItemStyle>
                            </asp:TemplateField>

                            <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
                                <ItemStyle Width="150px"></ItemStyle>
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>

                        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse"  Class="table table-hover table-striped">
                            <tr>
                                <td style="width: 150px">
                                    <b>Marca:</b><br />
                                    <asp:TextBox ID="txtBrand" runat="server" Width="140" />
                                </td>
                                <td style="width: 150px">
                                    <b>Modelo:</b><br />
                                    <asp:TextBox ID="txtModel" runat="server" Width="140" />
                                </td>
                                 <td style="width: 150px">
                                    <b>USD:</b><br />
                                    <asp:TextBox ID="txtCostUSD" runat="server" Width="140" />
                                </td>
                                <td style="width: 150px">
                                    <b>Tiempo Vuelo:</b><br />
                                    <asp:TextBox ID="txtFlightTime" runat="server" Width="140" />
                                </td>
                                <td style="width: 100px">
                                    <asp:Button ID="btnAdd" class="btn-success" runat="server" Text="Agregar" OnClick="Insert" />
                                </td>                               
                            </tr>
                        </table>
                </div>
	        </div>
		</div>
        <br />
        <br />
        <div class="row">
		<div class="col-md-12">
			<blockquote>
				<p>
					Listado de drones para consumo en app móvil.
				</p> <small>Solutia Intellience<cite>Droidika</cite></small>
			</blockquote>
		</div>
	</div>
</div>
       
</asp:Content>

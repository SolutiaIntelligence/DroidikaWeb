<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cameras.aspx.cs" Inherits="DronMaster.Cameras1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Bootstrap/js/jquery.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="Images/favicon.png">

    <div class="container center-block text-center">
        <div class="row">
            <div class="page-header text-center">
			    <h1>
				    Catálogo de Cámaras <small>By Droidika</small>
			    </h1>
		    </div>
        </div>
        <div class="row">
		    <div class="col-md-12">
			    <div class="img-responsive center-block">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/large_Hero4Black_StandardHousing_0_OB-600x300.jpg" Width="685px" Height="312px"/>
			    </div>
		    </div>
	    </div>
    </div>
    <h1></h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">	
            <div class="center-block text-center">                                                                        
                <h3><asp:Label ID="lblMensaje" runat="server" Font-Bold="false" class="label label-info label-lg" role="alert"></asp:Label></h3>            
            </div>
			
            <%--  GridView Catálogo de Cámaras  --%>
            
     	    <div class="row">
		        <div class="col-md-12">
                   <div style="margin-left:auto; margin-right:auto;  width:810px;"> 

                                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No se han añadido registros." CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                        CssClass="table table-hover table-striped" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                            <Columns>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblBrand" runat="server" Text='<%# Eval("brand") %>' ></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtBrand" runat="server" Text='<%# Eval("brand") %>' width="150px"></asp:TextBox>
                                    </EditItemTemplate>

                                    <ItemStyle Width="150px"></ItemStyle>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Model">
                                    <ItemTemplate>
                                        <asp:Label ID="lblModel" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtModel" runat="server" Text='<%# Eval("model") %>' width="120px"></asp:TextBox>
                                    </EditItemTemplate>

                                    <ItemStyle Width="150px"></ItemStyle>
                                </asp:TemplateField>
                    
                                <asp:TemplateField HeaderText="CostUSD">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCostUSD" runat="server" Text='<%# Eval("costUSD") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCostUSD" runat="server" Text='<%# Eval("costUSD") %>' width="100px"></asp:TextBox>
                                    </EditItemTemplate>

                                    <ItemStyle Width="150px"></ItemStyle>
                                </asp:TemplateField>
                               
                                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="100">
                                    <ItemStyle Width="100px"></ItemStyle>
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

                    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse"  
                            Class="table table-hover table-striped">
                            <tr>
                                <td style="width: 150px">
                                    <b>Marca:</b><br />
                                    <asp:TextBox ID="txtBrand" runat="server" Width="120" />
                                </td>
                                <td style="width: 150px">
                                    <b>Modelo:</b><br />
                                    <asp:TextBox ID="txtModel" runat="server" Width="120" />
                                </td>
                                 <td style="width: 150px">
                                    <b>USD:</b><br />
                                    <asp:TextBox ID="txtCostUSD" runat="server" Width="120" />
                                </td>                               
                                <td style="width: 100px">
                                    <asp:Button ID="btnAdd" class=" btn btn-success" runat="server" Text="Agregar" OnClick="Insert" />
                                </td>                               
                            </tr>
                        </table>

                    </div>		            
		        </div><%-- Col-MD --%>
	        </div><%-- Row --%>
                 
               
        <br />
        <br />
        
		<div class="col-md-12">
			<blockquote>
				<p>
					Listado de cámaras para consumo en app móvil.
				</p> <small>Solutia Intellience<cite>Droidika</cite></small>
			</blockquote>
		</div>
</div>
</asp:Content>

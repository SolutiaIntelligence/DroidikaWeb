<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PilotsCertificate.aspx.cs" Inherits="DronMaster.PilotsCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Bootstrap/js/jquery.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="Images/favicon.png">

     <div class="container center-block text-center">
        <div class="row">
            <div class="page-header text-center">
			    <h1>
				    Certificar Pilotos <small>By Droidika</small>
			    </h1>
		    </div>
        </div>
    </div>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">	
        <div class="center-block text-center">                                                                        
            <h3><asp:Label ID="lblMensaje" runat="server" Font-Bold="false" class="label label-info label-lg" role="alert"></asp:Label></h3>            
        </div>
         <div class="row">
             <div class="col-md-12">
                <div style="margin-left:initial; margin-right:auto;  width:980px;"> 
                    <asp:GridView ID="GV_Pilots" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                            OnRowUpdating="OnRowUpdating" CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                            CssClass="table table-hover table-striped" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                <Columns>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("email") %>' width="220px"></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                    
                                    <asp:TemplateField HeaderText="Nombre">
                                        <ItemTemplate>
                                            <asp:Label ID="lblFstName" runat="server" Text='<%# Eval("fstName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFstName" runat="server" Text='<%# Eval("fstName") %>' width="150px"></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Apellidos">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLstName" runat="server" Text='<%# Eval("lstName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtLstName" runat="server" Text='<%# Eval("lstName") %>' width="150px"></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Certificado">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCert" runat="server" Text='<%# Eval("certificate") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCert" runat="server" Text='<%# Eval("certificate") %>' width="50px"></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:TemplateField>
                               
                                    <asp:TemplateField HeaderText="T. Vuelo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTVuelo" runat="server" Text='<%# Eval("flightTime") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTVuelo" runat="server" Text='<%# Eval("flightTime") %>' width="100px"></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fecha Cert">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCertDate" runat="server" Text='<%# Eval("certificateDate") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCertDate" runat="server" Text='<%# Eval("certificateDate") %>' width="120px"></asp:TextBox>
                                        </EditItemTemplate>

                                        <ItemStyle Width="150px"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" >
                                        <ItemStyle></ItemStyle>
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
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>


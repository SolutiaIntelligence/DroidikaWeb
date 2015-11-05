<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CertificateView.aspx.cs" Inherits="DronMaster.CertificateView" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">    
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Bootstrap/js/jquery.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="Images/favicon.png">

    <div class="container center-block text-center">
        <div class="row">
            <div class="page-header text-center">
			    <h1>
				   	Impresión de certificado <small>By Droidika</small>
			    </h1>
		    </div>
        </div>       
    </div>
    <h1></h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid">
		<div class="col-lg-12">
            <asp:Button ID="btnAccion" runat="server" Text="Carga Reporte" CssClass="btn btn-success" OnClick="btnAccion_Click"/>            
            <rsweb:ReportViewer ID="rvCertificado" runat="server" CssClass="center-block" Width="100%" Height="100%"></rsweb:ReportViewer>
            <h1></h1>
        </div>
    </div>
</asp:Content>

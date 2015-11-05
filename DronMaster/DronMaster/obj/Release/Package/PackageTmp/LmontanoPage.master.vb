Imports System.Data.SqlClient

Partial Class LmontanoPage
    Inherits System.Web.UI.MasterPage
    'Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

	Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init
        'If (Session("Login") = False) Then
        '	Response.Redirect("~/LmLogin.aspx")
        'Else
        '	lblNombre.Text = Session("Name")		
        'End If
	End Sub


    Protected Sub ButtonSalir_Click(sender As Object, e As System.EventArgs) Handles ButtonSalir.Click
        'Session.Abandon()
        'Session.Clear()
        'Session.RemoveAll()
        'Response.Redirect("LMLogin.aspx")
    End Sub

End Class


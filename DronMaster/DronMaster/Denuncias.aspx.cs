using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DronMaster
{
    public partial class Denuncias : System.Web.UI.Page
    {
        string idUsuario ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.PreviousPage.FindControl("TextBox1"); 
            //Response.Redirect("~/UsuariosDatos.aspx?id =" + idUser);
            //if (Request.QueryString["ApellidoPaterno"] == null || Request.QueryString["Nombre"] == null)
            //{
                idUsuario = Request.QueryString["idUser"];
            switch(idUsuario)
            {
                case "1" : llenaCampos_1();
                    break;
                case "2": llenaCampos_2();
                    break;
                case "3": llenaCampos_3();
                    break;
                case "4": llenaCampos_4();
                    break;
            }          
        }
        protected void llenaCampos_1() 
        {
            txtNombre.Text = "Rogelio";
            txtApPat.Text = "Sánchez";
            txtApMat.Text = "Chabolla";
            txtEmail.Text = "rsanchez@mail.com";
            txtTel.Text = "36221452";
            txtCodigoPostal.Text = "44260";
            txtDomicilio.Text = "Lopez Mateos Nortes 400";
            rbMale.Checked = true;            
            //--------------------------
            txtNombreDen.Text = "Ignacio";
            txtApPatDen.Text = "Navarro";
            txtApMatDen.Text = "Mendoza";
            txtLeDicen.Text = "Nacho";
            rbMale.Checked = true;
            txtCaracFisicasDen.Text = "Alto, con barba, pelo negro, gordo, con camisa a cuadros";
            //--------------------------            
            txtDelitoQue.Text = "Robo de gasolina";
            txtHorarioDel.Text = "10 a 11pm";
            txtDiasDel.Text = "Viernes y sabados";
            txtCalleDelito.Text = "Francisco Marquez";
            txtNumExt.Text = "1675";
            txtNumInt.Text = "A";
            txtCaractFis.Text = "Nada";
            txtEntreCalle.Text = "Mártires Irlandeses";
            txtEntrelaotra.Text = "Y Munguía";
            txtCarDom.Text = "Cancel negro, carro aveo blanco, casa tinta";
            
            //--------------------------
        }

        protected void llenaCampos_2()
        {
            txtNombre.Text = "Mauricio";
            txtApPat.Text = "Lizárraga";
            txtApMat.Text = "Martinez";
            txtEmail.Text = "mauricio@mail.com";
            txtTel.Text = "35874511";
            txtCodigoPostal.Text = "44521";
            txtDomicilio.Text = "Patria 7458";
            rbMale.Checked = true;
            //--------------------------
            txtNombreDen.Text = "Lucia";
            txtApPatDen.Text = "Lopez";
            txtApMatDen.Text = "Lupio";
            txtLeDicen.Text = "Tesoro";
            rbFemale2.Checked = true;
            txtCaracFisicasDen.Text = "Piernas largas, delgada, morena, pelo café claro.";
            //--------------------------            
            txtDelitoQue.Text = "Faltas a la moral afuera de mi casa, mis hijos pequeños la han visto";
            txtHorarioDel.Text = "11pm";
            txtDiasDel.Text = "Miercoles y a veces viernes";
            txtCalleDelito.Text = "Caminos del sol";
            txtNumExt.Text = "2685";
            txtNumInt.Text = " ";
            txtCaractFis.Text = "Al lado del oxxo";
            txtEntreCalle.Text = "Colonia roma";
            txtEntrelaotra.Text = "Y grecia";
            txtCarDom.Text = "Casa verde, cancel negro, cupula blanca para carro.";

            //--------------------------
        }
        protected void llenaCampos_3()
        {
            txtNombre.Text = "Maria Guadalupe";
            txtApPat.Text = "Castañeda ";
            txtApMat.Text = "Anton";
            txtEmail.Text = "mariaanton@mail.com";
            txtTel.Text = "87451268";
            txtCodigoPostal.Text = "45660";
            txtDomicilio.Text = "Loma dorada 7854";
            rbFemale.Checked = true;
            //--------------------------
            txtNombreDen.Text = "Juan";
            txtApPatDen.Text = "Arrollo";
            txtApMatDen.Text = "Valenzuela";
            txtLeDicen.Text = "Juancho";
            rbMale2.Checked = true;
            txtCaracFisicasDen.Text = "Gordo, bajito, introvertido, callado, pelo negro, cara redonda.";
            //--------------------------            
            txtDelitoQue.Text = "Se roba mi televisión de paga";
            txtHorarioDel.Text = "de 10 Pm en adelante";
            txtDiasDel.Text = "Fines de semana, viernes a domingo";
            txtCalleDelito.Text = "Colinas del sol";
            txtNumExt.Text = "2587";
            txtNumInt.Text = "Interior 1";
            txtCaractFis.Text = "Nada";
            txtEntreCalle.Text = "Inglaterra";
            txtEntrelaotra.Text = "Patria";
            txtCarDom.Text = "Cancel negro, casa roja, ventanas blancas.";

            //--------------------------
        }
        protected void llenaCampos_4()
        {
            txtNombre.Text = "Ricardo";
            txtApPat.Text = "Plascencia";
            txtApMat.Text = "De la Olla";
            txtEmail.Text = "rplas@mail.com";
            txtTel.Text = "36534542";
            txtCodigoPostal.Text = "44260";
            txtDomicilio.Text = "Lopez Mateos Nortes 400";
            rbMale.Checked = true;
            //--------------------------
            txtNombreDen.Text = "Mario";
            txtApPatDen.Text = "Moreno";
            txtApMatDen.Text = "Godínez";
            txtLeDicen.Text = "mario";
            rbMale2.Checked = true;
            txtCaracFisicasDen.Text = "Guero, formal, alto, ojos verdes";
            //--------------------------            
            txtDelitoQue.Text = "Asalto a mano armado";
            txtHorarioDel.Text = "10 a 11pm";
            txtDiasDel.Text = "Viernes4";
            txtCalleDelito.Text = "Camino andares";
            txtNumExt.Text = "7289";
            txtNumInt.Text = "A";
            txtCaractFis.Text = "Nada";
            txtEntreCalle.Text = "Patria";
            txtEntrelaotra.Text = "Y acueducto";
            txtCarDom.Text = "Cancel negro, carro aveo blanco, casa tinta";

            //--------------------------
        }
     
    }
}
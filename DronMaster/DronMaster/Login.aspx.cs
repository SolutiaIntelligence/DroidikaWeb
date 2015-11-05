using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DronMaster
{
    public partial class Login : System.Web.UI.Page
    {
        DroidikaContextDataContext context = new DroidikaContextDataContext();        
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelMsg.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LabelMsg.Text = "";
            LabelMsg.Visible = false;

            //Session["Login"] = false;
            //Session["Name"] = "";

            if (Session["Name"] != null)
            {
                Session["Login"] = true;
                Session["Menu"] = true;
                Session["BtnSalida"] = true;
                Response.Redirect("Default.aspx");
            }
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Usuario incorrecto";
            }        

            if (txtUsr.Text == "" || txtPwd.Text == "")
            {
                LabelMsg.Text = "Campos Vacios";
            }
            else 
            {
                ValidaUser();
            }

            
        }

        protected bool ValidaUser2()
        {
            try
            {
                using (DroidikaContextDataContext dbContext = new DroidikaContextDataContext())
                {
                    dPilot pilot = dbContext.dPilots.Where(x => x.email == txtUsr.Text && x.password == txtPwd.Text).SingleOrDefault();
                    if (pilot == null)
                    {
                        LabelMsg.Text = "Usuario incorrecto";
                        Session["Name"] = "";
                    }
                    else
                    {
                        Session["Name"] = pilot.fstName + " " + pilot.lstName;
                        Session["ID"] = pilot.id;
                        Session["Login"] = true;
                        txtUsr.Text = "";
                        txtPwd.Text = "";
                        LabelMsg.Visible = true;
                        LabelMsg.Text = "";
                        Response.Redirect("Drones.aspx");
                    }
                }
            }
            catch (Exception ex) 
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = ex.Message;
            }
            return true;
        }

        protected bool ValidaUser()
        {
            try
            {
                using (DroidikaContextDataContext dbContext = new DroidikaContextDataContext())
                {
                    dAdministrator admin = dbContext.dAdministrators.Where(x => x.email == txtUsr.Text && x.password == txtPwd.Text).SingleOrDefault();
                    if (admin == null)
                    {
                        LabelMsg.Text = "Usuario incorrecto";
                        Session["Name"] = "";
                    }
                    else
                    {
                        Session["Name"] = admin.fstName + " " + admin.lstName;
                        Session["ID"] = admin.id;
                        Session["Login"] = true;
                        txtUsr.Text = "";
                        txtPwd.Text = "";
                        LabelMsg.Visible = true;
                        LabelMsg.Text = "";
                        Response.Redirect("Drones.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = ex.Message;
            }
            return true;
        }
    }
}

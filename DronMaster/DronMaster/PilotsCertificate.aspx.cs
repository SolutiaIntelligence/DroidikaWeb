using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DronMaster
{
    public partial class PilotsCertificate : System.Web.UI.Page
    {
protected void Page_Load(object sender, EventArgs e)
        {
            //Revisa la sesíón de login, si es nula te redirecciona a Login
            if (Session["Login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            //Select * from dPilots y asignalo al datagrid
            using (DroidikaContextDataContext context = new DroidikaContextDataContext())
            {
                GV_Pilots.DataSource = from p in context.dPilots
                                       select p;
                GV_Pilots.DataBind();
            }
        }       
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GV_Pilots.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GV_Pilots.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GV_Pilots.Rows[e.RowIndex];
            int idPilot= Convert.ToInt32(GV_Pilots.DataKeys[e.RowIndex].Values[0]);
            string mail = (row.FindControl("txtEmail") as TextBox).Text;
            string name = (row.FindControl("txtFstName") as TextBox).Text;
            string lstName = (row.FindControl("txtLstName") as TextBox).Text;
            string cert = (row.FindControl("txtCert") as TextBox).Text;
            string flightTime = (row.FindControl("txtTVuelo") as TextBox).Text;
            string certDate = (row.FindControl("txtCertDate") as TextBox).Text;
            
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                dPilot pil = (from p in ctx.dPilots
                              where p.id == idPilot
                                select p).FirstOrDefault();
                pil.email = mail;
                pil.fstName = name;
                pil.lstName = lstName;
                pil.certificate = char.Parse(cert);
                pil.flightTime = Int32.Parse(flightTime);                
                pil.certificateDate = DateTime.Parse(certDate);
                ctx.SubmitChanges();
            }
            GV_Pilots.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GV_Pilots.EditIndex)
                {
                    (e.Row.Cells[3].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
                }
            }
            catch (Exception ex)
            {
                string mensaje = ex.Message;
                mensaje = mensaje;
            }
        }
    
    }
}
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DronMaster
{
    public partial class Drones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }            
        }

        //protected void btnNuevo_Click(object sender, EventArgs e)
        //{
        //    using (DroidikaContextDataContext dbContext = new DroidikaContextDataContext())
        //    {
        //        if (txtMarca.Text.Length > 0 && txtModelo.Text.Length > 0 && txtTiempoVuelo.Text.Length > 0 && txtUSD.Text.Length > 0)
        //        {
        //            dCatDrone drone = new dCatDrone();
        //            drone.brand = txtMarca.Text;
        //            drone.model = txtModelo.Text;
        //            decimal d = decimal.Parse(txtUSD.Text);
        //            drone.costUsd = d;
        //            drone.flightTime = Int32.Parse(txtTiempoVuelo.Text);
        //            dbContext.dCatDrones.InsertOnSubmit(drone);
        //            dbContext.SubmitChanges();
        //            txtMarca.Text = "";
        //            txtModelo.Text = "";
        //            txtTiempoVuelo.Text = "";
        //            txtUSD.Text = "";
        //            lblMensaje.Text = "Dron registrado exitosamente";
        //        }
        //        else
        //        {
        //            lblMensaje.Text = "Favor de llenar todos los campos.";
        //        }
        //    }
        //}

        //protected void GV_CatDrones_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        foreach (GridViewRow row in GV_CatDrones.Rows)
        //        {
        //            if (row.RowIndex == GV_CatDrones.SelectedIndex)
        //            {
        //                row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
        //                row.ToolTip = string.Empty;
        //            }
        //            else
        //            {
        //                row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
        //                row.ToolTip = "Click para seleccionar el registro.";
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        protected void OnRowDataBound2(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Selecciona este registro.";
            }
        }

        private void BindGrid()
        {
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                GridView1.DataSource = from drones in ctx.dCatDrones
                                       select drones;
                GridView1.DataBind();
            }
        }

        protected void Insert(object sender, EventArgs e)
        {
             lblMensaje.Text = "";
             if (txtBrand.Text != "" && txtCostUSD.Text != "" && txtModel.Text != "")
             {

                 using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
                 {
                     dCatDrone drone = new dCatDrone
                     {
                         brand = txtBrand.Text,
                         model = txtModel.Text,
                         costUsd = decimal.Parse(txtCostUSD.Text),
                         flightTime = Int32.Parse(txtFlightTime.Text)
                     };
                     ctx.dCatDrones.InsertOnSubmit(drone);
                     ctx.SubmitChanges();
                 }

                 this.BindGrid();
             }
             else 
             {
                 lblMensaje.Text = "Favor de introducir los campos requeridos.";
             }
        }
        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;            
            this.BindGrid();
        }
        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idCatDrones = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                dCatDrone drones = (from c in ctx.dCatDrones
                                    where c.id == idCatDrones
                                     select c).FirstOrDefault();
                ctx.dCatDrones.DeleteOnSubmit(drones);
                ctx.SubmitChanges();
            }
            this.BindGrid();
        }
        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int idCatDrones = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string brand = (row.FindControl("txtBrand") as TextBox).Text;
            string model = (row.FindControl("txtModel") as TextBox).Text;
            string costUsd = (row.FindControl("txtCostUSD") as TextBox).Text;
            string flightTime = (row.FindControl("txtFlightTime") as TextBox).Text;
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                dCatDrone drone = (from c in ctx.dCatDrones
                                      where c.id == idCatDrones
                                     select c).FirstOrDefault();
                drone.brand = brand;
                drone.model = model;
                drone.costUsd = decimal.Parse(costUsd);
                drone.flightTime = Int32.Parse(flightTime);
                ctx.SubmitChanges();
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
                {
                    (e.Row.Cells[4].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
                }
            }
            catch(Exception ex)
            {
                string cosa = ex.Message;
                cosa = cosa;
            }
        }


    }
}
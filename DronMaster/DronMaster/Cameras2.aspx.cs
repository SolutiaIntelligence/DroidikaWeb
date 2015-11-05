using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DronMaster
{
    public partial class Cameras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Login"] == null)
            //{
            //    Response.Redirect("~/Login.aspx");
            //}

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }         
        }

        private void BindGrid()
        {
            using (DroidikaContextDataContext context = new DroidikaContextDataContext())
            {
                GridView1.DataSource = from cams in context.dCatCameras
                                       select cams;
                GridView1.DataBind();
            }
        }

        protected void Insert(object sender, EventArgs e)
        {
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                dCatCamera cam = new dCatCamera
                {
                    brand = txtBrand.Text,
                    model = txtModel.Text,
                    costUsd = decimal.Parse(txtCostUSD.Text),                    
                };
                ctx.dCatCameras.InsertOnSubmit(cam);
                ctx.SubmitChanges();
            }

            this.BindGrid();
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
            int idCatCam = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                dCatCamera cam = (from c in ctx.dCatCameras
                                  where c.idCamera == idCatCam
                                     select c).FirstOrDefault();
                ctx.dCatCameras.DeleteOnSubmit(cam);
                ctx.SubmitChanges();
            }
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int idCatCam = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string brand = (row.FindControl("txtBrand") as TextBox).Text;
            string model = (row.FindControl("txtModel") as TextBox).Text;
            string costUsd = (row.FindControl("txtCostUSD") as TextBox).Text;            
            using (DroidikaContextDataContext ctx = new DroidikaContextDataContext())
            {
                dCatCamera cam = (from c in ctx.dCatCameras
                                      where c.idCamera == idCatCam
                                     select c).FirstOrDefault();
                cam.brand = brand;
                cam.model = model;
                cam.costUsd = decimal.Parse(costUsd);                
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
                    (e.Row.Cells[3].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
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
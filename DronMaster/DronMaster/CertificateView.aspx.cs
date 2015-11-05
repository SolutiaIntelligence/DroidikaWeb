using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace DronMaster
{
    public partial class CertificateView : System.Web.UI.Page
    {
        int idPilot = 0;
        string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                idPilot = Int32.Parse(Request.QueryString["idPilot"]);                  
            }
            catch(Exception ex)
            {
            
            }
        }

        protected void btnAccion_Click(object sender, EventArgs e)
        {
            try
            {
                if (idPilot > 0)
                {
                    using (DroidikaContextDataContext context = new DroidikaContextDataContext())
                    {
                        dPilot piloto = (from p in context.dPilots
                                         where p.id == idPilot
                                         select p).FirstOrDefault();

                        name = piloto.fstName + " " + piloto.lstName;                   
                    }
                }
                //rvCertificado.Reset();                
                rvCertificado.LocalReport.ReportPath = "Certificado.rdlc";
                rvCertificado.LocalReport.Refresh();
            }
            catch (Exception ex){  }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QRCoder;
using System.IO;
using System.Drawing;
using DronMaster;
using System.Net;

namespace DronMaster
{
    public partial class CodeGenerator : System.Web.UI.Page
    {
        string imgUrl = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string code = this.txtCode.Text;
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            imgBarCode.Height = 150;
            imgBarCode.Width = 150;
            using (Bitmap bitMap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                    imgUrl = imgBarCode.ImageUrl;
                }
                plBarCode.Controls.Add(imgBarCode);
                Image1.ImageUrl = imgUrl;
                Image1.Visible = true;
            }
        }

        protected void DescargaImagen()
        {
            DownloadImage di = new DownloadImage(Image1.ImageUrl);
            di.GetImage();
            di.Download();
            di.SaveImage("QR_Barcode1", System.Drawing.Imaging.ImageFormat.Jpeg);
            
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            DescargaImagen();
        }
       
    }

}

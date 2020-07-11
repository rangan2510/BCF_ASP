using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCF_ASP.Data
{
    public partial class archiver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sourceFile = Server.MapPath("appointments.csv");
            // Create a FileInfo  
            System.IO.FileInfo fi = new System.IO.FileInfo(sourceFile);
            // Check if file is there  
            if (fi.Exists)
            {
                var g = Guid.NewGuid().ToString();
                // Move file with a new name. Hence renamed.  
                fi.MoveTo(Server.MapPath("archived_" + g.ToString() + ".csv"));
            }

            // copy back template
            sourceFile = Server.MapPath("~/Data/template.csv");
            string destinationFile = Server.MapPath("~/Data/appointments.csv");
            File.Copy(sourceFile, destinationFile, true);
            Response.Redirect("../Admin.aspx");
        }
    }
}
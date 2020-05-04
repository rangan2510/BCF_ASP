using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCF_ASP
{
    public partial class Activities : Page
    {
        List<string> content = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            GetContent();
            LiteralControl test = new LiteralControl();
            test.Text = String.Join("", content.ToArray());
            plhContent.Controls.Add(test);

        }

        public void GetContent()
        {
            content.Add(@"<div class='row'><button type='button' class='btn btn-primary'>Primary1</button></div>");
            content.Add(@"<div class='row'><button type='button' class='btn btn-primary'>Primary2</button></div>");

            var control = File.ReadAllText(Server.MapPath("~/Controls/bootstrapModal.dat"));
            var textfile = File.ReadAllText(Server.MapPath("~/Assets/Activites/demo1.txt"));
            string _control = control.ToString();
            _control = _control.Replace("[#MODALBODY]",textfile.ToString());
            _control = _control.Replace("[#MODALID]", "mdlDemo1");
            content.Add(_control.ToString());
        }

        
    }
}
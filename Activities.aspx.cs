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
        

        protected void Page_Load(object sender, EventArgs e)
        {


        }


        private static Random random = new Random();
        public static string RandomString(int length)
        {
            const string chars = "abcdefghijklmnopqrstuvwxyz";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        protected void plhContent_Load(object sender, EventArgs e)
        {
            List<string> content = new List<string>();
            string dir = Server.MapPath("~/Assets/Activites/");
            string[] allfiles = Directory.GetFiles(dir, "*.html", SearchOption.AllDirectories);
            var ctrl = File.ReadAllText(Server.MapPath("~/Controls/bootstrapTextContainer.chtml"));
            foreach (var path in allfiles)
            {
                var textfile = File.ReadAllText(path);
                string[] textfile_html = textfile.ToString().Split(new string[] { "<meta />" }, StringSplitOptions.None);
                string ctrl_html = ctrl.ToString();
                var guid = Guid.NewGuid().ToString();
                string modal_id = RandomString(8) + "-" + guid;
                ctrl_html = ctrl_html.Replace("[#MODALBODY]", textfile_html[5]);
                ctrl_html = ctrl_html.Replace("[#MODALID]", modal_id);
                ctrl_html = ctrl_html.Replace("[#CARDTITLE]", textfile_html[1]);
                ctrl_html = ctrl_html.Replace("[#CARDSUBTITLE]", textfile_html[2]);
                ctrl_html = ctrl_html.Replace("[#CARDTEXT]", textfile_html[3]);
                ctrl_html = ctrl_html.Replace("[#CARDIMAGE]", textfile_html[4]);
                content.Add(ctrl_html.ToString());
            }
            LiteralControl activities = new LiteralControl();
            activities.Text = String.Join("\n", content.ToArray());
            plhContent.Controls.Add(activities);
        }
    }
}
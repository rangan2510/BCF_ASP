using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCF_ASP
{
    public partial class Gallery : Page
    {
        private static Random random = new Random();
        public static string RandomString(int length)
        {
            const string chars = "abcdefghijklmnopqrstuvwxyz";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void plhContent_Load(object sender, EventArgs e)
        {
            List<string> content = new List<string>();
            string dir = Server.MapPath("~/Assets/Gallery/");
            string[] allfiles = Directory.GetFiles(dir, "*.*", SearchOption.AllDirectories);
            var ctrl = File.ReadAllText(Server.MapPath("~/Controls/bootstrapGalleryElement.chtml"));
            foreach (var path in allfiles)
            {
                var filename = Path.GetFileName(path);

                string ctrl_html = ctrl.ToString();
                var guid = Guid.NewGuid().ToString();
                string modal_id = RandomString(8) + "-" + guid;
                ctrl_html = ctrl_html.Replace("[#MODALID]", modal_id);
                ctrl_html = ctrl_html.Replace("[#IMAGEPATH]", @"/Assets/Gallery/" + filename);
                content.Add(ctrl_html.ToString());
            }
            LiteralControl gallery = new LiteralControl();
            gallery.Text = String.Join("\n", content.ToArray());
            plhContent.Controls.Add(gallery);

        }
    }
}
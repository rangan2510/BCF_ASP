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
            // TODO
            // get categories
            List<string> outer_content = new List<string>();            

            string dir = Server.MapPath("~/Assets/Gallery/");

            string[] dirs = Directory.GetDirectories(dir, "*", SearchOption.TopDirectoryOnly);

            var wrapr = File.ReadAllText(Server.MapPath("~/Controls/bootstrapGalleryWrapper.chtml")); ;
            var ctrl = File.ReadAllText(Server.MapPath("~/Controls/bootstrapGalleryElement.chtml"));

            LiteralControl gallery = new LiteralControl();

            // loop through all directories
            foreach (var currdir in dirs)                    
            {
                List<string> inner_content = new List<string>();
                string catname = new DirectoryInfo(currdir).Name;
                string[] currentfileset = Directory.GetFiles(currdir, "*.*", SearchOption.AllDirectories);
                int catlen = 0;

                // loop through all images in current directory
                foreach (var path in currentfileset)              
                {
                    var filename = Path.GetFileName(path);
                    string ctrl_html = ctrl.ToString();
                    var guid = Guid.NewGuid().ToString();
                    string modal_id = RandomString(8) + "-" + guid;
                    ctrl_html = ctrl_html.Replace("[#MODALID]", modal_id);
                    ctrl_html = ctrl_html.Replace("[#IMAGEPATH]", @"/Assets/Gallery/" + catname + @"/" + filename);
                    ctrl_html = ctrl_html.Replace("[#FILENAME]", filename);
                    inner_content.Add(ctrl_html.ToString());
                    catlen++;
                }
                String images = String.Join("\n", inner_content.ToArray());

                // add the images inside a wrapper
                string wrapr_html = wrapr.ToString();
                var guidw = Guid.NewGuid().ToString();
                string wrapr_id = RandomString(8) + "-" + guidw;
                wrapr_html = wrapr_html.Replace("[#CATNAME]", catname);
                wrapr_html = wrapr_html.Replace("[#CATLEN]", catlen.ToString() + " images");
                wrapr_html = wrapr_html.Replace("[#COLLAPSEBODY]",images);
                wrapr_html = wrapr_html.Replace("[#COLLAPSEID]", wrapr_id);
                outer_content.Add(wrapr_html.ToString());                
            }
            gallery.Text = String.Join("<hr>", outer_content.ToArray());
            plhContent.Controls.Add(gallery);
        }
    }
}
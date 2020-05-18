using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCF_ASP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var rand = new Random();
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Assets/Images/"));
            var current_hero = filePaths[rand.Next(filePaths.Length)];
            current_hero.ToString();
            string filename = current_hero.Split('\\').Last();
            string path_to_file = "./Assets/Images/" + filename;
            string style_sheet = "background-image:url(\'" + path_to_file + "\'); background-size:cover; height:100%; padding-top:7%; padding-bottom:7%; margin-top:-20px;";
            jt_default_hero.Attributes.Add("style", style_sheet);
        }
    }
}
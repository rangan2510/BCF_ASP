﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCF_ASP
{
    public partial class CancerCenter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<CountryTelCode> TelCodes = InitTelCodes();
            foreach (var code in TelCodes)
            {
                ddlTelCode.Items.Add(code.Pfx + " - (" + code.Iso + ")");
            }
            ddlTelCode.SelectedIndex = 96;

            ddlFirstTime.Items.Add("Yes");
            ddlFirstTime.Items.Add("No");
            ddlFirstTime.SelectedIndex = 0;

            ddlTime.Items.Add("Any time");
            ddlTime.Items.Add("Morning");
            ddlTime.Items.Add("Noon");
            ddlTime.Items.Add("Afternoon");
            ddlTime.SelectedIndex = 0;

            lbChoices.Items.Add("Decide Later");
            lbChoices.Items.Add("John Doe");
            lbChoices.Items.Add("Jane Doe");
            lbChoices.Items.Add("John Smith");
            lbChoices.Items.Add("Jane Doe");
            lbChoices.Items.Add("Alice");
            lbChoices.Items.Add("Bob");
            lbChoices.Items.Add("Kara");
            lbChoices.SelectedIndex = 0;
        }

        protected String commaSeparetedRowBuilder()
        {
            string FirstName = txtName1.Text.ToLower();
            string LastName = txtName2.Text.ToLower();
            string Email = txtMail.Text.ToLower();
            string Phone = ddlTelCode.SelectedValue.Split('-')[0] + txtContact.Text;
            string PhoneAlt = txtContactAlt.Text;
            string Date = txtDate.Text;
            string Time = ddlTime.SelectedValue;
            string OPD = ddlFirstTime.SelectedValue;
            string Doc = lbChoices.SelectedValue;
            string AddedOn = System.DateTime.Now.ToString();

            string row = FirstName + ","
                + LastName + ","
                + Email + ","
                + Phone + ","
                + PhoneAlt + ","
                + Date + ","
                + Time + ","
                + OPD + ","
                + Doc + ","
                + AddedOn;

            return row;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string row = commaSeparetedRowBuilder();
                File.AppendAllText(Server.MapPath("~/Data/appointments.csv"),
                       row + Environment.NewLine);
                plhAppSuccess.Visible = true;
                plhAppDanger.Visible = false;

            }
            catch (Exception ex)
            {
                plhAppSuccess.Visible = false;
                plhAppDanger.Visible = true;
            }            
        }

        public List<CountryTelCode> InitTelCodes()
        {
            List<CountryTelCode> TelCodes = new List<CountryTelCode>
            {
                  new CountryTelCode("+93", "AF"),
        new CountryTelCode("+355", "AL"),
        new CountryTelCode("+213", "DZ"),
        new CountryTelCode("+1-684", "AS"),
        new CountryTelCode("+376", "AD"),
        new CountryTelCode("+244", "AO"),
        new CountryTelCode("+1-264", "AI"),
        new CountryTelCode("+672", "AQ"),
        new CountryTelCode("+1-268", "AG"),
        new CountryTelCode("+54", "AR"),
        new CountryTelCode("+374", "AM"),
        new CountryTelCode("+297", "AW"),
        new CountryTelCode("+61", "AU"),
        new CountryTelCode("+43", "AT"),
        new CountryTelCode("+994", "AZ"),
        new CountryTelCode("+1-242", "BS"),
        new CountryTelCode("+973", "BH"),
        new CountryTelCode("+880", "BD"),
        new CountryTelCode("+1-246", "BB"),
        new CountryTelCode("+375", "BY"),
        new CountryTelCode("+32", "BE"),
        new CountryTelCode("+501", "BZ"),
        new CountryTelCode("+229", "BJ"),
        new CountryTelCode("+1-441", "BM"),
        new CountryTelCode("+975", "BT"),
        new CountryTelCode("+591", "BO"),
        new CountryTelCode("+387", "BA"),
        new CountryTelCode("+267", "BW"),
        new CountryTelCode("+55", "BR"),
        new CountryTelCode("+246", "IO"),
        new CountryTelCode("+1-284", "VG"),
        new CountryTelCode("+673", "BN"),
        new CountryTelCode("+359", "BG"),
        new CountryTelCode("+226", "BF"),
        new CountryTelCode("+257", "BI"),
        new CountryTelCode("+855", "KH"),
        new CountryTelCode("+237", "CM"),
        new CountryTelCode("+1", "CA"),
        new CountryTelCode("+238", "CV"),
        new CountryTelCode("+1-345", "KY"),
        new CountryTelCode("+236", "CF"),
        new CountryTelCode("+235", "TD"),
        new CountryTelCode("+56", "CL"),
        new CountryTelCode("+86", "CN"),
        new CountryTelCode("+61", "CX"),
        new CountryTelCode("+61", "CC"),
        new CountryTelCode("+57", "CO"),
        new CountryTelCode("+269", "KM"),
        new CountryTelCode("+682", "CK"),
        new CountryTelCode("+506", "CR"),
        new CountryTelCode("+385", "HR"),
        new CountryTelCode("+53", "CU"),
        new CountryTelCode("+599", "CW"),
        new CountryTelCode("+357", "CY"),
        new CountryTelCode("+420", "CZ"),
        new CountryTelCode("+243", "CD"),
        new CountryTelCode("+45", "DK"),
        new CountryTelCode("+253", "DJ"),
        new CountryTelCode("+1-767", "DM"),
        new CountryTelCode("+1-809", "DO"),
        new CountryTelCode("+1-829", "DO"),
        new CountryTelCode("+1-849", "DO"),
        new CountryTelCode("+670", "TL"),
        new CountryTelCode("+593", "EC"),
        new CountryTelCode("+20", "EG"),
        new CountryTelCode("+503", "SV"),
        new CountryTelCode("+240", "GQ"),
        new CountryTelCode("+291", "ER"),
        new CountryTelCode("+372", "EE"),
        new CountryTelCode("+251", "ET"),
        new CountryTelCode("+500", "FK"),
        new CountryTelCode("+298", "FO"),
        new CountryTelCode("+679", "FJ"),
        new CountryTelCode("+358", "FI"),
        new CountryTelCode("+33", "FR"),
        new CountryTelCode("+689", "PF"),
        new CountryTelCode("+241", "GA"),
        new CountryTelCode("+220", "GM"),
        new CountryTelCode("+995", "GE"),
        new CountryTelCode("+49", "DE"),
        new CountryTelCode("+233", "GH"),
        new CountryTelCode("+350", "GI"),
        new CountryTelCode("+30", "GR"),
        new CountryTelCode("+299", "GL"),
        new CountryTelCode("+1-473", "GD"),
        new CountryTelCode("+1-671", "GU"),
        new CountryTelCode("+502", "GT"),
        new CountryTelCode("+44-1481", "GG"),
        new CountryTelCode("+224", "GN"),
        new CountryTelCode("+245", "GW"),
        new CountryTelCode("+592", "GY"),
        new CountryTelCode("+509", "HT"),
        new CountryTelCode("+504", "HN"),
        new CountryTelCode("+852", "HK"),
        new CountryTelCode("+36", "HU"),
        new CountryTelCode("+354", "IS"),
        new CountryTelCode("+91", "IN"),
        new CountryTelCode("+62", "ID"),
        new CountryTelCode("+98", "IR"),
        new CountryTelCode("+964", "IQ"),
        new CountryTelCode("+353", "IE"),
        new CountryTelCode("+44-1624", "IM"),
        new CountryTelCode("+972", "IL"),
        new CountryTelCode("+39", "IT"),
        new CountryTelCode("+225", "CI"),
        new CountryTelCode("+1-876", "JM"),
        new CountryTelCode("+81", "JP"),
        new CountryTelCode("+44-1534", "JE"),
        new CountryTelCode("+962", "JO"),
        new CountryTelCode("+7", "KZ"),
        new CountryTelCode("+254", "KE"),
        new CountryTelCode("+686", "KI"),
        new CountryTelCode("+383", "XK"),
        new CountryTelCode("+965", "KW"),
        new CountryTelCode("+996", "KG"),
        new CountryTelCode("+856", "LA"),
        new CountryTelCode("+371", "LV"),
        new CountryTelCode("+961", "LB"),
        new CountryTelCode("+266", "LS"),
        new CountryTelCode("+231", "LR"),
        new CountryTelCode("+218", "LY"),
        new CountryTelCode("+423", "LI"),
        new CountryTelCode("+370", "LT"),
        new CountryTelCode("+352", "LU"),
        new CountryTelCode("+853", "MO"),
        new CountryTelCode("+389", "MK"),
        new CountryTelCode("+261", "MG"),
        new CountryTelCode("+265", "MW"),
        new CountryTelCode("+60", "MY"),
        new CountryTelCode("+960", "MV"),
        new CountryTelCode("+223", "ML"),
        new CountryTelCode("+356", "MT"),
        new CountryTelCode("+692", "MH"),
        new CountryTelCode("+222", "MR"),
        new CountryTelCode("+230", "MU"),
        new CountryTelCode("+262", "YT"),
        new CountryTelCode("+52", "MX"),
        new CountryTelCode("+691", "FM"),
        new CountryTelCode("+373", "MD"),
        new CountryTelCode("+377", "MC"),
        new CountryTelCode("+976", "MN"),
        new CountryTelCode("+382", "ME"),
        new CountryTelCode("+1-664", "MS"),
        new CountryTelCode("+212", "MA"),
        new CountryTelCode("+258", "MZ"),
        new CountryTelCode("+95", "MM"),
        new CountryTelCode("+264", "NA"),
        new CountryTelCode("+674", "NR"),
        new CountryTelCode("+977", "NP"),
        new CountryTelCode("+31", "NL"),
        new CountryTelCode("+599", "AN"),
        new CountryTelCode("+687", "NC"),
        new CountryTelCode("+64", "NZ"),
        new CountryTelCode("+505", "NI"),
        new CountryTelCode("+227", "NE"),
        new CountryTelCode("+234", "NG"),
        new CountryTelCode("+683", "NU"),
        new CountryTelCode("+850", "KP"),
        new CountryTelCode("+1-670", "MP"),
        new CountryTelCode("+47", "NO"),
        new CountryTelCode("+968", "OM"),
        new CountryTelCode("+92", "PK"),
        new CountryTelCode("+680", "PW"),
        new CountryTelCode("+970", "PS"),
        new CountryTelCode("+507", "PA"),
        new CountryTelCode("+675", "PG"),
        new CountryTelCode("+595", "PY"),
        new CountryTelCode("+51", "PE"),
        new CountryTelCode("+63", "PH"),
        new CountryTelCode("+64", "PN"),
        new CountryTelCode("+48", "PL"),
        new CountryTelCode("+351", "PT"),
        new CountryTelCode("+1-787", "PR"),
        new CountryTelCode("+1-939", "PR"),
        new CountryTelCode("+974", "QA"),
        new CountryTelCode("+242", "CG"),
        new CountryTelCode("+262", "RE"),
        new CountryTelCode("+40", "RO"),
        new CountryTelCode("+7", "RU"),
        new CountryTelCode("+250", "RW"),
        new CountryTelCode("+590", "BL"),
        new CountryTelCode("+290", "SH"),
        new CountryTelCode("+1-869", "KN"),
        new CountryTelCode("+1-758", "LC"),
        new CountryTelCode("+590", "MF"),
        new CountryTelCode("+508", "PM"),
        new CountryTelCode("+1-784", "VC"),
        new CountryTelCode("+685", "WS"),
        new CountryTelCode("+378", "SM"),
        new CountryTelCode("+239", "ST"),
        new CountryTelCode("+966", "SA"),
        new CountryTelCode("+221", "SN"),
        new CountryTelCode("+381", "RS"),
        new CountryTelCode("+248", "SC"),
        new CountryTelCode("+232", "SL"),
        new CountryTelCode("+65", "SG"),
        new CountryTelCode("+1-721", "SX"),
        new CountryTelCode("+421", "SK"),
        new CountryTelCode("+386", "SI"),
        new CountryTelCode("+677", "SB"),
        new CountryTelCode("+252", "SO"),
        new CountryTelCode("+27", "ZA"),
        new CountryTelCode("+82", "KR"),
        new CountryTelCode("+211", "SS"),
        new CountryTelCode("+34", "ES"),
        new CountryTelCode("+94", "LK"),
        new CountryTelCode("+249", "SD"),
        new CountryTelCode("+597", "SR"),
        new CountryTelCode("+47", "SJ"),
        new CountryTelCode("+268", "SZ"),
        new CountryTelCode("+46", "SE"),
        new CountryTelCode("+41", "CH"),
        new CountryTelCode("+963", "SY"),
        new CountryTelCode("+886", "TW"),
        new CountryTelCode("+992", "TJ"),
        new CountryTelCode("+255", "TZ"),
        new CountryTelCode("+66", "TH"),
        new CountryTelCode("+228", "TG"),
        new CountryTelCode("+690", "TK"),
        new CountryTelCode("+676", "TO"),
        new CountryTelCode("+1-868", "TT"),
        new CountryTelCode("+216", "TN"),
        new CountryTelCode("+90", "TR"),
        new CountryTelCode("+993", "TM"),
        new CountryTelCode("+1-649", "TC"),
        new CountryTelCode("+688", "TV"),
        new CountryTelCode("+1-340", "VI"),
        new CountryTelCode("+256", "UG"),
        new CountryTelCode("+380", "UA"),
        new CountryTelCode("+971", "AE"),
        new CountryTelCode("+44", "GB"),
        new CountryTelCode("+1", "US"),
        new CountryTelCode("+598", "UY"),
        new CountryTelCode("+998", "UZ"),
        new CountryTelCode("+678", "VU"),
        new CountryTelCode("+379", "VA"),
        new CountryTelCode("+58", "VE"),
        new CountryTelCode("+84", "VN"),
        new CountryTelCode("+681", "WF"),
        new CountryTelCode("+212", "EH"),
        new CountryTelCode("+967", "YE"),
        new CountryTelCode("+260", "ZM"),
        new CountryTelCode("+263", "ZW"),
            };
            return TelCodes;

        }
    }


    public class CountryTelCode
    {
        public string Pfx { get; set; }
        public string Iso { get; set; }
        public int Priority { get; set; }

        public CountryTelCode(string pfx, string iso, int priority = 0)
        {
            Pfx = pfx;
            Iso = iso;
            Priority = priority;
        }
    }
}

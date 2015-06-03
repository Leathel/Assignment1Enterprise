using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseAssignment1
{
    public partial class panel : System.Web.UI.UserControl
    {
        //Just the get methods for the panel
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public int getWin
        {
            get
            {
                return Convert.ToInt16(rblWinLoss.SelectedValue.ToString());
            }
        }

        public int getScored
        {
            get
            {
                return Int32.Parse(txtScored.Text);
            }
        }

        public int getAllowed
        {
            get
            {
                return Convert.ToInt16(txtAllowed.Text);
            }
        }
        public int getSpectator
        {
            get
            {
                return Convert.ToInt16(txtSpectator.Text);
            }
        }

       

     
    }
}
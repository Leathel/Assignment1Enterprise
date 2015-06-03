using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseAssignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        //Most of the logic goes here, on submit, ofcourse.
        protected void btnCalcTotals_Click(object sender, EventArgs e)
        {
            // put the panels in an array
            panel[] Panels = new panel[4]{panel1, panel2, panel3, panel4};
            //declare dem vars
            decimal winTotal =0;
            decimal lossTotal =0;
            int totalScore =0;
            int totalAllowed = 0;
            int totalAttendance = 0;
            //Loop through the panels
            foreach(panel panel in Panels)
            {
                // do those checks
                if(panel.getWin == 1)
                {
                    winTotal++;
                }
                else
                {
                    lossTotal++;
                }
                totalScore += panel.getScored;
                totalAllowed += panel.getAllowed;
                totalAttendance += panel.getSpectator;

            }
            // set the labels to what they need to be
             lblWins.Text = winTotal.ToString();
             lblLosses.Text = lossTotal.ToString();

             lblWinPercent.Text = Convert.ToDecimal(winTotal / lossTotal).ToString();
             lblPointsScored.Text = totalScore.ToString();
             lblPointsAllowed.Text = totalAllowed.ToString();
             lblPointsDiff.Text = (totalScore - totalAllowed).ToString();
             lblAttendance.Text = totalAttendance.ToString();
             lblAverageAttendance.Text = ((totalAttendance / 4).ToString());


        }

        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}
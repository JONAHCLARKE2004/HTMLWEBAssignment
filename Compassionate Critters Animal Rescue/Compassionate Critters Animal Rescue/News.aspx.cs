using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml.Linq;
using System.Text;

namespace Compassionate_Critters_Animal_Rescue
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadBlog();
        }

        protected void loadBlog()
        {

            String[] arrBlog = File.ReadAllLines(Server.MapPath("\\UserUploads\\CommunityBlog.txt"));

            txtBlog.Text = "";

            foreach (string line in arrBlog)
            {
                txtBlog.Text += line;
                txtBlog.Text += "\n";
            }


        }


        protected void txtBlog_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            txtBlog.Text += txtName.Text + "  >>>  " + DateTime.Now.ToShortDateString() + "  >>>  " + txtEntry.Text + "\n";
            txtEntry.Text = "  ";

            File.WriteAllText(Server.MapPath("\\UserUploads\\CommunityBlog.txt"), txtBlog.Text);

      
        }

        protected void calEvent_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = this.calEvent.SelectedDate;
            string eventDescription = "";

            
            if (selectedDate.Month == 12 && selectedDate.Day == 25) 
            {
                eventDescription = "Christmas Adoption Event";
            }
            else if (selectedDate.Month == 1 && selectedDate.Day == 1) 
            {
                eventDescription = "New Year's Day Meet Up";
            }
            else if (selectedDate.Month == 3 && selectedDate.Day == 15)
            {
                eventDescription = "Animal Meet Up";
            }
            else if (selectedDate.Month == 4 && selectedDate.Day == 5)
            {
                eventDescription = "Charity Fundraising Gala";
            }



            if (!string.IsNullOrEmpty(eventDescription))
            {
                this.lblDisplayEvent.Text = eventDescription;
            }
            else
            {
                this.lblDisplayEvent.Text = "No events on this day";
            }



        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(txtName.Text))
            {
                
            }
        }
    }
}
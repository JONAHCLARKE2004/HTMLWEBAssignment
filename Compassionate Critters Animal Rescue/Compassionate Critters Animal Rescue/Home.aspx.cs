using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Compassionate_Critters_Animal_Rescue
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in 
                if (Session["CurrentUser"] != null)
                {
                    lblCurrentUser.Text = Session["CurrentUser"].ToString();
                    imgUploadedProfileImage.ImageUrl = Session["ProfileImagePath"].ToString();
                    imgUploadedProfileImage.Visible = true;
                }
            }
        }

        protected void txbLoginPassword_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void txbSignUpPassword_TextChanged(object sender, EventArgs e)
        {
            TextBox txbSignUpPassword = (TextBox)sender;

            int textLength = txbSignUpPassword.Text.Length;

            txbSignUpPassword.Text = new string('*', textLength);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (this.txbLoginUsername.Text.Trim().Length != 0)
            {
                this.lblCurrentUser.Text = " " + this.txbLoginUsername.Text;
            }
            else
            {
                this.lblCurrentUser.Text = "No user logged in";
            }

          //  Session["CurrentUser"] = txbLoginUsername.Text;
          //  Session["ProfileImagePath"] = ""; // Set the profile image path accordingly
                                              // Redirect to Home.aspx or refresh the page
         //   Response.Redirect(Request.RawUrl);

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            //if (this.txbSignUpUsername.Text.Trim().Length != 0)
            //{
            //    this.lblCurrentUser.Text = " " + this.txbSignUpUsername.Text;
            //}
            //else
            //{
            //    this.lblCurrentUser.Text = "No user logged in";
            //}
        }

        protected void rdbShowLoginPassword_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void ckbShowLoginPassword_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnProfileImageUpload_Click(object sender, EventArgs e)
        {
            if (fulProfileImage.HasFile)
            {
                try
                {
                 
                    string folderPath = Server.MapPath("~/Uploads/");
                    string fileName = Path.GetFileName(fulProfileImage.FileName);
                    string filePath = Path.Combine(folderPath, fileName);
                    fulProfileImage.SaveAs(filePath);

                   
                    imgUploadedProfileImage.ImageUrl = "~/Uploads/" + fileName;
                    imgUploadedProfileImage.Visible = true;

             
                }
                catch// (Exception ex)
                {
                   
                }
            }

           // Session["ProfileImagePath"] = "path/to/uploaded/image.jpg"; // Set the actual path
           // Response.Redirect(Request.RawUrl);

        }

        protected void txbSignUpPassword_TextChanged1(object sender, EventArgs e)
        {
            
                TextBox txbSignUpPassword = (TextBox)sender;

                int textLength = txbSignUpPassword.Text.Length;

                txbSignUpPassword.Text = new string('*', textLength);
            

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void txbLoginUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
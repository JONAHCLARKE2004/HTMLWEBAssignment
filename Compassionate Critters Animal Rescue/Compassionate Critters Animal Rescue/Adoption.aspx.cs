using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace Compassionate_Critters_Animal_Rescue
{
    public partial class Adoption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = new DataSet();

                ds.ReadXml(Server.MapPath("Pets.xml"));

                gvAvailablePets.DataSource = ds.Tables[0];
                gvAvailablePets.DataBind();

                Session["dsPets"] = ds;

                

            }


        }


        protected void gvAvailablePets_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected row
            //GridViewRow selectedRow = gvAvailablePets.SelectedRow;

            
            string breed = gvAvailablePets.SelectedRow.Cells[1].Text;
            string species = gvAvailablePets.SelectedRow.Cells[2].Text;
            string name = gvAvailablePets.SelectedRow.Cells[3].Text;

            
           // string animalType = "";
            //updateImage(animalType);

            // Show the inquiry form
            //showInquiryForm(name, animalType);


            string petName = gvAvailablePets.SelectedRow.Cells[1].Text;

            lblOutput.Text = breed + " " + species + " " + name;

            string data = "";

            DataSet ds = (DataSet)Session["dsPets"];
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                data += row["name"].ToString();

                if (row["name"].ToString() == name)   //petName.Equals(row["name"].ToString(), StringComparison.OrdinalIgnoreCase)  //row["name"].ToString()
                {
                    imgAdoptions.ImageUrl = row["imageUrl"].ToString();
                   // lblOutput.BackColor = Color.Aqua;
                    
                }
                
            }


          //  lblOutput.Text = data;

        }

        private void showInquiryForm(string name, string animalType)
        {
            
        }

        protected void ddlPets_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void ddlPets_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void ddlPets_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsPets"];
            DataView dv = new DataView(ds.Tables[0]);

            if (ddlTypes.SelectedIndex != 0)
            {
                dv.RowFilter = "species = '" + ddlTypes.Text + "'";
            }
            else
            {
                dv.RowFilter = "species like '%'";
            }

            gvAvailablePets.DataSource = dv;
            gvAvailablePets.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //DataSet ds = (DataSet)Session["dsPets"];
            //DataView dv = new DataView(ds.Tables[0]);

            //dv.RowFilter = "name like '" + txtSearch.Text + "%'";
            

            //if (ddlTypes.SelectedIndex != 0)
            //{
            //    dv.RowFilter = "name like '" + txtSearch.Text + "%' and species = '"
            //        + ddlTypes.Text + "'";
            //}

            //gvAvailablePets.DataSource = dv;
            //gvAvailablePets.DataBind();
        }
    }

}
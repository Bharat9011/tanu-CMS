﻿using System;
using taun_CMS.DataAssists;

namespace taun_CMS
{
    public partial class LginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginUserName_Click(object sender, EventArgs e)
        {
            DataController controller = new DataController();
            var type = controller.CheckUser(loginEmail.Text, loginPassword.Text);

            if(type.Item1 == "Admin")
            {
                Response.Redirect("~/Admin/DashBoard.aspx");
            } else if(type.Item1 == "receptionist")
            {
                Response.Redirect("~/receptionist/DoctorHome.aspx");
            } else if (type.Item1 == "Patient")
            {
                Response.Redirect("~/Patient/PatientHome.aspx");
            } else if( type.Item1 == "none")
            {
                Response.Write("<script>alert('Account not found! try again');</script>");
            }

        }
    }
}
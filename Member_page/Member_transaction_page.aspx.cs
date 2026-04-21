using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking_member_page
{
    public partial class Member_Deposit_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Transaction_type_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateTransactionForm();
        }

        private void UpdateTransactionForm()
        {
            string selectedType = Transaction_type_dropdown.SelectedValue;

            if (selectedType == "Transfer")
            {
                Transfer_panel.Visible = true;
                Transaction_submit_btn.Text = "Submit Transfer";
            }
            else if (selectedType == "Deposit")
            {
                Transfer_panel.Visible = false;
                Transaction_submit_btn.Text = "Submit Deposit";
            }
            else if (selectedType == "Withdraw")
            {
                Transfer_panel.Visible = false;
                Transaction_submit_btn.Text = "Submit Withdrawal";
            }
        }
    }
}
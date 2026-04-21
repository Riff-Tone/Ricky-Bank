using System;
using System.Data;

namespace Banking_member_page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // just as a place holder to load placeholder data
            LoadPageData();
        }

        private void LoadPageData()
        {
            LoadMemberInfo();
            LoadTransactionTable();
        }

        private void LoadMemberInfo()
        {
            Member_page_name.Text = "Anon";
            Member_page_balance.Text = "$420,698.67";
        }

        private void LoadTransactionTable()
        {
            DataTable dt = new DataTable();

            // add the columns
            dt.Columns.Add("Date");
            dt.Columns.Add("TransactionType");
            dt.Columns.Add("Amount");
            dt.Columns.Add("Description");

            // add the place holder data 
            dt.Rows.Add("04/15/2026", "Deposit", "$500.00","");
            dt.Rows.Add("04/16/2026", "Withdraw", "$120.00","");
            dt.Rows.Add("04/16/2026", "transfer", "$120.00", "");
            dt.Rows.Add("04/18/2026", "onlyfans", "$870.00","");


            Member_transaction_table.DataSource = dt;
            Member_transaction_table.DataBind();
        }
        
    }
}
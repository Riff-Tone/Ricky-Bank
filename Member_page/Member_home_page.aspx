<%@ Page Title="Member Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member_home_page.aspx.cs" Inherits="Banking_member_page.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .member-summary {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #f8f9fb;
            border: 1px solid #e2e2e2;
            border-radius: 14px;
            padding: 24px 30px;
            margin-bottom: 30px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.06);
        }

        .member-left,
        .member-right {
            display: flex;
            flex-direction: column;
        }

        .member-left {
            text-align: left;
        }

        .member-right {
            text-align: right;
        }

        .member-label {
            font-size: 16px;
            color: #666;
            margin-bottom: 6px;
        }

        .member-value {
            font-size: 32px;
            font-weight: bold;
            color: #222;
        }

        .table-section {
            background-color: #ffffff;
            border: 1px solid #e2e2e2;
            border-radius: 14px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }

        .grid-modern {
            width: 100%;
            border-collapse: collapse;
        }

        .grid-modern th {
            background-color: #222;
            color: white;
            padding: 12px;
            text-align: left;
            font-size: 15px;
        }

        .grid-modern td {
            padding: 12px;
            border-bottom: 1px solid #e8e8e8;
            color: #333;
            font-size: 14px;
        }

        .grid-modern tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .grid-modern tr:hover {
            background-color: #f1f5ff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="member-summary">
        <div class="member-left">
            <asp:Label ID="Member_page_name_label" runat="server" Text="Member Name" CssClass="member-label"></asp:Label>
            <asp:Label ID="Member_page_name" runat="server" Text="" CssClass="member-value"></asp:Label>
        </div>

        <div class="member-right">
            <asp:Label ID="Member_page_balance_txt" runat="server" Text="Current Balance" CssClass="member-label"></asp:Label>
            <asp:Label ID="Member_page_balance" runat="server" Text="" CssClass="member-value"></asp:Label>
        </div>
    </div>

    <div class="table-section">
        <asp:GridView ID="Member_transaction_table"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="grid-modern"
            GridLines="None">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" />
                <asp:BoundField DataField="TransactionType" HeaderText="Transaction Type" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
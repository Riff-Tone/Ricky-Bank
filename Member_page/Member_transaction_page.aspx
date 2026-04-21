<%@ Page Title="Transaction" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member_transaction_page.aspx.cs" Inherits="Banking_member_page.Member_Deposit_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .transaction-page {
            min-height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .transaction-card {
            width: 100%;
            max-width: 500px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 16px;
            padding: 32px;
            box-shadow: 0 4px 14px rgba(0, 0, 0, 0.08);
        }

        .transaction-title {
            font-size: 28px;
            font-weight: bold;
            color: #222;
            margin-bottom: 8px;
        }

        .transaction-subtitle {
            font-size: 14px;
            color: #666;
            margin-bottom: 24px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            font-size: 15px;
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
        }

        .form-input,
        .form-select {
            width: 100%;
            box-sizing: border-box;
            padding: 12px 14px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            outline: none;
            background-color: #fff;
        }

        .form-input:focus,
        .form-select:focus {
            border-color: #4a90e2;
        }

        .btn-submit {
            width: 100%;
            background-color: #222;
            color: white;
            border: none;
            padding: 12px 16px;
            border-radius: 10px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .btn-submit:hover {
            background-color: #444;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="transaction-page">
        <div class="transaction-card">
            <div class="transaction-title">Make a Transaction</div>
            <div class="transaction-subtitle">Select the transaction type and enter the required information.</div>

            <div class="form-group">
                <label class="form-label" for="Transaction_type_dropdown">Transaction Type</label>
                <asp:DropDownList
                    ID="Transaction_type_dropdown"
                    runat="server"
                    CssClass="form-select"
                    AutoPostBack="true"
                    OnSelectedIndexChanged="Transaction_type_dropdown_SelectedIndexChanged">
                    <asp:ListItem Text="Deposit" Value="Deposit"></asp:ListItem>
                    <asp:ListItem Text="Withdraw" Value="Withdraw"></asp:ListItem>
                    <asp:ListItem Text="Transfer" Value="Transfer"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label class="form-label" for="Transaction_amount_input">Amount</label>
                <asp:TextBox ID="Transaction_amount_input" runat="server" CssClass="form-input" placeholder="$00.00"></asp:TextBox>

                <label class="form-label" for="Transaction_amount_input">Memo</label>
                <asp:TextBox ID="Memo_txtbix" runat="server" CssClass="form-input"></asp:TextBox>
            </div>

            <asp:Panel ID="Transfer_panel" runat="server" Visible="false">
                <div class="form-group">
                    <label class="form-label" for="Transfer_account_input">Transfer To Account</label>
                    <asp:TextBox ID="Transfer_account_input" runat="server" CssClass="form-input"></asp:TextBox>
                </div>
            </asp:Panel>

            <asp:Button ID="Transaction_submit_btn" runat="server" Text="Submit Transaction" CssClass="btn-submit" />
        </div>
    </div>
</asp:Content>
<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Login_signin_page.Login_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .signup-page {
            min-height: 70vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .signup-card {
            width: 100%;
            max-width: 420px;
            background-color: #ffffff;
            border: 1px solid #d9d9d9;
            border-radius: 6px;
            padding: 36px 28px 24px 28px;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.08);
        }

        .signup-title {
            text-align: center;
            font-size: 48px;
            font-weight: 300;
            color: #222;
            margin-bottom: 8px;
        }

        .signup-subtitle {
            text-align: center;
            font-size: 14px;
            color: #444;
            margin-bottom: 36px;
        }

        .form-group {
            margin-bottom: 28px;
        }

        .form-input {
            width: 100%;
            box-sizing: border-box;
            border: none;
            border-bottom: 1px solid #bfbfbf;
            padding: 10px 0;
            font-size: 18px;
            font-family: Arial, Helvetica, sans-serif;
            outline: none;
            background-color: transparent;
        }

        .form-input:focus {
            border-bottom: 1px solid #1f73d8;
        }

        .signup-btn {
            width: 100%;
            background-color: #1f73d8;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 14px 16px;
            font-size: 18px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            cursor: pointer;
            margin-top: 8px;
        }

        .signup-btn:hover {
            background-color: #185fb3;
        }

        .remember-row {
            margin-top: 18px;
            margin-bottom: 28px;
            display: flex;
            align-items: center;
            gap: 8px;
            color: #222;
            font-size: 16px;
        }

        .bottom-text {
            text-align: center;
            margin-top: 18px;
            font-size: 15px;
            color: #555;
        }

        .bottom-text a {
            color: #1f73d8;
            text-decoration: none;
            font-weight: bold;
        }

        .bottom-text a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="signup-page">
        <div class="signup-card">
            <div class="signup-title">Sign up</div>
            <div class="signup-subtitle">Sign up to continue</div>

            <div class="form-group">
                <asp:TextBox ID="Signup_name_input" runat="server" CssClass="form-input" placeholder="Name"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="Signup_email_input" runat="server" CssClass="form-input" TextMode="Email" placeholder="Email"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:TextBox ID="Signup_password_input" runat="server" CssClass="form-input" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>

            <asp:Button ID="Signup_btn" runat="server" Text="Sign up" CssClass="signup-btn" />


            <div class="bottom-text">
                Already have an account?
                <a runat="server" href="~/Default.aspx">Sign in</a>
            </div>
        </div>
    </div>
</asp:Content>
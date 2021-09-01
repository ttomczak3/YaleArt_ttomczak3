<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="YaleArt_ttomczak3.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="row">
        <h2>CONTACT US!</h2>
        <section class="item">
            <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is Required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblDate" runat="server" Text="Date: "></asp:Label>
            <asp:TextBox ID="txtDate" runat="server" style="margin-left: 0px" TextMode="Date" Width="157px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Date is Required" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is Required" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="42px" Width="162px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is Required" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="128px" OnClick="btnSubmit_Click" />
        </section>
    </section>
    <section class="row">
        <section class="item">
            <asp:ImageButton ID="imgButton" runat="server" ImageUrl="~/images/showYourSupport.png" OnClick="btnSupport_Click" CausesValidation="False" />
            <br />
            <br />
            <span id="support" runat="server"></span>
        </section>
    </section>
</asp:Content>

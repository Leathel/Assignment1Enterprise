<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="panel.ascx.cs" Inherits="EnterpriseAssignment1.panel" %>
<div>
    <asp:RadioButtonList ID="rblWinLoss" runat="server">
        <asp:ListItem Value="1" Text="Win"></asp:ListItem>
        <asp:ListItem Value="0" Text="Loss"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please choose one" Style="color: red" Display="Dynamic" ControlToValidate="rblWinLoss" />
    <%-- The Score Secion of the label --%>
    <label for="lblScored">Scored: </label>
    <asp:Label ID="lblScored" runat="server" />
    <asp:TextBox ID="txtScored" runat="server" ></asp:TextBox>
    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
            ControlToValidate="txtScored" ErrorMessage="Value must be a whole number" Style="color: red" Display="Dynamic" />
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter a number" Style="color: red" Display="Dynamic" ControlToValidate="txtScored" />
    <%--/////// The Allowed Section///////--%>
    <br />
    <label for="lblAllowed">Allowed: </label>
    <asp:Label ID="lblAllowed" runat="server" />
    <asp:TextBox ID="txtAllowed" runat="server"></asp:TextBox>
    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
            ControlToValidate="txtAllowed" ErrorMessage="Value must be a whole number" Style="color: red" Display="Dynamic" />
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter a number" Style="color: red" Display="Dynamic" ControlToValidate="txtAllowed" />
    <%--//////////The Spectator///////////--%>
    <br />
    <label for="lblSpectator">Spectator: </label>
    <asp:Label ID="lblSpectator" runat="server" />
    <asp:TextBox ID="txtSpectator" runat="server"></asp:TextBox>
    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
            ControlToValidate="txtSpectator" ErrorMessage="Value must be a whole number" Style="color: red" Display="Dynamic" />
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter a number" Style="color: red" Display="Dynamic" ControlToValidate="txtSpectator" />
    <%--///////////Checking for a score and allowed fields, so they are not the same////////////--%>
    <asp:CompareValidator runat="server" ControlToCompare="txtAllowed" Operator="NotEqual" Type="Integer" ControlToValidate="txtScored" ErrorMessage="Allowed and Points scored cant be the same" Style="color: red" Display="Dynamic" />
</div>

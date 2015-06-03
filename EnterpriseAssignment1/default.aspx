<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="EnterpriseAssignment1._default"
    UnobtrusiveValidationMode="None" %>

<%@ Register Src="~/panel.ascx" TagPrefix="uc1" TagName="panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div id="gamePanel" class="large-3 medium-2 small-1 columns ">
            <h1>Game 1</h1>
            <uc1:panel runat="server" ID="panel1" />
        </div>

        <div id="gamePanel" class="large-3 medium-2 small-1 columns ">
            <h1>Game 2</h1>
            <uc1:panel runat="server" ID="panel2" />
        </div>

        <div id="gamePanel" class="large-3 medium-2 small-1 columns ">
            <h1>Game 3</h1>
            <uc1:panel runat="server" ID="panel3" />
        </div>

        <div id="gamePanel" class="large-3 medium-2 small-1 columns ">
            <h1>Game 4</h1>
            <uc1:panel runat="server" ID="panel4" />
        </div>
    </div>

    <div class="row">
        <div class="small-12 large-centered columns">
            <asp:Button ID="btnCalcTotals" Text="Calculate Totals" runat="server" OnClick="btnCalcTotals_Click" class="button"/>

        </div>
    </div>
    <div class="row">
        <div class="large-5 small-12 columns" id="totals">
            <h2>Totals</h2>
        <br />
        <h4>Wins: </h4>
        <asp:Label ID="lblWins" runat="server" />
        <br />
        <h4>Losses: </h4>
        <label for="lblLosses"></label>
        <asp:Label ID="lblLosses" runat="server" />
        <br />
        <h4>Winning %: </h4>
        <label for="lblWinPercent"></label>
        <asp:Label ID="lblWinPercent" runat="server" />
        <br />
        <h4>Points Scored: </h4>
        <label for="lblPointsScored"></label>
        <asp:Label ID="lblPointsScored" runat="server" />
        <br />
        <h4>Points Allowed: </h4>
        <label for="lblPointsAllowed"></label>
        <asp:Label ID="lblPointsAllowed" runat="server" />
        <br />
        <h4>Points Differential: </h4>
        <label for="lblPointsDiff"></label>
        <asp:Label ID="lblPointsDiff" runat="server" />
        <br />
        <h4>Total Attendance: </h4>
        <label for="lblAttendance"></label>
        <asp:Label ID="lblAttendance" runat="server" />
        <br />
        <h4>Average Attendance: </h4>
        <label for="lblAverageAttendance"></label>
        <asp:Label ID="lblAverageAttendance" runat="server" />
        <br />
        </div>
        
    </div>







</asp:Content>


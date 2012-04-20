<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sync</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="StyleSheet.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item">&nbsp;</li><li>&nbsp;</li><li><a href="#">About</a></li>
				<li>&nbsp;</li><li>&nbsp;</li>
				<li></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
			<form method="get" action="">
                &nbsp;</form>
		</div>
		<!-- end #search -->
	</div>
	<!-- end #header -->
</div>
<!-- end #header-wrapper -->
<div id="page">
	<div id="logo">
		<h1><a href="#">Sync</a></h1>
		<p><em>
            <br />
            Get in Sync !!!</em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="content" style="width: 537px; height: 370px">
		<div class="post"><div class="entry"></div></div>
			<form runat="server">  <p class="links">              <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Style="z-index: 100;
                    left: 105px; position: absolute; top: 241px" CancelDestinationPageUrl="~/login.aspx" ContinueDestinationPageUrl="~/account.aspx" Height="248px" Width="321px" DisplayCancelButton="True" OnCreatedUser="CreateUserWizard1_CreatedUser">
                    <WizardSteps>
                        <asp:CreateUserWizardStep runat="server">
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep runat="server">
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                    <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious"
                Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
        </FinishNavigationTemplate>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
        </StartNavigationTemplate>
                </asp:CreateUserWizard></p></form>
                &nbsp;
		</div>
	
	<!-- end #content -->
	<!-- end #sidebar -->
	<div style="clear: both;">&nbsp;</div>
	<div id="footer">
		<p>Copyright (c) 2008 Sitename.com. All rights reserved. Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree</a> &amp; <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>.</p>
	</div>
	<!-- end #footer -->
</div>
<!-- end #page -->
</body>
</html>

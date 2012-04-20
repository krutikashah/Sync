<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>Sync</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="StyleSheet.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item">&nbsp;</li><li><a href="#">About Us</a></li></ul>
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
            <br />
            Get in Sync !!!</em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="content">
		<div class="post">
			<h2 class="title">
                Login to Sync</h2>
			<div class="entry"><form runat="server">
                <asp:Login ID="Login1" runat="server" Style="z-index: 100; left: 162px; position: absolute;
                    top: 303px" CreateUserText="Register to Sync" CreateUserUrl="~/registration.aspx" DestinationPageUrl="~/account.aspx"  PasswordRecoveryText="Forgot Password ?" PasswordRecoveryUrl="~/passwordrecovery.aspx" OnAuthenticate="Login1_Authenticate" >
                </asp:Login></form>
                &nbsp;</div>
		</div>
		<div class="post">
            &nbsp;&nbsp;
			<div class="entry">
                <br />
                <br />
                <br />
                &nbsp;</div>
		</div>
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

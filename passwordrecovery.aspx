﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordrecovery.aspx.cs" Inherits="passwordrecovery" %>

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
<form runat=server>
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item">&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li></ul>
		</div>
		<!-- end #menu -->
		<div id="search">
			
				<fieldset>
                    &nbsp;
				</fieldset>
			
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
	<div id="content">
		<div class="post">
			<div class="entry">
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Style="z-index: 100;
                    left: 98px; position: absolute; top: 335px">
                </asp:PasswordRecovery>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton></div>
		</div>
		<div class="post">
			<h2 class="title">
                &nbsp;</h2>
			<div class="entry">
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
</form>
</body>
</html>

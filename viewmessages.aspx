<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewmessages.aspx.cs" Inherits="viewmessages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Optimism by Free CSS Templates</title>
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
				<li class="current_page_item"><a href=profile.aspx>Profile</a></li>
				<li><a href=viewmessages.aspx>Messages</a></li>
				<li><a href="#">Photos</a></li>
				<li><a href=viewfriend.aspx>Friends</a></li>
				<li><a href=addfrend.aspx>Search</a></li>
				<li>&nbsp;</li></ul>
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
		<h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><a href="#">&nbsp;</a></h1>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton></div>
	<hr />
	<!-- end #logo -->
	<div id="content">
		<div class="post">
			<h2 class="title">
                Messages</h2>
			<p class="meta">
                <em></em>&nbsp;</p>
			<div class="entry">
                &nbsp;<p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns=False>
                <Columns>
                <asp:BoundField DataField="fromuserid"
                HeaderText="Sender" />
                <asp:BoundField DataField="msg"
                HeaderText="Message" />
                <asp:HyperLinkField  DataTextField="fromuserid" DataNavigateUrlFields="fromuserid"
                        DataNavigateUrlFormatString="replymessages.aspx?fromuserid={0}" HeaderText="reply to" />
                <asp:TemplateField HeaderText=Select>
                <ItemTemplate >
                <asp:CheckBox ID=CheckBox1 runat=server />
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                </asp:GridView>
                    &nbsp;</p>
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" /></div>
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

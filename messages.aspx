<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="scrapbook" %>

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
		<h1><a href="#">
            <asp:Image ID="Image1" runat="server" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </a></h1>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton><br />
        <br />
        <br />
        <br />
        <br />
        <br /><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Profile</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Messages</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server">Photo</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Friends</asp:LinkButton>
    </div>
	<hr />
	<!-- end #logo -->
	<div id="content">
		<div class="post">
			<div class="entry"><h2 class="title">
                Messages</h2>
                <br />
                <br />
                <br /><asp:Table ID="tblScrapbook" runat="server" GridLines = "None" CellPadding = "5" CellSpacing = "8" >
      <asp:TableRow ID="Scrapbookrow" runat = "server">
        <asp:tablecell ID="FirstNameCell"  runat="server">
            <asp:TextBox ID ="txtpostscrap" runat = "server" Height="70px" Width = "400px">
            </asp:TextBox>
        </asp:tablecell>
    </asp:TableRow>
    <asp:TableRow ID="ScrapStatusrow" runat = "server">
        <asp:tablecell ID="ScrapStatusCell"  runat="server">
            <asp:Label ID="lblScrapStatus" runat = "server"></asp:Label>
        </asp:tablecell>
    </asp:TableRow>
     <asp:TableRow ID="Postscraprow" runat = "server">
        <asp:tablecell ID="Postscrapcell"  runat="server" HorizontalAlign="left   ">
           <asp:Button ID="btnPostscrap" runat = "server" Text = "Post Scrap" OnClick="btnPostscrap_Click"/>&nbsp;
            <asp:Button ID="btnCancelscrap" runat = "server" Text = "Cancel" OnClick="btnCancelscrap_Click" />
        </asp:tablecell>
     </asp:TableRow>
</asp:Table>
                <br />
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns=False>
                <Columns>
                <asp:BoundField DataField="fromuserid"
                HeaderText="Sender" />
                <asp:BoundField DataField="msg"
                HeaderText="Message" />
                </Columns>
                </asp:GridView>
                
                <br />
            </div>
		</div>
		<div class="post">
			<h2 class="title">
                &nbsp;</h2>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addfrend.aspx.cs" Inherits="addfrend" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sync</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="StyleSheet.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>
<form id="Form1" runat="server">
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="profile.aspx">Profile</a></li>
				<li><a href="viewmessages.aspx">Messages</a></li>
				<li><a href="#">Photos</a></li>
				<li>&nbsp;</li><li><a href="viewfriend.aspx">Friends</a></li>
				<li><a href=addfrend.aspx>Search</a></li>
			</ul>
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
            <img src="" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </a></h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Logout</asp:LinkButton>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="content">
		<div class="post">
			<h2 class="title">
                &nbsp;Profile
                </h2>
            <p>
                &nbsp;</p>
            <p><asp:GridView ID=GridView3 runat=server AutoGenerateColumns=false Visible=false>
            <Columns>
            <asp:BoundField DataField="firstname" HeaderText="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" />
            </Columns>
            </asp:GridView>
                
           
            <p>
                <asp:TextBox ID="txtsearch" runat="server" Height="22px"></asp:TextBox>
                <asp:Button ID="searchbtn" runat="server" onclick="searchbtn_Click" 
                    Text="Search" />
                
 </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="result"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
            <Columns>
            <asp:BoundField DataField="userid"
                HeaderText="userid" />
                
                <asp:BoundField DataField="firstname"
                HeaderText="firstname" />
                <asp:BoundField DataField="lastname"
                HeaderText="lastname" />
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1"
                        AutoPostBack="true" runat="server"
                        />
                        
                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
               </p>
            <p>
                &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </p>
            <p>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Send Request" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <br />
            </p>
	</div>
	<!-- end #content -->
	<!-- end #sidebar -->
	<div style="clear: both;">&nbsp;<p>
        Copyright (c) 2008 Sitename.com. All rights reserved. Design by 
        <a href="http://www.nodethirtythree.com/">NodeThirtyThree</a> &amp; 
        <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>.</p>
        </div>
	<!-- end #footer -->
</div>
<!-- end #page -->
</div>
</form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profileview.aspx.cs" Inherits="profileview" %>

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
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </a></h1>
		<p></p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Logout</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Profile</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Messages</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server">Photo</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Friends</asp:LinkButton>
        </div>
	<hr />
	<!-- end #logo -->
	<div id="content">
		<div class="post">
			<h2 class="title">Welcome to 
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>'s Profile&nbsp;</h2>
			<div class="entry">
                <p> <strong>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="userid" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        userid:
                        <asp:Label ID="useridLabel1" runat="server" Text='<%# Eval("userid") %>'></asp:Label><br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>'>
                        </asp:TextBox><br />
                        relstatus:
                        <asp:TextBox ID="relstatusTextBox" runat="server" Text='<%# Bind("relstatus") %>'>
                        </asp:TextBox><br />
                        dob:
                        <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        zip:
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        movies:
                        <asp:TextBox ID="moviesTextBox" runat="server" Text='<%# Bind("movies") %>'>
                        </asp:TextBox><br />
                        languages:
                        <asp:TextBox ID="languagesTextBox" runat="server" Text='<%# Bind("languages") %>'>
                        </asp:TextBox><br />
                        firstname:
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>'>
                        </asp:TextBox><br />
                        lastname:
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>'>
                        </asp:TextBox><br />
                        country:
                        <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>'>
                        </asp:TextBox><br />
                        aboutme:
                        <asp:TextBox ID="aboutmeTextBox" runat="server" Text='<%# Bind("aboutme") %>'>
                        </asp:TextBox><br />
                        interests:
                        <asp:TextBox ID="interestsTextBox" runat="server" Text='<%# Bind("interests") %>'>
                        </asp:TextBox><br />
                        books:
                        <asp:TextBox ID="booksTextBox" runat="server" Text='<%# Bind("books") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update">
                        </asp:LinkButton>
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        userid:
                        <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>'>
                        </asp:TextBox><br />
                        gender:
                        <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>'>
                        </asp:TextBox><br />
                        relstatus:
                        <asp:TextBox ID="relstatusTextBox" runat="server" Text='<%# Bind("relstatus") %>'>
                        </asp:TextBox><br />
                        dob:
                        <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>'>
                        </asp:TextBox><br />
                        city:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>'>
                        </asp:TextBox><br />
                        zip:
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>'>
                        </asp:TextBox><br />
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        movies:
                        <asp:TextBox ID="moviesTextBox" runat="server" Text='<%# Bind("movies") %>'>
                        </asp:TextBox><br />
                        languages:
                        <asp:TextBox ID="languagesTextBox" runat="server" Text='<%# Bind("languages") %>'>
                        </asp:TextBox><br />
                        firstname:
                        <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>'>
                        </asp:TextBox><br />
                        lastname:
                        <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>'>
                        </asp:TextBox><br />
                        country:
                        <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>'>
                        </asp:TextBox><br />
                        aboutme:
                        <asp:TextBox ID="aboutmeTextBox" runat="server" Text='<%# Bind("aboutme") %>'>
                        </asp:TextBox><br />
                        interests:
                        <asp:TextBox ID="interestsTextBox" runat="server" Text='<%# Bind("interests") %>'>
                        </asp:TextBox><br />
                        books:
                        <asp:TextBox ID="booksTextBox" runat="server" Text='<%# Bind("books") %>'>
                        </asp:TextBox><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Insert">
                        </asp:LinkButton>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                            Text="Cancel">
                        </asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        userid:
                        <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>'></asp:Label><br />
                        gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>'></asp:Label><br />
                        relstatus:
                        <asp:Label ID="relstatusLabel" runat="server" Text='<%# Bind("relstatus") %>'></asp:Label><br />
                        dob:
                        <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>'></asp:Label><br />
                        city:
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>'></asp:Label><br />
                        zip:
                        <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>'></asp:Label><br />
                        state:
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>'></asp:Label><br />
                        movies:
                        <asp:Label ID="moviesLabel" runat="server" Text='<%# Bind("movies") %>'></asp:Label><br />
                        languages:
                        <asp:Label ID="languagesLabel" runat="server" Text='<%# Bind("languages") %>'></asp:Label><br />
                        firstname:
                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>'></asp:Label><br />
                        lastname:
                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>'></asp:Label><br />
                        country:
                        <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>'></asp:Label><br />
                        aboutme:
                        <asp:Label ID="aboutmeLabel" runat="server" Text='<%# Bind("aboutme") %>'></asp:Label><br />
                        interests:
                        <asp:Label ID="interestsLabel" runat="server" Text='<%# Bind("interests") %>'></asp:Label><br />
                        books:
                        <asp:Label ID="booksLabel" runat="server" Text='<%# Bind("books") %>'></asp:Label><br />
                    </ItemTemplate>
                </asp:FormView>
                </strong>&nbsp;</p>
                <p>
                    <strong>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                       
                            SelectCommand="SELECT [userid], [gender], [relstatus], [dob], [city], [zip], [state], [movies], [languages], [firstname], [lastname], [country], [aboutme], [interests], [books] FROM [profileinfo] where userid=@frienduserid">
                            <SelectParameters>
                            <asp:QueryStringParameter DefaultValue=0 Name="frienduserid" QueryStringField="frienduserid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </strong>&nbsp;</p>
                <p>
                    &nbsp;&nbsp;</p>
                <p>
                    <strong></strong>&nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;<a href="#" class="permalink"></a>&nbsp;</p>
			</div>
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
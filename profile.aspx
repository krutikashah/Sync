<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

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
<form id="Form1" runat="server">
<div id="header-wrapper">
	<div id="header">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href=profile.aspx>Profile</a></li>
				<li><a href="viewmessages.aspx">Messages</a></li>
				<li><a href=photo.aspx>Photos</a></li>
				<li><a href="viewfriend.aspx">Friends</a></li>
				<li><a href="addfrend.aspx">Search</a></li>
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
            <img id=Image1  src=""/>Welcome,&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;
        </a></h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Logout</asp:LinkButton>&nbsp;
	</div>
	<hr />
	<!-- end #logo -->
	<div id="content">
		<div class="post">
			<h2 class="title">
                &nbsp;Profile
                </h2>
            <p>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </p>
           
            <p>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:FormView
                    ID="FormView1" runat="server" DataKeyNames="userid" DataSourceID="SqlDataSource1">
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
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        zip:
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>'>
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
                        state:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                        </asp:TextBox><br />
                        zip:
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>'>
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
                        state:
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>'></asp:Label><br />
                        zip:
                        <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>'></asp:Label><br />
                        country:
                        <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>'></asp:Label><br />
                        aboutme:
                        <asp:Label ID="aboutmeLabel" runat="server" Text='<%# Bind("aboutme") %>'></asp:Label><br />
                        interests:
                        <asp:Label ID="interestsLabel" runat="server" Text='<%# Bind("interests") %>'></asp:Label><br />
                        books:
                        <asp:Label ID="booksLabel" runat="server" Text='<%# Bind("books") %>'></asp:Label><br />
                        movies:
                        <asp:Label ID="moviesLabel" runat="server" Text='<%# Bind("movies") %>'></asp:Label><br />
                        languages:
                        <asp:Label ID="languagesLabel" runat="server" Text='<%# Bind("languages") %>'></asp:Label><br />
                        firstname:
                        <asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>'></asp:Label><br />
                        lastname:
                        <asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>'></asp:Label><br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                            Text="Edit">
                        </asp:LinkButton>
                        <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                            Text="Delete">
                        </asp:LinkButton>
                        
                        
                    </ItemTemplate>
                </asp:FormView>
                &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [profileinfo] WHERE [userid] = @original_userid "
                    InsertCommand="INSERT INTO [profileinfo] ([firstname], [lastname], [userid], [gender], [relstatus], [dob], [city], [state], [zip], [country], [aboutme], [interests], [books], [movies], [languages]) VALUES (@firstname, @lastname, @userid, @gender, @relstatus, @dob, @city, @state, @zip, @country, @aboutme, @interests, @books, @movies, @languages)"
                    OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [firstname], [lastname], [userid], [gender], [relstatus], [dob], [city], [state], [zip], [country], [aboutme], [interests], [books], [movies], [languages] FROM [profileinfo] WHERE ([userid] = @userid)"
                    UpdateCommand="UPDATE [profileinfo] SET [firstname] = @firstname, [lastname] = @lastname, [gender] = @gender, [relstatus] = @relstatus, [dob] = @dob, [city] = @city, [state] = @state, [zip] = @zip, [country] = @country, [aboutme] = @aboutme, [interests] = @interests, [books] = @books, [movies] = @movies, [languages] = @languages WHERE [userid] = @original_userid ">
                    <DeleteParameters>
                        <asp:Parameter Name="original_userid" Type="String" />
                        <asp:Parameter Name="original_firstname" Type="String" />
                        <asp:Parameter Name="original_lastname" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_relstatus" Type="String" />
                        <asp:Parameter Name="original_dob" Type="DateTime" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_zip" Type="String" />
                        <asp:Parameter Name="original_country" Type="String" />
                        <asp:Parameter Name="original_aboutme" Type="String" />
                        <asp:Parameter Name="original_interests" Type="String" />
                        <asp:Parameter Name="original_books" Type="String" />
                        <asp:Parameter Name="original_movies" Type="String" />
                        <asp:Parameter Name="original_languages" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="firstname" Type="String" />
                        <asp:Parameter Name="lastname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="relstatus" Type="String" />
                        <asp:Parameter Name="dob" Type="DateTime" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="zip" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="aboutme" Type="String" />
                        <asp:Parameter Name="interests" Type="String" />
                        <asp:Parameter Name="books" Type="String" />
                        <asp:Parameter Name="movies" Type="String" />
                        <asp:Parameter Name="languages" Type="String" />
                        <asp:Parameter Name="original_userid" Type="String" />
                        <asp:Parameter Name="original_firstname" Type="String" />
                        <asp:Parameter Name="original_lastname" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_relstatus" Type="String" />
                        <asp:Parameter Name="original_dob" Type="DateTime" />
                        <asp:Parameter Name="original_city" Type="String" />
                        <asp:Parameter Name="original_state" Type="String" />
                        <asp:Parameter Name="original_zip" Type="String" />
                        <asp:Parameter Name="original_country" Type="String" />
                        <asp:Parameter Name="original_aboutme" Type="String" />
                        <asp:Parameter Name="original_interests" Type="String" />
                        <asp:Parameter Name="original_books" Type="String" />
                        <asp:Parameter Name="original_movies" Type="String" />
                        <asp:Parameter Name="original_languages" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="userid" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="firstname" Type="String" />
                        <asp:Parameter Name="lastname" Type="String" />
                        <asp:Parameter Name="userid" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="relstatus" Type="String" />
                        <asp:Parameter Name="dob" Type="DateTime" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="state" Type="String" />
                        <asp:Parameter Name="zip" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="aboutme" Type="String" />
                        <asp:Parameter Name="interests" Type="String" />
                        <asp:Parameter Name="books" Type="String" />
                        <asp:Parameter Name="movies" Type="String" />
                        <asp:Parameter Name="languages" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/profilepic1.aspx" Width="129px">Edit Profile Pic</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                
 </p>
                <p class="meta">
                    &nbsp;<em></em>&nbsp;</p>
                <p align="right" class="links">
	</div></div>
	
	<!-- end #content -->
	<div id="sidebar">
		<ul>
			<li>
				<h2>
                    &nbsp;</h2>
			</li>
			<li id="calendar">
				<h2>
                    Pending Friend Requests</h2>
				<div id="calendar_wrap">
				<asp:GridView ID="GridView2" runat=server AutoGenerateColumns=false Visible="false">
				<Columns>
				<asp:BoundField DataField="tof" />
				<asp:BoundField DataField="tol" />
				</Columns>
				</asp:GridView>
				
				<asp:GridView ID="GridView1" runat="server"
 AutoGenerateColumns="False" >
            <Columns>
            <asp:BoundField DataField="fromuserid"
                HeaderText="userid" />
                <asp:BoundField DataField="fromf"
                HeaderText="firstname" />
                <asp:BoundField DataField="froml"
                HeaderText="lastname" />
                
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat=server  />
                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
                    &nbsp;</div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Approve" Width="58px" />
                &nbsp; &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Reject" OnClick="Button2_Click" /></li><li>
				<p style="clear: both; margin: 0; line-height: normal; text-align: right;"><a href="#"></a>&nbsp;</p>
			</li>
		</ul>
	</div>
	
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

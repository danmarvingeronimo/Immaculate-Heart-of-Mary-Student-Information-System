<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
    <div class="slider">
		<ul class="bxslider">
			<li>
				<div class="container">
					<div class="info">
						<h2>It’s Time to <br/><span>Get back to school</span></h2>
						<a href="Online%20Application/Application.aspx" runat="server">Apply Online</a>
					</div>
                 
				</div>
				<!-- / content -->
			</li>
			<li>
				<div class="container">
					<div class="info">
						<h2>It’s Time to <br/><span>Get back to school</span></h2>
						<a href="~/Online Application/Application.aspx" runat="server">Apply Online</a>
					</div>
				</div>
				<!-- / content -->
			</li>
			<li>
				<div class="container">
					<div class="info">
						<h2>It’s Time to <br/><span>Get back to school</span></h2>
						<a href="~/Online Application/Application.aspx" runat="server">Apply Online</a>
					</div>
				</div>
				<!-- / content -->
			</li>
		</ul>
		<div class="bg-bottom"></div>
	</div>
	
	<section class="posts">
		<div class="container">
			<article>
				<div class="pic"><img width="121" src="Content/images/2.png" alt=""/></div>
				<div class="info">
					<h3>The best learning methods</h3>
					<p>Immaculate Heart of Mary College - Parañaque provides the best learning methods to the students. We have experienced and excellent teacher to help for the learning of the students. </p>
				</div>
			</article>
			<article>
				<div class="pic"><img width="121" src="Content/images/3.png" alt=""/></div>
				<div class="info">
					<h3>Awesome results of our students</h3>
					<p>The student gives positive feedback to the school mostly because the school has a genuine and religious community that encourage students in a supportive, safe and happy environment.   </p>
				</div>
			</article>
		</div>
		<!-- / container -->
	</section>

	<section class="news">
		<div class="container">
			<h2>PHILOSOPHY OF EDUCATION</h2>
			<article>
					<div class="info"><p>
Immaculate Heart of Mary College-Parañaque advances academic excellence and ensures learning that is sustained and backed-up with the formation of character, sound values, and Catholic principles of life. We are committed to the furtherance of education as a journey towards the search of God, for he who seeks knowledge seeks the truth, and he who seeks the truth finds God Himself who is “the WAY, the TRUTH, and the LIFE”.</p>
			</div></article>
			<article>
				
				<div class="info">
					<p>In harmony with this belief, the Immaculate Heart of Mary College-Parañaque adopts the educative method of persuasion characterized by faith, reason, and charity – an educative system which teaches that “God is Love”. Faith illuminates reason, reason leads the mind to charity, and charity wins the heart of her/his brother, conquered through the affectionate Hearts of Jesus and Mary.</p>
	
				</div>
			</article>
		</div>
		<!-- / container -->
	</section>

	<section class="events">
		<div class="container">
			<h2>BUILDINGS</h2>
			<article>
		<center> <div class="pica"><img height="300" width="300" src="Content/images/portfolio/1.jpg" alt="" height="200" width="300"/></div></center>           
				<div class="info">
                    <br />
					<p>The Blessed Mother's Building, inaugurated 1985 by the late Cardinal Sin</p>
				
				</div>
			</article>
			<article>
                <center>
                    <div class="pica"><img height="300" width="300"  src="Content/images/portfolio/5_3.jpg" alt=""/></div>
                </center>
                
				<div class="info"><br />
					<p>The St. Francis of Assisi Building, housing the Junior High School, Learning Resource Center and some College Classrooms and Offices</p>
			
				</div>
			</article>
			<article>
				<center>
				<div class="pica"><img  height="300" width="300"  src="Content/images/portfolio/5_5.jpg" alt=""/></div>
				</center>
                    <div class="info"><br />
					<p>The Father Simpliciano Building that replaced the Old Gymnasium and Home Economics Building, that currently houses the new Gymnasium and College Library and will be the future location of the Office of the President, College Department Office, Faculty Room and some Classrooms.</p>
	
				</div>
               
			</article>
            </div>
		<!-- / container -->
	</section>
</asp:Content>


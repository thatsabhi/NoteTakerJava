<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Note Maker</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div id="main">
		<div id="header">
			<div id="akhil">
				<div id="logo">
					<img src="img/note.png" alt="">
				</div>
				<div class="text">
					<h1>Note Taker</h1>
				</div>
			</div>
			<a href="AddNotes.jsp" class="btn-link">Get Started</a>
		</div>
		<div id="fakeHeader"></div>
		<div id="page1">
			<div class="container" style="margin-bottom: 110px;">
				<div class="container">
					<h1
						style="font-size: 5rem; font-weight: bold; font-family: 'Georgia', serif; margin-left: 50px; margin-top: 10%;">The
						most powerful note-taking tool</h1>
				</div>
				<div class="container">
					<h3
						style="font-weight: normal; font-family: 'Georgia', serif; margin-left: 50px;">Evernote
						brings your notes, tasks, and schedule together to keep you
						focused and organized all day long.</h3>
				</div>


			</div>

			<div class="container">
				<img alt="" src="img/home.png" style="max-width: 100%">
			</div>
		</div>


		<div id="page2"> 
			<a href="AddNotes.jsp" style="margin-left: 50px;"><button
					class="btn-link"
					style="background: green; color: white; padding-top: 20px; padding-bottom: 20px; padding-right: 100px; padding-left: 100px;"
					type="submit">
					<h4>Start Writing</h4>
				</button></a>
			<div class="box">


				<div class="box1">
					<div
						style="height: 31%; width: 40%; display: block; margin-left: auto; margin-right: auto; max-width: 100%;">
						<img style="height: 100%; width: 100%; object-fit: cover;"
							src="img/star.png" />
					</div>
					<h3 style="font-size: 2.5rem; text-align: center;">Capture
						what matters</h3>
					<h4 style="font-weight: normal;">Take note of what's important
						for you.</h4>
				</div>


				<div class="box2">
					<div
						style="height: 31%; width: 40%; display: block; margin-left: auto; margin-right: auto; max-width: 100%;">
						<img style="height: 100%; width: 100%; object-fit: cover;"
							src="img/tool.png" />
					</div>
					<h3 style="font-size: 2.5rem; text-align: center;">Clean up
						your notes</h3>
					<h4 style="font-weight: normal;">Use our powerful AI tools to
						structure and summarize your notes.</h4>
				</div>


				<div class="box3">
					<div
						style="height: 31%; width: 40%; display: block; margin-left: auto; margin-right: auto; max-width: 100%;">
						<img style="height: 100%; width: 100%; object-fit: cover;"
							src="img/detection.png" />
					</div>
					<h3 style="font-size: 2.5rem; text-align: center;">Never miss
						a deadline</h3>
					<h4 style="font-weight: normal;">Keep track of your important
						deadlines with your to-do-lists.</h4>
				</div>


				<div class="box4">
					<div
						style="height: 31%; width: 40%; display: block; margin-left: auto; margin-right: auto; max-width: 100%;">
						<img style="height: 100%; width: 100%; object-fit: cover;"
							src="img/browser.png" />
					</div>
					<h3 style="font-size: 2.5rem; text-align: center;">Use our
						templates</h3>
					<h4 style="font-weight: normal;">Use and customize our +100
						templates.</h4>
				</div>
			</div>

		</div>

		<div id="page3">
			<div id="box5">
				<div id="cont1">
					<h3 style="font-size: 3.5rem;">Go Paperless</h3>
					<div class="text1">From instruction manuals and warranty
						information to boarding passes and receipts, relax knowing they’re
						always handy if you need them later.</div>
					<br> <br> <a href="AddNotes.jsp" class="btn-link">Take
						your first Note</a>
				</div>
				<div id="cont2">
					<img alt="" src="img/scan-notes.png" style="max-width: 100%">
				</div>
			</div>
		</div>
		<div id="page4">
			<div id="box6">
				<div id="conts1">
					<img alt="" src="img/integrations.png" style="max-width: 100%">
				</div>
				<div id="conts2">
					<h3 style="font-size: 3.5rem;">Designed to fit your workflow</h3>
					<div class="text1">Evernote integrates with your favorite
						apps like Google Drive, Slack, and Microsoft Teams so you can be
						more productive from brainstorm to execution.</div>
					<br> <br> <a href="AddNotes.jsp" class="btn-link">Take
						your first Note</a>
				</div>

			</div>
		</div>
		<div id="footer">
			<img alt="" src="img/copyright.png"
				style="height: 11px; width: 11px; object-fit: cover; margin: 3px;">
			<div style="margin-right: 300px;">2025 Evernote Corporation.
				All rights reserved.</div>
			<div style="margin-right: 50px;">Cookie Preferences</div>
			<div style="margin-right: 50px;">Security</div>
			<div style="margin-right: 50px;">Legal</div>
			<div style="margin-right: 30px;">Privacy</div>
		</div>
	</div>
</body>
</html>

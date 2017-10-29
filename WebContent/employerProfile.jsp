<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employer</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <!-- <nav class="navbar navbar-default">
		<div class="navbar-header">
		<a class="navbar-brand" href="#">Employer</a>
		</div>
		<ul class="nav navbar-nav pull-right">
		<li><a href="index.jsp">Logout</a></li>
		</ul>
	</nav> -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10">
				<h1 class="">Welcome</h1>
				<h3 class="media-heading">
					Alex Murphy <small> USA</small>
				</h3>
				<h4>
					Human Resource Manager at <a href="http://google.com">Google</a>
				</h4>
				<hr style="margin: 8px auto">
	
			</div>
			<div class="col-sm-2">
				<a href="#" class="profile-pic"> <img
					class="img-circle img-responsive"
					src="https://www.acumenexecutivesearch.com/wp-content/uploads/2017/06/employer-branding-mistakes.jpg" alt="">

					<span class="glyphicon glyphicon-camera"></span> <span>Update
						Image</span>
				</a>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-3">
				<ul class="nav nav-pills nav-stacked" role="tablist">
					<li class="nav-item active"><a class="nav-link"
						data-toggle="pill" href="#profile" role="tab">Profile</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#search" role="tab">Post Jobs</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#resumes" role="tab">View Applications</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#savedJobs" role="tab">View One Way Interviews</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#oneWayTemp" role="tab">One Way Interview Questions</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#settings" role="tab">Settings</a></li>
					<li class="nav-item"><a class="nav-link" href="index.jsp" >Logout</a></li>
				</ul>
			</div>
			<div class="col-sm-8">
				<!-- Tab panes -->
				<div class="tab-content">
					<!-- Edit Profile Tab -->
					<div class="tab-pane active" id="profile" role="tabpanel">
						<form action="">
							<div class="col-sm-6">
								<div class="form-group">
									<label for="exampleInputEmail1">First Name</label> <input
										type="text" class="form-control" name="firstName"
										id="firstName" placeholder="Enter First Name"
										required="required">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Last Name</label> <input
										type="text" class="form-control" name="lastName" id="lastName"
										placeholder="Enter Last Name" required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Employer Id</label> <input
										type="text" class="form-control" name="jid" id="jid"
										placeholder="Enter Job seeker id" required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Address</label> <input
										type="text" class="form-control" name="address" id="address"
										placeholder="Enter Address" required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Phone Number</label> <input
										type="number" class="form-control" name="phoneNumber"
										id="phoneNumber" placeholder="Enter Phone Number"
										required="required">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label for="exampleInputEmail1">Personal Email</label> <input
										type="text" class="form-control" name="personalEmail"
										id="personalEmail" placeholder="Personal Email Address"
										required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Alternate Email</label> <input
										type="text" class="form-control" name="alternateEmail"
										id="alternateEmail" placeholder="Alternate Email Address"
										required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Skype ID</label> <input
										type="text" class="form-control" name="skypeID" id="skypeID"
										placeholder="Skype ID" required="required">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Username</label> <input
										type="text" class="form-control" name="Username" id="Username"
										placeholder="Enter Username" required="required">
								</div>

								<br/>
								<p align="center">
									<button type="submit" style="width: 30%; font-size: 1.1em;"
										class="btn btn-large btn btn-success btn-lg btn-block">
										<b>Edit</b>
									</button>
								</p>
							</div>
						</form>
						<br/>
						<br/>
					</div>
					<!-- Post Jobs Tab -->
					<div class="tab-pane" id="search" role="tabpanel">
						<h2>Post Available Jobs</h2>
						<form action="">
							<div class="row">
								<div class="form-group ">
									<i class="fa fa-handshake-o fa-2x" aria-hidden="true"></i> <input
										type="text" id="keywords" name="keywords"
										placeholder="Post New Jobs" class="form-control word">
								</div>
								<div class="form-group location">
									<i class="fa fa-map-marker fa-2x" aria-hidden="true"></i> <input
										type="text" id="keywords" name="keywords"
										placeholder="New Job Place" class="form-control word">
								</div>
								<button id='Post' type="submit"
									class="btn btn-default search-button">Post Job</button>
							</div>
						</form>
						<br>
					</div>

					<!-- Record / Upload Resume -->
					<div class="tab-pane" id="resumes" role="tabpanel">
					</div>
					<div class="tab-pane" id="oneWayTemp" role="tabpanel">
					<h4>Select One Way Interview Questions</h4>
						<form action="">
						<!-- <div class="form-group">
						<label>Interview for position : </label>
						<input type="text" class="form-control" name="jobPosition" id="jobPosition"
							   placeholder="Enter job postion" required="required">
						</div> -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" name="question1"
									id="question1" value="">
									Why are you looking for employment?
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" name="question2"
									id="question2" value="">
									What have your roles been in past?
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" name="question3"
									id="question3" value="">
									What has been your greatest achievement?
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" name="question4"
									id="question4" value="">
									Why are your strengths and weaknesses?
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" name="question5"
									id="question5" value="">
									Why should we hire you?
								</label>
							</div>
							<button style="width: 30%; font-size: 1.1em;" class="btn btn-default btn-block">
							<b>Send Invites</b>
							</button>
						</form>
					</div>
					<div class="tab-pane" id="savedJobs" role="tabpanel"></div>
					<div class="tab-pane" id="appliedJobs" role="tabpanel"></div>
					<div class="tab-pane" id="settings" role="tabpanel">Settings</div>
					<div class="tab-pane" id="logout" role="tabpanel">Logout</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
		<script type="text/javascript">
			function logout() {
				response.sendRedirect("index.jsp");
				return true;
			}
		</script>
		<script type="text/javascript">
			var buffer = [], recorder, video = document.querySelector("video");

			function onStartButtonClick() {
				var items = navigator.userAgent.match(/Chrome\/(\d+)/) || [];
				if (items[1] <= 47)
					return alert("This demo works only in Google Chrome v48+.");

				navigator.webkitGetUserMedia({
					audio : true,
					video : true
				}, onStreamGetSuccess, onStreamGetFailure);
			}

			// triggered by user.
			function onStopButtonClick() {
				try {
					recorder.stop();
					recorder.stream.getTracks().forEach(function(track) {
						track.stop();
					});
				} catch (e) {
				}

				bufferToDataUrl(function(dataUrl, blob) {
					// upload file to the server
					var file = dataUrlToFile(dataUrl);
					console.log(file);

					// or just download it.
					var url = URL.createObjectURL(blob), el = document
							.createElement("a");

					document.body.appendChild(el);
					el.style = "display:none";
					el.href = url;
					el.download = "video.webm";
					el.click();
					URL.revokeObjectURL(url);
				});

			}

			function onStreamGetSuccess(stream) {
				video.src = window.URL.createObjectURL(stream);

				recorder = new MediaRecorder(stream);
				// will be called each time we get data from stream.
				recorder.ondataavailable = onDataAvailable;
				recorder.start();
			}

			function onStreamGetFailure() {
				alert("Can't get video-stream");
			}

			function onDataAvailable(e) {
				if (e.data)
					buffer.push(e.data);
			}

			// returns file, that we can send to the server.
			function dataUrlToFile(dataUrl) {
				var binary = atob(dataUrl.split(',')[1]), data = [];

				for (var i = 0; i < binary.length; i++)
					data.push(binary.charCodeAt(i));

				return new File([ new Uint8Array(data) ],
						'recorded-video.webm', {
							type : 'video/webm'
						});
			}

			function bufferToDataUrl(callback) {
				var blob = new Blob(buffer, {
					type : "video/webm"
				});

				var reader = new FileReader();
				reader.onload = function() {
					callback(reader.result, blob);
				};
				reader.readAsDataURL(blob);
			}
		</script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"
			type="text/javascript"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			type="text/javascript"></script>
</div></body>
</html>
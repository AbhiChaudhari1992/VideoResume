<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Seeker</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10">
				<h1 class="">Welcome</h1>
				<h4 class="media-heading">John Doe <small> USA</small></h4>
                <h5>Software Developer at <a href="http://google.com">Google</a></h5>
                <hr style="margin:8px auto">
				<div class="skills">
				
				</div>
                <span class="label label-default">HTML5/CSS3</span>
                <span class="label label-default">jQuery</span>
                <span class="label label-info">Python</span>
                <span class="label label-default">Java</span>
                <span class="label label-success">jQuery</span>
				<br>
			</div>
			<div class="col-sm-2">
				<a href="#" class="pull-right"><img title="profile image"
					class="img-circle img-responsive"
					src="https://organicthemes.com/demo/profile/files/2012/12/profile_img.png"></a>

			</div>
		</div>
		<br><div class = "row">
		<div class="col-sm-3">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li class="nav-item active"><a class="nav-link" data-toggle="pill"
					href="#profile" role="tab">Profile</a></li>
				<li class="nav-item"><a class="nav-link"
					data-toggle="pill" href="#search" role="tab">Search Jobs</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#resumes" role="tab">Resumes</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#savedJobs" role="tab">Saved Jobs <span class="badge">5</span></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#appliedJobs" role="tab">Applied Jobs <span class="badge">2</span></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#settings" role="tab">Settings</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#logout" role="tab">Logout</a></li>
			</ul>
		</div>
		<div class="col-sm-8">
			<!-- Tab panes -->
			<div class="tab-content">
			
			<!-- Edit Profile Tab -->
				<div class="tab-pane active" id="profile" role="tabpanel">
					<form>
					<div class="col-sm-6">
					    <div class="form-group">
							<label for="exampleInputEmail1">Username</label> <input
								type="text" class="form-control" name="username" id="username"
								placeholder="Enter Username" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">First Name</label> <input
								type="text" class="form-control" name="firstName" id="firstName"
								placeholder="Enter First Name" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Last Name</label> <input
								type="text" class="form-control" name="lastName" id="lastName"
								placeholder="Enter Last Name" required="required">
						</div>
                        <div class="form-group">
							<label for="exampleInputEmail1">Job Seeker Id</label> <input
								type="text" class="form-control" name="jid" id="jid"
								placeholder="Enter Job seeker id" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Address</label> <input
								type="text" class="form-control" name="address" id="address"
								placeholder="Enter Address" required="required">
						</div>
					</div>
					<div class="col-sm-6">
					<div class="form-group">
							<label for="exampleInputEmail1">Phone Number</label> <input
								type="number" class="form-control" name="phoneNumber"
								id="phoneNumber" placeholder="Enter Phone Number"
								required="required">
						</div>

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
								type="text" class="form-control" name="skypeID"
								id="skypeID" placeholder="Skype ID"
								required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Username</label> <input
								type="text" class="form-control" name="Username" id="Username"
								placeholder="Enter Username" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" name="Password"
								id="Password" placeholder="Enter Password" required="required">
						</div>
					</div>
					</form><br></br><br></br>
<!-- 					    <div class="panel panel-default">
							<div class="panel-heading">Education Details</div>
						<div class="panel-body">Panel Body</div><br>
						
						<div class="panel panel-default">
						<div class="panel-heading">Skills</div>
						<div class="panel-body">Panel Body</div><br>
						
						<div class="panel panel-default">
						<div class="panel-heading">Work Experience</div>
						<div class="panel-body">Panel Body</div><br>
					</div><br><br>
					</div><br><br>
					</div><br><br> -->
				</div>
			
				<!-- Search Jobs Tab -->
				<div class="tab-pane" id="search" role="tabpanel">
					<h2>Search For your Favorite Job</h2>
					<form action="">
						<div class="row">
							<div class="form-group search">
								<i class="fa fa-search" aria-hidden="true"></i> <input
									type="text" id="keywords" name="keywords"
									placeholder="Search for Jobs" class="form-control word">
							</div>
							<div class="form-group location">
								<i class="fa fa-map-marker" aria-hidden="true"></i> <input
									type="text" id="keywords" name="keywords"
									placeholder="Search for Jobs" class="form-control word">
							</div>
							<button id='search' type="submit"
								class="btn btn-primary search-button">Search</button>
						</div>
					</form>
					<br>
					<div class="row">
						<div class="card" style="width: 20rem;">
							<div class="card-block">
								<h3 class="card-title">Special title treatment</h3>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Record / Upload Resume -->
				<div class="tab-pane" id="resumes" role="tabpanel">
					<!-- <div class="panel panel-default">
						<div class="panel-heading">Record Video Resume</div>
						<div class="panel-body"> -->
						<h4>Record Video Resume</h4>
							<video style="height: 200px;width: 200px;border: 1px solid #333;"></video>
							  <input type="button" class="btn btn-default" onclick="onStartButtonClick()" value="Start recording">
							  <input type="button" class="btn btn-default" onclick="onStopButtonClick()" value="Stop/Save">
						<!-- </div>
					</div> -->
					<br><br>
					<div class="panel panel-default">
						<div class="panel-heading">Upload Resumes</div>
						<div class="panel-body">
								<form method="post" action="uploadFile"	enctype="multipart/form-data">
									Select file to upload: <input type="file" class="btn btn-default" name="uploadFile" />
									<br />
									<br /> <input type="submit" class="btn btn-default" value="Upload" />
								</form>
								<a href="VideoResume/Upload/resume.pdf">Uploaded Resume</a>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="savedJobs" role="tabpanel">Saved
					Jobs</div>
				<div class="tab-pane" id="appliedJobs" role="tabpanel">Applied
					Jobs</div>
				<div class="tab-pane" id="settings" role="tabpanel">Settings</div>
				<div class="tab-pane" id="logout" role="tabpanel">Logout</div>
			</div>

		</div>
		<div class="col-sm-1"></div></div>
	</div>
	<script>
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

			return new File([ new Uint8Array(data) ], 'recorded-video.webm', {
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
</body>
</html>
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
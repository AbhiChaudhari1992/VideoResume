var buffer = [], recorder2, video2 = document.querySelector(".oneWayInterviewVideo");

function onStartButtonClick2() {
	var items = navigator.userAgent.match(/Chrome\/(\d+)/) || [];
	if (items[1] <= 47)
		return alert("This demo works only in Google Chrome v48+.");

	navigator.webkitGetUserMedia({
		audio : true,
		video : true
	}, onStreamGetSuccess2, onStreamGetFailure2);
}

function onStopButtonClick2() {
	try {
		recorder2.stop();
		recorder2.stream.getTracks().forEach(function(track) {
			track.stop();
		});
	} catch (e) {
	}

	bufferToDataUrl2(function(dataUrl, blob) {
		// upload file to the server
		var file = dataUrlToFile2(dataUrl);
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

function dataUrlToFile2(dataUrl) {
	var binary2 = atob(dataUrl.split(',')[1]), data2 = [];

	for (var i = 0; i < binary2.length; i++)
		data2.push(binary2.charCodeAt(i));

	return new File([ new Uint8Array(data2) ], 'recorded-video.webm', {
		type : 'video/webm'
	});
}

function onStreamGetSuccess2(stream) {
	video2.src = window.URL.createObjectURL(stream);

	recorder2 = new MediaRecorder(stream);
	// will be called each time we get data from stream.
	recorder2.onDataAvailable2 = onDataAvailable2;
	recorder2.start();
}

function onStreamGetFailure2() {
	alert("Can't get video-stream");
}

function onDataAvailable2(e) {
	if (e.data)
		buffer.push(e.data);
}

function bufferToDataUrl2(callback) {
	var blob = new Blob(buffer, {
		type : "video/webm"
	});

	var reader = new FileReader();
	reader.onload = function() {
		callback(reader.result, blob);
	};
	reader.readAsDataURL(blob);
}

function sendRequest(url, params, callback, method) {
	var httpRequest = new XMLHttpRequest();
	var httpMethod = method;	
	if (httpMethod != 'GET' && httpMethod != 'POST') {
		httpMethod = 'GET';
	}		
	var httpParams = (params == null || params == '') ? null : params;
	var httpUrl = url;
	if (httpMethod == 'GET' && httpParams != null) {
		httpUrl = httpUrl + "?" + httpParams;
	}
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	
	httpRequest.onreadystatechange = callback;
	
	httpRequest.send(httpMethod == 'POST' ? httpParams : null);
	
	return httpRequest;
}





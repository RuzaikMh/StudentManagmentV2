function alertMsg(){
	document.getElementById('myalert').innerHTML = `
		<div class="alert alert-success alert-dismissible fade show" role="alert">
		  Successfuly inserted the record!!!.
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	`;
}


window.addEventListener('load', (event) => {
  
	var text = "";
	var length = 10;
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	for(var i = 0; i < length; i++) {
		text += possible.charAt(Math.floor(Math.random() * possible.length));
	}
	
	document.getElementById("paymentId").value = text;
	
	var alertMessage = document.getElementById('successMsg').innerHTML;

	if(alertMessage == 'Success'){
		alertMsg();
	}
	
});
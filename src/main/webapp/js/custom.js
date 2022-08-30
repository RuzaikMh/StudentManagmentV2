
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

function alertMsg2(){
	document.getElementById('myalert').innerHTML = `
		<div class="alert alert-success alert-dismissible fade show" role="alert">
		  <strong>Failled !!!</strong> Student with same registration number already exists.
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	`;
}


$(document).ready(function() {
    var alertMessage = document.getElementById('successMsg').innerHTML;

	if(alertMessage == 'Success'){
		alertMsg();
	}
	
	if(alertMessage == 'Failed'){
		alertMsg2();
	}
});
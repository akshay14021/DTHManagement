document.getElementById("billingtype").addEventListner('change',disabled)

function disabled(e){
	if (e.target.value === 'prepaid') {
    	document.getElementById('refundAmount').value = "0";
    	document.getElementById('refundAmount').readOnly = true;
    } else if (e.target.value === 'postpaid') {
    	document.getElementById('refundAmount').readOnly = false;
    }

}

document.getElementById('feature').addEventListner('onClick',function a (e) {
	e.preventDefault();
})
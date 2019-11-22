document.getElementById('billingtype').addEventListener('change', (e) => {
	if (e.target.value === 'prepaid') {
    	document.getElementById('refundAmount').value = '0';
    	document.getElementById('refundAmount').readOnly = true;
    } else if (e.target.value === 'postpaid') {
    	document.getElementById('refundAmount').disabled = false;
    	document.getElementById('refundAmount').readOnly = false;
    }

})


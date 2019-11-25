document.getElementById('CCT').addEventListener('change', (e) => {
	if(e.target.value === 'FTA (Free to Air)') {
		document.getElementById('refundAmount').value = '0'
		document.getElementById('refundAmount').readOnly = true;
	} else if(e.target.value === 'Paid') {
		document.getElementById('refundAmount').value = '';
		document.getElementById('refundAmount').readOnly = false;
	}
})
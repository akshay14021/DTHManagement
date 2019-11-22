document.getElementById('billingtype').addEventListener('change', disabled )

function disabled(e) {
    if (e.target.value === 'prepaid') {
        document.getElementById('refundAmount').disabled = true
    } else if (e.target.value === 'postpaid') {
        document.getElementById('refundAmount').disabled = false;
    }
}
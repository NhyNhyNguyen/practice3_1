  function handleLoginRequest(xhr, status, args) {
	  console.log("handleLoginRequest")
        if(args.validationFailed || !args.loggedIn) {
        }
        else {
            PF('loginDialog').hide();
            $('#loginDialog').fadeOut();
        }
    }
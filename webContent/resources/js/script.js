  function handleLoginRequest(xhr, status, args) {
	  console.log("Hanlde login")
        if(args.validationFailed || !args.loggedIn) {
        }
        else {
            PF('loginDialog').hide();
            $('#loginDialog').fadeOut();
        }
    }
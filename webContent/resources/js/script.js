  function handleLoginRequest(xhr, status, args) {
	  console.log("Hanlde login")
        if(args.validationFailed || !args.loggedIn) {
            PF('loginDialog').jq.effect("shake", {times:5}, 100);
        }
        else {
            PF('loginDialog').hide();
            $('#loginDialog').fadeOut();
        }
    }
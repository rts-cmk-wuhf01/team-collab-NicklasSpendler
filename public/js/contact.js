const contactForm = document.querySelector("#contactForm");
let name = contactForm.querySelector("#contactName");
let mail = contactForm.querySelector("#contactMail");
let phone = contactForm.querySelector("#contactPhone");
let subject = contactForm.querySelector("#contactSubject");
let message = contactForm.querySelector("#contactMessage");

function validateEmail(email) {
	let regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

	return regex.test(email)
}

contactForm.addEventListener("submit", (event) => {
	event.preventDefault();
	let error = false;
	if(name.value != "" && name.value.length > 1) {
	}
	else {
		alert(`Enter a name that's 2 or more characters!`);
		error = true;
		return false;
	}
	if(mail.value != "" && validateEmail(mail.value)) {
	}
	else {
		alert(`Please enter a valid email!`);
		error = true;
		return false;
	}
	if(phone.value != "") {
		if(phone.value.length == 8) {
		}
		else {
			alert(`Please enter a phone number that's 8 digits!`);
			error = true;
			return false;
		}
	}
	else {
		alert(`The phone field must be filled in!`);
		error = true;
		return false;
	}
	if(subject.value != "") {
	}
	else {
		alert(`The subject field must be filled in!`);
		error = true;
		return false;
	}
	if(message.value != "") {
	}
	
	else {
		alert(`The message field must be filled in!`);
		error = true;
		return false;
	}

	if (error == false){
		contactForm.submit();
	}
});
const contactForm = document.querySelector("#contactForm");
let name = contactForm.querySelector("#contactName");
let mail = contactForm.querySelector("#contactMail");
let phone = contactForm.querySelector("#contactPhone");
let subject = contactForm.querySelector("#contactSubject");
let message = contactForm.querySelector("#contactMessage");


let errormsg = "";

contactForm.addEventListener("submit", (event) => {
	event.preventDefault();


	if (name.value != "" && typeof name.value == NaN) {
		name.value = "";
	}
	else {
		alert(`The name field must be filled in!`);
		name.value = "";
	}
	if (mail.value != "") {
		mail.value = "";
	}
	else {
		alert(`The mail field must be filled in!`);
		mail.value = "";
	}
	if (phone.value != "") {
		if (phone.value.length == 8) {
			phone.value = "";
		}
		else {
			alert(`The phone number must be 8 digits long`);
			phone.value = "";
		}
	}
	else {
		alert(`The phone field must be filled in!`);
		phone.value = "";
	}
	if (subject.value != "" && typeof subject.value == NaN) {
		subject.value = "";
	}
	else {
		alert(`The subject field must be filled in!`);
		subject.value = "";
	}
	if (message.value != "" && typeof message.value == NaN) {
		message.value = "";
	}
	else {
		alert(`The message field must be filled in!`);
		message.value = "";
	}


});
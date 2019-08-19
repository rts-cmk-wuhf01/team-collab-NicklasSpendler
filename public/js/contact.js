const contactForm = document.querySelector("#contactForm");
let name = contactForm.querySelector("#contactName");
let mail = contactForm.querySelector("#contactMail");
let phone = contactForm.querySelector("#contactPhone");
let subject = contactForm.querySelector("#contactSubject");
let message = contactForm.querySelector("#contactMessage");

contactForm.addEventListener("submit", (event) => {
	event.preventDefault();
	
	if(name.value != "") {
		console.log(name.value);
		name.value = "";
	}
	else {
		alert(`The name field must be filled in!`);
	}
	if(mail.value != "") {
		console.log(mail.value);
		mail.value = "";
	}
	else {
		alert(`The mail field must be filled in!`);
	}
	if(phone.value != "" && typeof(phone.value) != NaN) {
		console.log(phone.value);
		phone.value = "";
	}
	else {
		alert(`The phone field must be filled in!`);
	}
	if(subject.value != "") {
		console.log(subject.value);
		subject.value = "";
	}
	else {
		alert(`The subject field must be filled in!`);
	}
	if(message.value != "") {
		console.log(message.value);
		message.value = "";
	}
	else {
		alert(`The message field must be filled in!`);
	}


});
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
		name.classList.remove("fieldError")
	}
	else {
		name.classList.add("fieldError")
		error = true;
	}
	if(mail.value != "" && validateEmail(mail.value)) {
		mail.classList.remove("fieldError")
	}
	else {
		mail.classList.add("fieldError")
		error = true;
	}
	if(phone.value != "" && !isNaN(phone.value)) {
		phone.classList.remove("fieldError")
		if(phone.value.length == 8) {
			phone.classList.remove("fieldError")
		}
		else {
			phone.classList.add("fieldError")
			error = true;
		}
	}
	else {
		phone.classList.add("fieldError")
		error = true;
	}
	if(subject.value != "" && subject.value > 2) {
		subject.classList.remove("fieldError")
	}
	else {
		subject.classList.add("fieldError")
		error = true;
	}
	if(message.value != "" && message.value > 2) {
		message.classList.remove("fieldError")
	}

	else {
		message.classList.add("fieldError")
		error = true;
	}

	if (error == false) {
		contactForm.submit();
	}
});
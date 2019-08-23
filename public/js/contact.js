const contactForm = document.querySelector("#contactForm");
let name = contactForm.querySelector("#contactName");
let mail = contactForm.querySelector("#contactMail");
let phone = contactForm.querySelector("#contactPhone");
let subject = contactForm.querySelector("#contactSubject");
let message = contactForm.querySelector("#contactMessage");

let errorMessageElem = document.querySelector('.errorMessages')

function validateEmail(email) {
	let regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return regex.test(email)
}

let errorMessage = []

contactForm.addEventListener("submit", (event) => {
	event.preventDefault();
	if(name.value != "" && name.value.length > 1) {
		name.classList.remove("fieldError")
	}
	else {
		name.classList.add("fieldError")
		errorMessage.push("Please check name box");
	}
	if(mail.value != "" && validateEmail(mail.value)) {
		mail.classList.remove("fieldError")
	}
	else {
		mail.classList.add("fieldError")
		errorMessage.push("Please check Email box");
	}
	if(phone.value != "" && !isNaN(phone.value)) {
		phone.classList.remove("fieldError")
		if(phone.value.length == 8) {
			phone.classList.remove("fieldError")
		}
		else {
			phone.classList.add("fieldError")
			errorMessage.push("Please check Phone box")
		}
	}
	else {
		phone.classList.add("fieldError")
		errorMessage.push("Please Check Phone box")
	}
	if(subject.value != "" && subject.value.length > 2) {
		subject.classList.remove("fieldError")
	}
	else {
		subject.classList.add("fieldError")
		errorMessage.push("Please check Subject box")
	}
	if(message.value != "" && message.value.length > 2) {
		message.classList.remove("fieldError")
	}

	else {
		message.classList.add("fieldError")
		errorMessage.push("Please check Message box")
	}

	// console.log('', errorMessageElem)
	if (errorMessage.length == 0) {
		errorMessageElem.innerHTML = ""
		contactForm.submit();
	}else{
		errorMessageElem.innerHTML = "";
		errorMessage.forEach(message => {
			errorMessageElem.innerHTML += `<li>${message}</li>`;
		});
		errorMessage = [];
	}




});


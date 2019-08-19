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

});
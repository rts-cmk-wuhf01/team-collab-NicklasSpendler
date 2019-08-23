const CommentSection = document.querySelector("#commentSection");

let commentName = CommentSection.querySelector("#commentName");
let commentMessage = CommentSection.querySelector("#commentMessage");

CommentSection.addEventListener("submit", event =>{
event.preventDefault();

	if(commentName.value == ""){
		commentName.focus()
        commentName.classList.add("fieldError")
        return false;
	} 
	if(commentMessage.value == ""){
		commentMessage.focus();
        commentMessage.classList.add("fieldError")
        return false;
    }
  CommentSection.submit();
    
})
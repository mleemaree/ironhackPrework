var user = {}
var responses = []

function question1() {
  var name = prompt('What is your name?')
  user.name = name
}

question1();

function question2(){
	var firstQuestion = prompt('Sharks continually grow new teeth throughout their entire lives? (yes or no)');

		if (firstQuestion.toLowerCase() === "yes"){
			firstQuestion = true
		} else if (firstQuestion.toLowerCase() === "no"){
			firstQuestion = false
		}else{
			alert("Please answer yes or no");
			return question2();
		}
		responses.push(firstQuestion);

}

question2();

function question3() {
  var secondQuestion = prompt('Don Quixote had a sidekick named:\n a. Don Juan\n b. Gaston\n c. Sancho Panza\n d.Rumplestiltskin');
  secondQuestion = secondQuestion.toLowerCase();
  switch (secondQuestion) {
    case "a": secondQuestion = false;
    break;

    case "b": secondQuestion = false;
    break;

    case "c": secondQuestion = true;
    break;

    case "d": secondQuestion = false;
    break;

    default: alert("Please answer question with an a, b, c or d")
			 return question3();
  }
  responses.push(secondQuestion);
}

question3();


function question4(){
	var thirdQuestion = prompt('Happy days (the tv show) was set in:\na. Chicago\nb. Milwaukee\nc. Minneapolis\nd. Indianapolis');
	thirdQuestion = thirdQuestion.toLowerCase();
	switch (thirdQuestion) {
    case "a": thirdQuestion = false;
    break;

    case "b": thirdQuestion = true;
    break;

    case "c": thirdQuestion = false;
    break;

    case "d": thirdQuestion = false;
    break;

    default: alert("Please answer question with an a, b, c or d")
			 return question4();
  }
  responses.push(thirdQuestion);
}

question4();

function question5(){
	var fourthQuestion = prompt('Hamsters live for 50 years? (yes or no)');

		if (fourthQuestion.toLowerCase() === "yes"){
			fourthQuestion = false
		} else if (fourthQuestion.toLowerCase() === "no"){
			fourthQuestion = true
		}else{
			alert("Please answer yes or no");
			return question5();
		}
		responses.push(fourthQuestion);

}

question5();


function evaluate(responsesArray) {

// declare two variables to store the totals
var correct = 0;

var wrong = 0;

// populate the “totals” variables from the “responsesArray”

for (response in responses) { 
    if (response != true){
    	wrong++
    } else{
    	correct++
    }
}

// save the “totals” variables inside the user object

user.correct = correct;

user.wrong = wrong;

// call showResults

showResults();
	console.log(correct);
	console.log(wrong);
	document.write("You have " + correct + " correct answers.<br>");

	document.write("You have " + wrong + " wrong answers.<br>");
}

function showResults() {


}

// call the function, passing it the responses array
evaluate(responses);

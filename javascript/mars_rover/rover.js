var myRover = {
  position: [0,0], 
  direction: 'f'
};

var direc = prompt("Input directions please.")
var read = direc.split('');




  function goForward(rover) {
    for (i=0; i<read.length; i++){
      switch(rover.direction) {
        case 'f':
          rover.position[0]++
          break;
        case 'r':
          rover.position[1]++
          break;
        case 'b':
          rover.position[0]--
          break;
        case 'l':
          rover.position[1]--
          break;
      };

    if (rover.position[0] == 10){
      rover.position[0] = 0;
    }

    if (rover.position[1] == 10){
      rover.position[1]== 0;
    }

    var fb = rover.position[0];
    var rl = rover.position[1];

    var posi = [fb , rl];

  }
  

}
goForward(myRover);

console.log(myRover.position);
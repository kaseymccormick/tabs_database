

// var test = document.getElementById("tab1").className += ' hide';


// function hideTabs(selected){
//   if (selected === "tab1"){
//     document.getElementById("tab2").className += ' hide';
//     document.getElementById("tab3").className += ' hide';
//     //hide tab2 and tab3
//   } else if (selected === "tab2"){
//     document.getElementById("tab1").className += ' hide';
//     document.getElementById("tab3").className += ' hide';
//     //hide tab1 and tab3
//   } else if{
//     document.getElementById("tab1").className += ' hide';
//     document.getElementById("tab2").className += ' hide';
//     //hide tab1 and tab2
//   }
// }

function hideTabs1(){
  document.getElementById("tab2Content").className = ' hide';
  document.getElementById("tab3Content").className = ' hide';
  document.getElementById("tab1Content").className = ' visible';
}

function hideTabs2(){
  document.getElementById("tab1Content").className = ' hide';
  document.getElementById("tab3Content").className = ' hide';
  document.getElementById("tab2Content").className = ' visible';
}

function hideTabs3(){
  document.getElementById("tab1Content").className = ' hide';
  document.getElementById("tab2Content").className = ' hide';
  document.getElementById("tab3Content").className = ' visible';
}


hideTabs1();

document.getElementById("tab1").onclick = hideTabs1;

document.getElementById("tab2").onclick = hideTabs2;

document.getElementById("tab3").onclick = hideTabs3;

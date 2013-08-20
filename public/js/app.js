var skills = [
              "Java;#b07219",
              "PHP;#777bb4",
              "CSS;#7ea838",
              "HTML;#f16428",
              "Javascript;#efd84d",
              "Photoshop;#175ba6",
              "Linux;#f7bb00",
              "Computer Repair;#AAA",
              "Android Development;#A4C639",
              "Ruby on Rails;#be1d1f",
              "CompTIA A+ Certified;#ef2e25"
              ];

window.onload = function() {
  var skillsEle = document.getElementById("skills");
  var output = "";
  for(var i = 0; i < skills.length; i++){
    var tokens = skills[i].split(";");
    output += "<li class=\"button\"";
    if(typeof tokens[1] !== "undefined"){
      output += " style=\"background-color:" + tokens[1] + "\"";
    }
    output += ">" + tokens[0] + "</li>"
  }
  skillsEle.innerHTML = output;

  var qrcode = new QRCode("qrcode", {
    text: "http://charles.hollenbeck.pw",
    width: 200,
    height: 200,
    colorDark : "#666",
    colorLight : "#DDD",
    correctLevel : QRCode.CorrectLevel.H
});
}

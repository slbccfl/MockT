$(document).ready(function() {
  var arguementNames = ["Opening Statements",
      "P Witness 1", 
      "P Witness 2", 
      "P Witness 3", 
      "D Witness 1", 
      "D Witness 2", 
      "D Witness 3", 
      "Closing Arguements"];
  var i = 0;
  var pSideArguementHTML = "";
  var dSideArguementHTML = "";
  var ballotHTML = "";
  for (i = 0; i < arguementNames.length; i++) {
    arguementType = arguementNames[i].substr(0,1)
    if (arguementType  == "O"||arguementType  == "C") {	
      ballotHTML += '<div class = "row border text-center themecolor">'
        ballotHTML += '<h3>' + arguementNames[i] + '</h3>'
        ballotHTML += '<div class = "row border themecolor-light">'
          ballotHTML += '<div class="col-sm-4">'
            ballotHTML += '<p>Attorney {teamMemberName}</p>'
          ballotHTML += '</div>' // close col-sm-4
          ballotHTML += '<div class="col-sm-2 border-right">'
            ballotHTML += '<p>Score {arguementScore}</p>'
          ballotHTML += '</div>' // close col-sm-2
          ballotHTML += '<div class="col-sm-2">'
            ballotHTML += '<p>Score {arguementScore}</p>'
          ballotHTML += '</div>' // close col-sm-2</div>'
          ballotHTML += '<div class="col-sm-4">'
            ballotHTML += '<p>Attorney {teamMemberName}</p>'
          ballotHTML += '</div>' // close col-sm-4
        ballotHTML += '</div>' // close row
      ballotHTML += '</div>' // close row --!>
    } else {
      ballotHTML += '<div class = "row border text-center themecolor">'
        ballotHTML += '<h3>' + arguementNames[i] + '</h3>'
        ballotHTML += '<div class = "row border themecolor-light">'
          ballotHTML += '<div class="col-sm-4">'
            ballotHTML += '<p>Attorney {teamMemberName}</p>'
          ballotHTML += '</div>' // close col-sm-4
          ballotHTML += '<div class="col-sm-2 border-right">'
            ballotHTML += '<p>Score {arguementScore}</p>'
          ballotHTML += '</div>' // close col-sm-2
          ballotHTML += '<div class="col-sm-2">'
            ballotHTML += '<p>Score {arguementScore}</p>'
          ballotHTML += '</div>' // close col-sm-2</div>'
          ballotHTML += '<div class="col-sm-4">'
            ballotHTML += '<p>Attorney {teamMemberName}</p>'
          ballotHTML += '</div>' // close col-sm-4
        ballotHTML += '</div>' // close row
      ballotHTML += '</div>' // close row --!>
      pSideArguementHTML += '<div class="row no-gutter">'
    	pSideArguementHTML += '<div class="col-md-8"><p>Attorney {teamMemberName}</p></div>'
    	pSideArguementHTML += '<div class="col-md-4"><p>Score {arguementScore}</p></div>'
    	pSideArguementHTML += '<div class="col-md-8"><p>Witness {teamMemberName}</p></div>'
    	pSideArguementHTML += '<div class="col-md-4"><p>Score {arguementScore}</p></div>'
    	pSideArguementHTML += '<div class="col-md-4"><p>Score {arguementScore}</p></div>'
    	pSideArguementHTML += '<div class="col-md-8"><p></p></div>'
      pSideArguementHTML += '</div>'
      pSideArguementHTML += '<div class="row no-gutter">'
      pSideArguementHTML += '<div class="col-md-12"><p></p></div>'
     	pSideArguementHTML += '<div class="col-md-8"><p></p></div>'
      pSideArguementHTML += '<div class="col-md-4"><p>Score {arguementScore}</p></div>'
      pSideArguementHTML += '</div>'
      dSideArguementHTML += '<div class="row no-gutter">'
      dSideArguementHTML += '<div class="col-md-4"><p>Score {arguementScore}</p></div>'
      dSideArguementHTML += '<div class="col-md-8"><p>Attorney {teamMemberName}</p></div>'
      dSideArguementHTML += '<div class="col-md-4 border-left"><p>Score {arguementScore}</p></div>'
      dSideArguementHTML += '<div class="col-md-8"><p>Witness {teamMemberName}</p></div>'
      dSideArguementHTML += '</div>'
    }  
  }

  document.getElementById("js-ballot-content").innerHTML = ballotHTML;
});
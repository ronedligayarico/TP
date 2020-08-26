'use strict'

$(document).ready(function () {
  reloadDiv("/TP/components/dashboard/dashboard.jsp");
  $('.reloadLink').click(function () {
    reloadDiv(this.id);
  })
})

function setInnerHtml(elm, html) {
  elm.innerHTML = html;
  Array.from(elm.querySelectorAll("script")).forEach( oldScript => {
    const newScript = document.createElement("script");
    Array.from(oldScript.attributes)
      .forEach( attr => newScript.setAttribute(attr.name, attr.value) );
    newScript.appendChild(document.createTextNode(oldScript.innerHTML));
    oldScript.parentNode.replaceChild(newScript, oldScript);
  });
}

function reloadDiv(url){
  $.ajax({
  type: "POST",
  url: url,
  cache: false,
  success: function(e)
  {
    var elm = document.getElementById("app");
    setInnerHtml(elm, e);

  },
  complete: function(){
    // After execution
  }
  });
}

function test() {
  // body...
  alert("test");
}
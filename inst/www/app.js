$(function(){
  $("#mapsubmit").click(function(e){
    e.preventDefault();
  var btn = $(this).attr("disabled", "disabled");
  var req = ocpu.call("run_plot_ll", { 
   pgr_sm : parseFloat($("#pgr_sm").val()),
    rnd : $("#rnd").val(),
    pgr_rb : parseFloat($("#pgr_rb").val())   
}, function(session){
  $("iframe").attr('src', session.getFileURL("mymap.html"));
}).always(function(){
      btn.removeAttr("disabled");
    });
  });
});

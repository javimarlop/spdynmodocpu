ant<-function(){
#ant<-function(rnd,pgr_rb,pgr_sm){
#run_model(rnd=rnd,pgr_rb=pgr_rb,pgr_sm=pgr_sm)
#inlineleafmap(year=2008)
require(htmltools)
     doc <- tags$html(
       tags$head(
         tags$title('My first page')
       ),
       tags$body(
         h1('My first heading'),
         p('My first paragraph, with some ',
           strong('bold'),
           ' text.'),
         div(id='myDiv', class='simpleDiv',
             'Here is a div with some attributes.')
       )
     )
#save_html(doc,'tmp.html')
#     doc2 <- tags$html(
#       tags$body(
#         h1('My first heading'),
#         p('My first paragraph, with some ',
#           strong('bold'),
#           ' text.',rnd,pgr_rb,pgr_sm),
#         div(id='myDiv', class='simpleDiv',
#             'Here is a div with some attributes.')
#       )
#     )
  ### paste(capture.output(doc), collapse ='\n')
return(doc)
}

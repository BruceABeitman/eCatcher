.class public final Lcom/userzoom/ap;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> \n <html xmlns=\"http://www.w3.org/1999/xhtml\"> \n <head> \n     <meta name=\"viewport\" id=\"view\" content=\"width=device-width, minimum-scale=1.0, maximum-scale=1.0\"/> \n     <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /> \n \t<script type=\"text/javascript\"> \n  (function() { \n     var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true; \n    ga.src = (\'https:\' == document.location.protocol ? \'https://\' : \'http://\') + \'cdn4.userzoom.com/trueintent/js/uz_til_mobile.release.js\'; \n     var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s); \n     })()\n        </script> \n     <title></title> \n </head>     \n <body > \n </body> \n </html>"

    sput-object v0, Lcom/userzoom/ap;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    const-string v0, "Assets"

    const-string v1, "JS_INTERCEPT_DIALOG_UPDATE_WIDTH_HEIGHT"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "javascript:(function () {Android.log(\'despues del cambio de orientaci\ufffdn\');\nAndroid.log($(\'.uz_popup\').width());\nAndroid.log($(\'.uz_popup\').height());\nAndroid.updateInterceptSize($(\'.uz_popup\').width(), $(\'.uz_popup\').height());\n})()"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "javascript:(function() { \n ${OBSERVATION_DATA}   myData.d_evtPosx=${X};\n  myData.d_evtPosy=${Y};\n  myData.d_id=\'${DESCRIPTION}\';\n  myData.d_innertext=\'\';\n  myData.setClickObservationsData(\'${TYPE_EVENT}\');\n  myData.myInforma();\n })()"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "OBSERVATION_DATA"

    invoke-virtual {v0, v1, p3}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "X"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "Y"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "TYPE_EVENT"

    invoke-virtual {v0, v1, p4}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:(function(){window[\'uz_til\'].saveReferrer(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "Assets"

    const-string v1, "JS_EVENTS_SERVICE_LOAD_JS"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "javascript:(function() { \n window._uz_codeuser = \'${CODE_USER}\';   if (document.body != null)\n     var parentElement = document.body;\n  else if(document.getElementsByTagName(\'head\').length > 0)\n     var parentElement = document.getElementsByTagName(\'head\')[0];\n  if (parentElement != null){\n     var script = document.createElement(\'script\');\n     script.type = \'text/javascript\';\n     script.charset = \"utf-8\";\n     script.src = \'${PROTOCOL}${DOMAIN}/c/uzios.js\';\n     parentElement.appendChild(script);\n  }})()"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "PROTOCOL"

    invoke-virtual {v0, v1, p0}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "DOMAIN"

    invoke-virtual {v0, v1, p1}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "CODE_USER"

    invoke-virtual {v0, v1, p2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 12

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "  var myData = new _uz_data(\'${USER_CODE}\');\n  myData.d_toplocation =\'${PREFIX}${tag1}\';\n  myData.d_location =\'${PREFIX}${tag1}\';\n  myData.d_href =\'${PREFIX}${tag1}\';\n  myData.d_javascript =\'${tag2}\';\n  myData.d_title =\'${tag2}\';\n  myData.d_title1 =\'${tag3}\';\n  myData.d_eventtype = \'${EVENT_NAME}\';\n  myData.d_innerwidth=\'${WIDTH}\';\n  myData.d_innerheight=\'${HEIGHT}\';\n  myData.d_name=\'${APP_NAME}\';\n  myData.d_button=\'${NUM_TOUCH}\';\nAndroid.log(myData.d_codeuser);\n"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    const-string v1, "USER_CODE"

    invoke-virtual {v0, v1, p0}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "PREFIX"

    invoke-virtual {v0, v1, p1}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "tag1"

    invoke-virtual {v0, v1, p3}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "tag2"

    invoke-virtual {v0, v1, p4}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "tag3"

    invoke-virtual {v0, v1, p5}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "EVENT_NAME"

    invoke-virtual {v0, v1, p6}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "WIDTH"

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "HEIGHT"

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "NUM_TOUCH"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "APP_NAME"

    invoke-virtual {v0, v1, p2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    const-string v0, "Assets"

    const-string v1, "JS_INTERCEPT_DIALOG_HIDE_ACCEPT"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "javascript:(function () { window[\'uz_til\'].openHideInterceptStudy();})()"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "Assets"

    const-string v1, "JS_EVENTS_SERVICE_START_TRACKING"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "javascript:(function() { \n  var myData = new _uz_data(\'${USER_CODE}\');\n  myData.d_toplocation =\'${PREFIX}${appName}\';\n  myData.d_location =\'${PREFIX}${appName}\';\n  myData.d_href =\'${PREFIX}${appName}\';\n  myData.d_title =\'${appName}\';\n  myData.d_title1 =\'${appName}\';\n  myData.d_observations = \'Android:StartTrackingEvents\';\n  myData.myInforma();\n })()"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "USER_CODE"

    invoke-virtual {v0, v1, p0}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "PREFIX"

    invoke-virtual {v0, v1, p1}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {v0, v1, p2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    const-string v0, "Assets"

    const-string v1, "JS_EVENTS_SERVICE_FILL_USER_CODE"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/userzoom/aq;

    const-string v1, "javascript:(function() { \n  Android.fillUserCode(UserZoom.study.g_uc);\n })()"

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/userzoom/aq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() { \n  var myData = new _uz_data(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');\n  myData.d_toplocation =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n  myData.d_location =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n  myData.d_href =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n  myData.d_title =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n  myData.d_title1 =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';\n  myData.d_observations = \'Android:StopTrackingEvents\';\n  myData.myInforma();\n })()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/userzoom/aq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "USER_CODE"

    invoke-virtual {v0, v1, p0}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "PREFIX"

    invoke-virtual {v0, v1, p1}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {v0, v1, p2}, Lcom/userzoom/aq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object v0
.end method

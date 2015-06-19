.class public final Lcom/google/android/youtube/player/internal/x;
.super Ljava/lang/Object;
.method public static a(Ljava/util/Locale;)Ljava/util/Map;
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "error_initializing_player"
const-string v2, "An error occurred while initializing the YouTube player."
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "get_youtube_app_title"
const-string v2, "Get YouTube App"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "get_youtube_app_text"
const-string v2, "This app won\'t run without the YouTube App, which is missing from your device"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "get_youtube_app_action"
const-string v2, "Get YouTube App"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "enable_youtube_app_title"
const-string v2, "Enable YouTube App"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "enable_youtube_app_text"
const-string v2, "This app won\'t work unless you enable the YouTube App."
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "enable_youtube_app_action"
const-string v2, "Enable YouTube App"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "update_youtube_app_title"
const-string v2, "Update YouTube App"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "update_youtube_app_text"
const-string v2, "This app won\'t work unless you update the YouTube App."
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "update_youtube_app_action"
const-string v2, "Update YouTube App"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/x;->a(Ljava/util/Map;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/x;->a(Ljava/util/Map;Ljava/lang/String;)V
return-object v0
.end method
.method private static a(Ljava/util/Map;Ljava/lang/String;)V
.registers 4
const-string v0, "af"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4f
const-string v0, "error_initializing_player"
const-string v1, "Kon nie die YouTube-speler inisialiseer nie."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Kry YouTube-program"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Hierdie program sal nie loop sonder die YouTube-program, wat ontbreek van jou toestel, nie"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Kry YouTube-program"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Aktiveer YouTube-program"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Hierdie program sal nie werk tensy jy die YouTube-program aktiveer nie."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Aktiveer YouTube-program"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Dateer YouTube-program op"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Hierdie program sal nie werk tensy jy die YouTube-program opdateer nie."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Dateer YouTube-program op"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_4e
:cond_4e
return-void
:cond_4f
const-string v0, "am"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9e
const-string v0, "error_initializing_player"
const-string v1, "\u12e8YouTube \u12a0\u132b\u12cb\u1279\u1295 \u1260\u121b\u1235\u1300\u1218\u122d \u120b\u12ed \u1233\u1208 \u12a0\u1295\u12f5 \u1235\u1205\u1270\u1275 \u1270\u12a8\u1235\u1277\u120d\u1362"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u130d\u1299"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u12ed\u1205 \u1218\u1270\u130d\u1260\u122a\u12eb \u12eb\u1208 YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd \u12a0\u12ed\u1202\u12f5\u121d\u1363 \u12a5\u1231 \u12f0\u130d\u121e \u1260\u1218\u1223\u122a\u12eb\u12ce \u120b\u12ed \u12e8\u1208\u121d\u1362"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u130d\u1299"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u1295\u1241"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12a5\u1235\u12ab\u120b\u1290\u1241 \u12f5\u1228\u1235 \u12ed\u1205 \u1218\u1270\u130d\u1260\u122a\u12eb \u12a0\u12ed\u1230\u122b\u121d\u1362"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u1295\u1241"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u12d8\u121d\u1291"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12a5\u1235\u12ab\u120b\u12d8\u1218\u1291\u1275 \u12f5\u1228\u1235 \u12ed\u1205 \u1218\u1270\u130d\u1260\u122a\u12eb \u12a0\u12ed\u1230\u122b\u121d\u1362"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u12e8YouTube \u1218\u1270\u130d\u1260\u122a\u12eb\u12cd\u1295 \u12eb\u12d8\u121d\u1291"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4e
:cond_9e
const-string v0, "ar"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ee
const-string v0, "error_initializing_player"
const-string v1, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u062a\u0647\u064a\u0626\u0629 \u0645\u0634\u063a\u0644 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u0627\u0644\u062d\u0635\u0648\u0644 \u0639\u0644\u0649 \u062a\u0637\u0628\u064a\u0642 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0644\u0646 \u064a\u0639\u0645\u0644 \u0647\u0630\u0627 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0628\u062f\u0648\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube \u0627\u0644\u0630\u064a \u0644\u0627 \u064a\u062a\u0648\u0641\u0631 \u0639\u0644\u0649 \u062c\u0647\u0627\u0632\u0643"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u0627\u0644\u062d\u0635\u0648\u0644 \u0639\u0644\u0649 \u062a\u0637\u0628\u064a\u0642 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u062a\u0645\u0643\u064a\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0644\u0646 \u064a\u0639\u0645\u0644 \u0647\u0630\u0627 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u0627 \u0644\u0645 \u064a\u062a\u0645 \u062a\u0645\u0643\u064a\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u062a\u0645\u0643\u064a\u0646 \u062a\u0637\u0628\u064a\u0642 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u062a\u062d\u062f\u064a\u062b \u062a\u0637\u0628\u064a\u0642 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0644\u0646 \u064a\u0639\u0645\u0644 \u0647\u0630\u0627 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u0627 \u0644\u0645 \u064a\u062a\u0645 \u062a\u062d\u062f\u064a\u062b \u062a\u0637\u0628\u064a\u0642 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u062a\u062d\u062f\u064a\u062b \u062a\u0637\u0628\u064a\u0642 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_ee
const-string v0, "be"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13e
const-string v0, "error_initializing_player"
const-string v1, "\u041f\u0430\u043c\u044b\u043b\u043a\u0430 \u043f\u0430\u0434\u0447\u0430\u0441 \u0456\u043d\u0456\u0446\u044b\u044f\u043b\u0456\u0437\u0430\u0446\u044b\u0456 \u043f\u0440\u0430\u0439\u0433\u0440\u0430\u0432\u0430\u043b\u044c\u043di\u043a\u0430 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u0421\u043f\u0430\u043c\u043f\u0430\u0432\u0430\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0413\u044d\u0442\u0430 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 \u043d\u0435 \u0431\u0443\u0434\u0437\u0435 \u043f\u0440\u0430\u0446\u0430\u0432\u0430\u0446\u044c \u0431\u0435\u0437 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u044f YouTube, \u044f\u043a\u043e\u0435 \u0430\u0434\u0441\u0443\u0442\u043d\u0456\u0447\u0430\u0435 \u043d\u0430 \u043f\u0440\u044b\u043b\u0430\u0434\u0437\u0435"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u0421\u043f\u0430\u043c\u043f\u0430\u0432\u0430\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0423\u043a\u043b\u044e\u0447\u044b\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0413\u044d\u0442\u0430 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 \u043d\u0435 \u0431\u0443\u0434\u0437\u0435 \u043f\u0440\u0430\u0446\u0430\u0432\u0430\u0446\u044c, \u043f\u0430\u043a\u0443\u043b\u044c \u0432\u044b \u043d\u0435 \u045e\u043a\u043b\u044e\u0447\u044b\u0446\u0435 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0423\u043a\u043b\u044e\u0447\u044b\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u0410\u0431\u043d\u0430\u0432i\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0413\u044d\u0442\u0430 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 \u043d\u0435 \u0431\u0443\u0434\u0437\u0435 \u043f\u0440\u0430\u0446\u0430\u0432\u0430\u0446\u044c, \u043f\u0430\u043a\u0443\u043b\u044c \u0432\u044b \u043d\u0435 \u0430\u0431\u043d\u0430\u0432i\u0446\u0435 \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u0410\u0431\u043d\u0430\u0432i\u0446\u044c \u043f\u0440\u044b\u043a\u043b\u0430\u0434\u0430\u043d\u043d\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_13e
const-string v0, "bg"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18e
const-string v0, "error_initializing_player"
const-string v1, "\u041f\u0440\u0438 \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u044f\u043d\u0435\u0442\u043e \u043d\u0430 \u043f\u043b\u0435\u0439\u044a\u0440\u0430 \u043d\u0430 YouTube \u0437\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u0432\u044a\u0437\u043d\u0438\u043a\u043d\u0430 \u0433\u0440\u0435\u0448\u043a\u0430."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0422\u043e\u0432\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u044f\u043c\u0430 \u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0438 \u0431\u0435\u0437 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e YouTube, \u043a\u043e\u0435\u0442\u043e \u043b\u0438\u043f\u0441\u0432\u0430 \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0432\u0438"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0410\u043a\u0442. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0422\u043e\u0432\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u044f\u043c\u0430 \u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0438, \u043e\u0441\u0432\u0435\u043d \u0430\u043a\u043e \u043d\u0435 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0410\u043a\u0442. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u0410\u043a\u0442\u0443\u043b. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0422\u043e\u0432\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043d\u044f\u043c\u0430 \u0434\u0430 \u0440\u0430\u0431\u043e\u0442\u0438, \u043e\u0441\u0432\u0435\u043d \u0430\u043a\u043e \u043d\u0435 \u0430\u043a\u0442\u0443\u0430\u043b\u0438\u0437\u0438\u0440\u0430\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u0410\u043a\u0442\u0443\u043b. \u043d\u0430 \u043f\u0440\u0438\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_18e
const-string v0, "ca"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1de
const-string v0, "error_initializing_player"
const-string v1, "S\'ha produ\u00eft un error en iniciar el reproductor de YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Obtenci\u00f3 aplicac. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Aquesta aplicaci\u00f3 no funcionar\u00e0 sense l\'aplicaci\u00f3 de YouTube, que encara no \u00e9s al dispositiu."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Obt\u00e9n l\'aplic. de YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Activaci\u00f3 aplic. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Aquesta aplicaci\u00f3 no funcionar\u00e0 fins que no activis l\'aplicaci\u00f3 de YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Activa aplicaci\u00f3 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Actualitz. aplic. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Aquesta aplicaci\u00f3 no funcionar\u00e0 fins que no actualitzis l\'aplicaci\u00f3 de YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Actualitza aplic. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_1de
const-string v0, "cs"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22e
const-string v0, "error_initializing_player"
const-string v1, "P\u0159i inicializaci p\u0159ehr\u00e1va\u010de YouTube do\u0161lo k chyb\u011b."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "St\u00e1hn\u011bte aplikaci YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Tuto aplikaci nelze spustit bez aplikace YouTube, kterou v za\u0159\u00edzen\u00ed nem\u00e1te nainstalovanou"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "St\u00e1hnout aplikaci YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Aktivujte aplik. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Ke spu\u0161t\u011bn\u00ed t\u00e9to aplikace je t\u0159eba aktivovat aplikaci YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Zapnout aplikaci YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Aktualizujte apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Ke spu\u0161t\u011bn\u00ed t\u00e9to aplikace je t\u0159eba aktualizovat aplikaci YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Aktualizovat apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_22e
const-string v0, "da"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27e
const-string v0, "error_initializing_player"
const-string v1, "Der opstod en fejl under initialisering af YouTube-afspilleren."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "F\u00e5 YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Denne app kan ikke k\u00f8re uden YouTube-appen, som ikke findes p\u00e5 din enhed"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "F\u00e5 YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Aktiv\u00e9r YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Denne app fungerer ikke, medmindre du aktiverer YouTube-appen."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Aktiv\u00e9r YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Opdater YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Denne app fungerer ikke, hvis du ikke opdaterer YouTube-appen."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Opdater YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_27e
const-string v0, "de"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2ce
const-string v0, "error_initializing_player"
const-string v1, "Bei der Initialisierung des YouTube-Players ist ein Fehler aufgetreten."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube App herunterladen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Diese App kann nur ausgef\u00fchrt werden, wenn die YouTube App bereitgestellt ist. Diese ist auf deinem Ger\u00e4t nicht vorhanden."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube App herunterladen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube App aktivieren"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Diese App funktioniert nur, wenn die YouTube App aktiviert wird."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube App aktivieren"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube App aktualisieren"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Diese App funktioniert nur, wenn die YouTube App aktualisiert wird."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube App aktualisieren"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_2ce
const-string v0, "el"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31e
const-string v0, "error_initializing_player"
const-string v1, "\u03a0\u03b1\u03c1\u03bf\u03c5\u03c3\u03b9\u03ac\u03c3\u03c4\u03b7\u03ba\u03b5 \u03c3\u03c6\u03ac\u03bb\u03bc\u03b1 \u03ba\u03b1\u03c4\u03ac \u03c4\u03b7\u03bd \u03c0\u03c1\u03bf\u03b5\u03c4\u03bf\u03b9\u03bc\u03b1\u03c3\u03af\u03b1 \u03c4\u03bf\u03c5 \u03c0\u03c1\u03bf\u03b3\u03c1\u03ac\u03bc\u03bc\u03b1\u03c4\u03bf\u03c2 \u03b1\u03bd\u03b1\u03c0\u03b1\u03c1\u03b1\u03b3\u03c9\u03b3\u03ae\u03c2 \u03c4\u03bf\u03c5 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u039b\u03ae\u03c8\u03b7 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0394\u03b5\u03bd \u03b5\u03af\u03bd\u03b1\u03b9 \u03b4\u03c5\u03bd\u03b1\u03c4\u03ae \u03b7 \u03b5\u03ba\u03c4\u03ad\u03bb\u03b5\u03c3\u03b7 \u03b1\u03c5\u03c4\u03ae\u03c2 \u03c4\u03b7\u03c2 \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae\u03c2 \u03c7\u03c9\u03c1\u03af\u03c2 \u03c4\u03b7\u03bd \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae YouTube, \u03b7 \u03bf\u03c0\u03bf\u03af\u03b1 \u03b1\u03c0\u03bf\u03c5\u03c3\u03b9\u03ac\u03b6\u03b5\u03b9 \u03b1\u03c0\u03cc \u03c4\u03b7 \u03c3\u03c5\u03c3\u03ba\u03b5\u03c5\u03ae \u03c3\u03b1\u03c2"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u039b\u03ae\u03c8\u03b7 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0395\u03bd\u03b5\u03c1\u03b3\u03bf\u03c0\u03bf\u03af\u03b7\u03c3\u03b7 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0394\u03b5\u03bd \u03b5\u03af\u03bd\u03b1\u03b9 \u03b4\u03c5\u03bd\u03b1\u03c4\u03ae \u03b7 \u03bb\u03b5\u03b9\u03c4\u03bf\u03c5\u03c1\u03b3\u03af\u03b1 \u03b1\u03c5\u03c4\u03ae\u03c2 \u03c4\u03b7\u03c2 \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae\u03c2 \u03b5\u03ac\u03bd \u03b4\u03b5\u03bd \u03b5\u03bd\u03b5\u03c1\u03b3\u03bf\u03c0\u03bf\u03b9\u03ae\u03c3\u03b5\u03c4\u03b5 \u03c4\u03b7\u03bd \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0395\u03bd\u03b5\u03c1\u03b3\u03bf\u03c0\u03bf\u03af\u03b7\u03c3\u03b7 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u0395\u03bd\u03b7\u03bc\u03ad\u03c1\u03c9\u03c3\u03b7 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0394\u03b5\u03bd \u03b5\u03af\u03bd\u03b1\u03b9 \u03b4\u03c5\u03bd\u03b1\u03c4\u03ae \u03b7 \u03bb\u03b5\u03b9\u03c4\u03bf\u03c5\u03c1\u03b3\u03af\u03b1 \u03b1\u03c5\u03c4\u03ae\u03c2 \u03c4\u03b7\u03c2 \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae\u03c2 \u03b5\u03ac\u03bd \u03b4\u03b5\u03bd \u03b5\u03bd\u03b7\u03bc\u03b5\u03c1\u03ce\u03c3\u03b5\u03c4\u03b5 \u03c4\u03b7\u03bd \u03b5\u03c6\u03b1\u03c1\u03bc\u03bf\u03b3\u03ae YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u0395\u03bd\u03b7\u03bc\u03ad\u03c1\u03c9\u03c3\u03b7 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_31e
const-string v0, "en_GB"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36e
const-string v0, "error_initializing_player"
const-string v1, "An error occurred while initialising the YouTube player."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Get YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "This app won\'t run without the YouTube App, which is missing from your device"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Get YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Enable YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "This app won\'t work unless you enable the YouTube App."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Enable YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Update YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "This app won\'t work unless you update the YouTube App."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Update YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_36e
const-string v0, "es_US"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3be
const-string v0, "error_initializing_player"
const-string v1, "Se produjo un error al iniciar el reproductor de YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Obtener YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Esta aplicaci\u00f3n no se ejecutar\u00e1 sin la aplicaci\u00f3n YouTube, la cual no se instal\u00f3 en tu dispositivo."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Obtener YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Activar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Esta aplicaci\u00f3n no funcionar\u00e1 a menos que actives la aplicaci\u00f3n YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Activar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Actualizar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Esta aplicaci\u00f3n no funcionar\u00e1 a menos que actualices la aplicaci\u00f3n YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Actualizar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_3be
const-string v0, "es"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40e
const-string v0, "error_initializing_player"
const-string v1, "Se ha producido un error al iniciar el reproductor de YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Descarga YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Esta aplicaci\u00f3n no funcionar\u00e1 sin la aplicaci\u00f3n YouTube, que no est\u00e1 instalada en el dispositivo."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Descargar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Habilita la aplicaci\u00f3n YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Esta aplicaci\u00f3n no funcionar\u00e1 si no habilitas la aplicaci\u00f3n YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Habilitar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Actualiza YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Esta aplicaci\u00f3n no funcionar\u00e1 si no actualizas la aplicaci\u00f3n YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Actualizar YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_40e
const-string v0, "et"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45e
const-string v0, "error_initializing_player"
const-string v1, "YouTube\'i m\u00e4ngija l\u00e4htestamisel tekkis viga."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube\'i rak. hankimine"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Rakendus ei k\u00e4ivitu ilma YouTube\'i rakenduseta ja teie seadmes see praegu puudub"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Hangi YouTube\'i rakendus"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube\'i rakenduse lubamine"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Rakendus ei toimi, kui te ei luba kasutada YouTube\'i rakendust."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Luba YouTube\'i rakendus"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "V\u00e4rskenda YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Rakendus ei toimi enne, kui olete YouTube\'i rakendust v\u00e4rskendanud."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "V\u00e4rsk. YouTube\'i rakend."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_45e
const-string v0, "fa"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4ae
const-string v0, "error_initializing_player"
const-string v1, "\u0647\u0646\u06af\u0627\u0645 \u0645\u0642\u062f\u0627\u0631\u062f\u0647\u06cc \u0627\u0648\u0644\u06cc\u0647 \u067e\u062e\u0634\u200c\u06a9\u0646\u0646\u062f\u0647 YouTube\u060c \u062e\u0637\u0627\u06cc\u06cc \u0631\u0648\u06cc \u062f\u0627\u062f."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u062f\u0631\u06cc\u0627\u0641\u062a \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u0628\u062f\u0648\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube \u06a9\u0647 \u062f\u0631 \u062f\u0633\u062a\u06af\u0627\u0647 \u0634\u0645\u0627 \u0645\u0648\u062c\u0648\u062f \u0646\u06cc\u0633\u062a\u060c \u0627\u062c\u0631\u0627 \u0646\u0645\u06cc\u200c\u0634\u0648\u062f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u062f\u0631\u06cc\u0627\u0641\u062a \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0641\u0639\u0627\u0644 \u06a9\u0631\u062f\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u062a\u0646\u0647\u0627 \u062f\u0631 \u0635\u0648\u0631\u062a\u06cc \u06a9\u0627\u0631 \u062e\u0648\u0627\u0647\u062f \u06a9\u0631\u062f \u06a9\u0647 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube \u0631\u0627 \u0641\u0639\u0627\u0644 \u06a9\u0646\u06cc\u062f."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0641\u0639\u0627\u0644 \u06a9\u0631\u062f\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u0628\u0647\u200c\u0631\u0648\u0632\u0631\u0633\u0627\u0646\u06cc \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0627\u06cc\u0646 \u0628\u0631\u0646\u0627\u0645\u0647 \u06a9\u0627\u0631 \u0646\u062e\u0648\u0627\u0647\u062f \u06a9\u0631\u062f \u0645\u06af\u0631 \u0627\u06cc\u0646\u06a9\u0647 \u0628\u0631\u0646\u0627\u0645\u0647 YouTube \u0631\u0627 \u0628\u0647 \u0631\u0648\u0632 \u06a9\u0646\u06cc\u062f."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u0628\u0647\u200c\u0631\u0648\u0632\u0631\u0633\u0627\u0646\u06cc \u0628\u0631\u0646\u0627\u0645\u0647 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_4ae
const-string v0, "fi"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4fe
const-string v0, "error_initializing_player"
const-string v1, "Virhe alustettaessa YouTube-soitinta."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Hanki YouTube-sovellus"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "T\u00e4m\u00e4 sovellus ei toimi ilman YouTube-sovellusta, joka puuttuu laitteesta."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Hanki YouTube-sovellus"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Ota YouTube-sov. k\u00e4ytt\u00f6\u00f6n"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "T\u00e4m\u00e4 sovellus ei toimi, ellet ota YouTube-sovellusta k\u00e4ytt\u00f6\u00f6n."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Ota YouTube-sov. k\u00e4ytt\u00f6\u00f6n"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "P\u00e4ivit\u00e4 YouTube-sovellus"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "T\u00e4m\u00e4 sovellus ei toimi, ellet p\u00e4ivit\u00e4 YouTube-sovellusta."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "P\u00e4ivit\u00e4 YouTube-sovellus"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_4fe
const-string v0, "fr"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54e
const-string v0, "error_initializing_player"
const-string v1, "Une erreur s\'est produite lors de l\'initialisation du lecteur YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "T\u00e9l\u00e9charger appli YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Cette application ne fonctionnera pas sans l\'application YouTube, qui n\'est pas install\u00e9e sur votre appareil."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "T\u00e9l\u00e9charger appli YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Activer l\'appli YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Cette application ne fonctionnera que si vous activez l\'application YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Activer l\'appli YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Mise \u00e0 jour appli YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Cette application ne fonctionnera que si vous mettez \u00e0 jour l\'application YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Mise \u00e0 jour appli YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_54e
const-string v0, "hi"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_59e
const-string v0, "error_initializing_player"
const-string v1, "YouTube \u092a\u094d\u0932\u0947\u092f\u0930 \u0915\u094b \u092a\u094d\u0930\u093e\u0930\u0902\u092d \u0915\u0930\u0924\u0947 \u0938\u092e\u092f \u0915\u094b\u0908 \u0924\u094d\u0930\u0941\u091f\u093f \u0906\u0908."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u092a\u094d\u0930\u093e\u092a\u094d\u0924 \u0915\u0930\u0947\u0902"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u092f\u0939 \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 YouTube \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0915\u0947 \u092c\u093f\u0928\u093e \u0928\u0939\u0940\u0902 \u091a\u0932\u0947\u0917\u093e, \u091c\u094b \u0906\u092a\u0915\u0947 \u0909\u092a\u0915\u0930\u0923 \u092a\u0930 \u092e\u094c\u091c\u0942\u0926 \u0928\u0939\u0940\u0902 \u0939\u0948"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u092a\u094d\u0930\u093e\u092a\u094d\u0924 \u0915\u0930\u0947\u0902"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0938\u0915\u094d\u0937\u092e \u0915\u0930\u0947\u0902"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u091c\u092c \u0924\u0915 \u0906\u092a YouTube \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0938\u0915\u094d\u0937\u092e \u0928\u0939\u0940\u0902 \u0915\u0930\u0924\u0947, \u0924\u092c \u0924\u0915 \u092f\u0939 \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0915\u093e\u0930\u094d\u092f \u0928\u0939\u0940\u0902 \u0915\u0930\u0947\u0917\u093e."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0938\u0915\u094d\u0937\u092e \u0915\u0930\u0947\u0902"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0905\u092a\u0921\u0947\u091f \u0915\u0930\u0947\u0902"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u091c\u092c \u0924\u0915 \u0906\u092a YouTube \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0905\u092a\u0921\u0947\u091f \u0928\u0939\u0940\u0902 \u0915\u0930\u0924\u0947, \u0924\u092c \u0924\u0915 \u092f\u0939 \u090f\u092a\u094d\u0932\u093f\u0915\u0947\u0936\u0928 \u0915\u093e\u0930\u094d\u092f \u0928\u0939\u0940\u0902 \u0915\u0930\u0947\u0917\u093e."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube \u090f\u092a\u094d\u0932\u093f. \u0905\u092a\u0921\u0947\u091f \u0915\u0930\u0947\u0902"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_59e
const-string v0, "hr"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5ee
const-string v0, "error_initializing_player"
const-string v1, "Dogodila se pogre\u0161ka tijekom pokretanja playera usluge YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Preuzimanje apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Ova se aplikacija ne mo\u017ee pokrenuti bez aplikacije YouTube, koja nije instalirana na va\u0161 ure\u0111aj"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Preuzmi apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Omogu\u0107avanje apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Ova aplikacija ne\u0107e funkcionirati ako ne omogu\u0107ite aplikaciju YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Omogu\u0107i apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "A\u017euriranje apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Ova aplikacija ne\u0107e funkcionirati ako ne a\u017eurirate aplikaciju YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "A\u017euriraj apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_5ee
const-string v0, "hu"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_63e
const-string v0, "error_initializing_player"
const-string v1, "Hiba t\u00f6rt\u00e9nt a YouTube lej\u00e1tsz\u00f3 inicializ\u00e1l\u00e1sa sor\u00e1n."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube alk. let\u00f6lt\u00e9se"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Ez az alkalmaz\u00e1s nem fut a YouTube alkalmaz\u00e1s n\u00e9lk\u00fcl, amely hi\u00e1nyzik az eszk\u00f6z\u00e9r\u0151l."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube alk. let\u00f6lt\u00e9se"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube alkalmaz\u00e1s enged."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Az alkalmaz\u00e1s csak akkor fog m\u0171k\u00f6dni, ha enged\u00e9lyezi a YouTube alkalmaz\u00e1st."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube alkalmaz\u00e1s enged."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube alk. friss\u00edt\u00e9se"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Az alkalmaz\u00e1s csak akkor fog m\u0171k\u00f6dni, ha friss\u00edti a YouTube alkalmaz\u00e1st."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube alk. friss\u00edt\u00e9se"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_63e
const-string v0, "in"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_68e
const-string v0, "error_initializing_player"
const-string v1, "Terjadi kesalahan saat memulai pemutar YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Dapatkan Aplikasi YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Aplikasi ini tidak akan berjalan tanpa Aplikasi YouTube, yang hilang dari perangkat Anda"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Dapatkan Aplikasi YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Aktifkan Aplikasi YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Aplikasi ini tidak akan bekerja kecuali Anda mengaktifkan Aplikasi YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Aktifkan Aplikasi YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Perbarui Aplikasi YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Aplikasi ini tidak akan bekerja kecuali Anda memperbarui Aplikasi YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Perbarui Aplikasi YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_68e
const-string v0, "it"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6de
const-string v0, "error_initializing_player"
const-string v1, "Si \u00e8 verificato un errore durante l\'inizializzazione del player di YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Scarica app YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Questa applicazione non funzioner\u00e0 senza l\'applicazione YouTube che non \u00e8 presente sul tuo dispositivo"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Scarica app YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Attiva app YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Questa applicazione non funzioner\u00e0 se non attivi l\'applicazione YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Attiva app YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Aggiorna app YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Questa applicazione non funzioner\u00e0 se non aggiorni l\'applicazione YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Aggiorna app YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_6de
const-string v0, "iw"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_72e
const-string v0, "error_initializing_player"
const-string v1, "\u05d0\u05d9\u05e8\u05e2\u05d4 \u05e9\u05d2\u05d9\u05d0\u05d4 \u05d1\u05e2\u05ea \u05d0\u05ea\u05d7\u05d5\u05dc \u05e0\u05d2\u05df YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u05e7\u05d1\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05e4\u05e2\u05dc \u05dc\u05dc\u05d0 \u05d9\u05d9\u05e9\u05d5\u05dd YouTube, \u05e9\u05d0\u05d9\u05e0\u05d5 \u05de\u05d5\u05ea\u05e7\u05df \u05d1\u05de\u05db\u05e9\u05d9\u05e8 \u05e9\u05dc\u05da"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u05e7\u05d1\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u05d4\u05e4\u05e2\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05e2\u05d1\u05d5\u05d3 \u05d0\u05dc\u05d0 \u05d0\u05dd \u05ea\u05e4\u05e2\u05d9\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u05d4\u05e4\u05e2\u05dc \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u05e2\u05d3\u05db\u05df \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4 \u05dc\u05d0 \u05d9\u05e2\u05d1\u05d5\u05d3 \u05d0\u05dc\u05d0 \u05d0\u05dd \u05ea\u05e2\u05d3\u05db\u05df \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u05e2\u05d3\u05db\u05df \u05d0\u05ea \u05d9\u05d9\u05e9\u05d5\u05dd YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_72e
const-string v0, "ja"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_77e
const-string v0, "error_initializing_player"
const-string v1, "YouTube\u30d7\u30ec\u30fc\u30e4\u30fc\u306e\u521d\u671f\u5316\u4e2d\u306b\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube\u30a2\u30d7\u30ea\u3092\u5165\u624b"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u3053\u306e\u30a2\u30d7\u30ea\u306e\u5b9f\u884c\u306b\u5fc5\u8981\u306aYouTube\u30a2\u30d7\u30ea\u304c\u7aef\u672b\u306b\u3042\u308a\u307e\u305b\u3093"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube\u30a2\u30d7\u30ea\u3092\u5165\u624b"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube\u30a2\u30d7\u30ea\u3092\u6709\u52b9\u5316"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u3053\u306e\u30a2\u30d7\u30ea\u306e\u5b9f\u884c\u306b\u306fYouTube\u30a2\u30d7\u30ea\u306e\u6709\u52b9\u5316\u304c\u5fc5\u8981\u3067\u3059\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube\u30a2\u30d7\u30ea\u3092\u6709\u52b9\u5316"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube\u30a2\u30d7\u30ea\u3092\u66f4\u65b0"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u3053\u306e\u30a2\u30d7\u30ea\u306e\u5b9f\u884c\u306b\u306fYouTube\u30a2\u30d7\u30ea\u306e\u66f4\u65b0\u304c\u5fc5\u8981\u3067\u3059\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube\u30a2\u30d7\u30ea\u3092\u66f4\u65b0"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_77e
const-string v0, "ko"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7ce
const-string v0, "error_initializing_player"
const-string v1, "YouTube \ud50c\ub808\uc774\uc5b4\ub97c \ucd08\uae30\ud654\ud558\ub294 \uc911\uc5d0 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube \uc571 \ub2e4\uc6b4\ub85c\ub4dc"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\uc774 \uc571\uc740 \ub0b4 \uae30\uae30\uc5d0 YouTube \uc571\uc774 \uc5c6\uc5b4\uc11c \uc2e4\ud589\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube \uc571 \ub2e4\uc6b4\ub85c\ub4dc"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube \uc571 \uc0ac\uc6a9 \uc124\uc815"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\uc774 \uc571\uc740 YouTube \uc571\uc744 \uc0ac\uc6a9\ud558\ub3c4\ub85d \uc124\uc815\ud558\uc9c0 \uc54a\uc73c\uba74 \uc791\ub3d9\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube \uc571 \uc0ac\uc6a9"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube \uc571 \uc5c5\ub370\uc774\ud2b8"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\uc774 \uc571\uc740 YouTube \uc571\uc744 \uc5c5\ub370\uc774\ud2b8\ud558\uc9c0 \uc54a\uc73c\uba74 \uc791\ub3d9\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube \uc571 \uc5c5\ub370\uc774\ud2b8"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_7ce
const-string v0, "lt"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_81e
const-string v0, "error_initializing_player"
const-string v1, "Inicijuojant \u201eYouTube\u201c grotuv\u0105 \u012fvyko klaida."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Gauti \u201eYouTube\u201c program\u0105"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0160i programa neveikia be \u201eYouTube\u201c programos, o jos \u012frenginyje n\u0117ra."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Gauti \u201eYouTube\u201c program\u0105"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u012egalinti \u201eYouTube\u201c progr."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0160i programa neveiks, jei ne\u012fgalinsite \u201eYouTube\u201c programos."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u012egalinti \u201eYouTube\u201c progr."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Atnauj. \u201eYouTube\u201c progr."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0160i programa neveiks, jei neatnaujinsite \u201eYouTube\u201c programos."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Atnauj. \u201eYouTube\u201c progr."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_81e
const-string v0, "lv"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_86e
const-string v0, "error_initializing_player"
const-string v1, "Inicializ\u0113jot YouTube atska\u0146ot\u0101ju, rad\u0101s k\u013c\u016bda."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube liet. ieg\u016b\u0161ana"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0160\u012b lietotne nedarbosies bez YouTube lietotnes, kuras nav \u0161aj\u0101 ier\u012bc\u0113."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Ieg\u016bt YouTube lietotni"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube liet. iesp\u0113jo\u0161ana"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Lai \u0161\u012b lietotne darbotos, iesp\u0113jojiet YouTube lietotni."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Iesp\u0113jot YouTube lietotni"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube liet. atjaunin."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Lai \u0161\u012b lietotne darbotos, atjauniniet YouTube lietotni."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Atjaun. YouTube lietotni"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_86e
const-string v0, "ms"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8be
const-string v0, "error_initializing_player"
const-string v1, "Ralat berlaku semasa memulakan alat main YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Dapatkan Apl YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Apl ini tidak akan berjalan tanpa Apl YouTube, yang tidak ada pada peranti anda"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Dapatkan Apl YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Dayakan Apl YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Apl ini tidak akan berfungsi kecuali anda mendayakan Apl YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Dayakan Apl YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Kemas kini Apl YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Apl ini tidak akan berfungsi kecuali anda mengemas kini Apl YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Kemas kini Apl YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_8be
const-string v0, "nb"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_90e
const-string v0, "error_initializing_player"
const-string v1, "Det oppsto en feil da YouTube-avspilleren startet."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Skaff deg YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Denne appen kan ikke kj\u00f8re uten YouTube-appen, som du ikke har p\u00e5 enheten"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Skaff deg YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Aktiver YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Denne appen fungerer ikke f\u00f8r du aktiverer YouTube-appen."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Aktiver YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Oppdater YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Denne appen fungerer ikke f\u00f8r du oppdaterer YouTube-appen."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Oppdater YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_90e
const-string v0, "nl"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_95e
const-string v0, "error_initializing_player"
const-string v1, "Er is een fout opgetreden bij het initialiseren van de YouTube-speler."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube-app downloaden"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Deze app wordt niet uitgevoerd zonder de YouTube-app, die op uw apparaat ontbreekt"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube-app downloaden"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube-app inschakelen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Deze app werkt niet, tenzij u de YouTube-app inschakelt."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube-app inschakelen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube-app bijwerken"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Deze app werkt niet, tenzij u de YouTube-app bijwerkt."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube-app bijwerken"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_95e
const-string v0, "pl"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9ae
const-string v0, "error_initializing_player"
const-string v1, "Podczas inicjowania odtwarzacza YouTube wyst\u0105pi\u0142 b\u0142\u0105d."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Pobierz aplikacj\u0119 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Ta aplikacja nie b\u0119dzie dzia\u0142a\u0107 bez aplikacji YouTube, kt\u00f3rej nie ma na tym urz\u0105dzeniu"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Pobierz aplikacj\u0119 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "W\u0142\u0105cz aplikacj\u0119 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Ta aplikacja nie b\u0119dzie dzia\u0142a\u0107, je\u015bli nie w\u0142\u0105czysz aplikacji YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "W\u0142\u0105cz aplikacj\u0119 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Zaktualizuj aplikacj\u0119 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Ta aplikacja nie b\u0119dzie dzia\u0142a\u0107, je\u015bli nie zaktualizujesz aplikacji YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Zaktualizuj aplikacj\u0119 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_9ae
const-string v0, "pt_PT"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9fe
const-string v0, "error_initializing_player"
const-string v1, "Ocorreu um erro ao iniciar o leitor do YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Obter a Aplica\u00e7\u00e3o YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Esta aplica\u00e7\u00e3o n\u00e3o ser\u00e1 executada sem a Aplica\u00e7\u00e3o YouTube, que est\u00e1 em falta no seu dispositivo"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Obter a Aplica\u00e7\u00e3o YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Ativar Aplica\u00e7\u00e3o YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Esta aplica\u00e7\u00e3o n\u00e3o ir\u00e1 funcionar enquanto n\u00e3o ativar a Aplica\u00e7\u00e3o YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Ativar Aplica\u00e7\u00e3o YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Atualizar Aplica. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Esta aplica\u00e7\u00e3o n\u00e3o ir\u00e1 funcionar enquanto n\u00e3o atualizar a Aplica\u00e7\u00e3o YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Atualizar Aplica. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_9fe
const-string v0, "pt"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a4e
const-string v0, "error_initializing_player"
const-string v1, "Ocorreu um erro ao inicializar o player do YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Obter aplicativo YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Este aplicativo s\u00f3 funciona com o aplicativo YouTube, que est\u00e1 ausente no dispositivo."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Obter aplicativo YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Ativar aplicativo YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Este aplicativo s\u00f3 funciona com o aplicativo YouTube ativado."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Ativar aplicativo YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Atualizar aplic. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Este aplicativo s\u00f3 funciona com o aplicativo YouTube atualizado."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Atualizar aplic. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_a4e
const-string v0, "ro"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a9e
const-string v0, "error_initializing_player"
const-string v1, "A ap\u0103rut o eroare la ini\u0163ializarea playerului YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Desc\u0103rca\u0163i YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Aceast\u0103 aplica\u0163ie nu va rula f\u0103r\u0103 aplica\u0163ia YouTube, care lipse\u015fte de pe gadget"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Desc\u0103rca\u0163i YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Activa\u0163i YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Aceast\u0103 aplica\u0163ie nu va func\u0163iona dec\u00e2t dac\u0103 activa\u0163i aplica\u0163ia YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Activa\u0163i YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Actualiza\u0163i YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Aceast\u0103 aplica\u0163ie nu va func\u0163iona dec\u00e2t dac\u0103 actualiza\u0163i aplica\u0163ia YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Actualiza\u0163i YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_a9e
const-string v0, "ru"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_aee
const-string v0, "error_initializing_player"
const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u043f\u0440\u043e\u0438\u0433\u0440\u044b\u0432\u0430\u0442\u0435\u043b\u044c YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u044d\u0442\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443, \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0410\u043a\u0442\u0438\u0432\u0430\u0446\u0438\u044f YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u044d\u0442\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443, \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0443\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u0442\u044c YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0427\u0442\u043e\u0431\u044b \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u044d\u0442\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443, \u043e\u0431\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_aee
const-string v0, "sk"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b3e
const-string v0, "error_initializing_player"
const-string v1, "Pri inicializ\u00e1cii prehr\u00e1va\u010da YouTube sa vyskytla chyba."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Z\u00edska\u0165 aplik\u00e1ciu YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "T\u00fato aplik\u00e1ciu nebude mo\u017en\u00e9 spusti\u0165 bez aplik\u00e1cie YouTube, ktor\u00e1 na zariaden\u00ed nie je nain\u0161talovan\u00e1."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Z\u00edska\u0165 aplik\u00e1ciu YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Povoli\u0165 aplik\u00e1ciu YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "T\u00e1to aplik\u00e1cia bude fungova\u0165 a\u017e po povolen\u00ed aplik\u00e1cie YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Povoli\u0165 aplik\u00e1ciu YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Aktualizova\u0165 apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "T\u00e1to aplik\u00e1cia bude fungova\u0165 a\u017e po aktualiz\u00e1cii aplik\u00e1cie YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Aktualizova\u0165 apl. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_b3e
const-string v0, "sl"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b8e
const-string v0, "error_initializing_player"
const-string v1, "Napaka med inicializacijo YouTubovega predvajalnika."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Prenos aplikacije YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Ta aplikacija ne bo delovala brez aplikacije YouTube, ki je ni v va\u0161i napravi"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Prenos aplikacije YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Omog. aplikacije YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Ta aplikacija ne bo delovala, \u010de ne omogo\u010dite aplikacije YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Omog. aplikacijo YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Posodob. aplikacije YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Ta aplikacija ne bo delovala, \u010de ne posodobite aplikacije YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Posod. aplikacijo YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_b8e
const-string v0, "sr"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_bde
const-string v0, "error_initializing_player"
const-string v1, "\u0414\u043e\u0448\u043b\u043e \u0458\u0435 \u0434\u043e \u0433\u0440\u0435\u0448\u043a\u0435 \u043f\u0440\u0438 \u043f\u043e\u043a\u0440\u0435\u0442\u0430\u045a\u0443 YouTube \u043f\u043b\u0435\u0458\u0435\u0440\u0430."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u041f\u0440\u0435\u0443\u0437\u0438\u043c\u0430\u045a\u0435 \u0430\u043f\u043b\u0438\u043a. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u041e\u0432\u0430 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0430 \u043d\u0435\u045b\u0435 \u0444\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0438\u0441\u0430\u0442\u0438 \u0431\u0435\u0437 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0435 YouTube, \u043a\u043e\u0458\u0430 \u043d\u0435\u0434\u043e\u0441\u0442\u0430\u0458\u0435 \u043d\u0430 \u0443\u0440\u0435\u0452\u0430\u0458\u0443"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u041f\u0440\u0435\u0443\u0437\u043c\u0438 \u0430\u043f\u043b\u0438\u043a\u0430\u0446. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u041e\u043c\u043e\u0433\u0443\u045b\u0430\u0432\u0430\u045a\u0435 \u0430\u043f\u043b. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u041e\u0432\u0430 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0435 \u043d\u0435\u045b\u0435 \u0444\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0438\u0441\u0430\u0442\u0438 \u0430\u043a\u043e \u043d\u0435 \u043e\u043c\u043e\u0433\u0443\u045b\u0438\u0442\u0435 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0443 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u041e\u043c\u043e\u0433\u0443\u045b\u0438 \u0430\u043f\u043b\u0438\u043a\u0430\u0446. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u0410\u0436\u0443\u0440\u0438\u0440\u0430\u045a\u0435 \u0430\u043f\u043b\u0438\u043a. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u041e\u0432\u0430 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0435 \u043d\u0435\u045b\u0435 \u0444\u0443\u043d\u043a\u0446\u0438\u043e\u043d\u0438\u0441\u0430\u0442\u0438 \u0430\u043a\u043e \u043d\u0435 \u0430\u0436\u0443\u0440\u0438\u0440\u0430\u0442\u0435 \u0430\u043f\u043b\u0438\u043a\u0430\u0446\u0438\u0458\u0443 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u0410\u0436\u0443\u0440\u0438\u0440\u0430\u0458 \u0430\u043f\u043b\u0438\u043a\u0430\u0446. YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_bde
const-string v0, "sv"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c2e
const-string v0, "error_initializing_player"
const-string v1, "Ett fel uppstod n\u00e4r YouTube-spelaren skulle startas."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "H\u00e4mta YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "YouTube-appen kr\u00e4vs f\u00f6r att den h\u00e4r appen ska kunna k\u00f6ras. Du har inte YouTube-appen p\u00e5 din enhet."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "H\u00e4mta YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Aktivera YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Du m\u00e5ste aktivera YouTube-appen f\u00f6r att den h\u00e4r appen ska fungera."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Aktivera YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Uppdatera YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Du m\u00e5ste uppdatera YouTube-appen f\u00f6r att den h\u00e4r appen ska fungera."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Uppdatera YouTube-appen"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_c2e
const-string v0, "sw"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c7e
const-string v0, "error_initializing_player"
const-string v1, "Hitilafu ilitokea wakati wa kuanzisha kichezeshi cha YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Pata Programu ya YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Programu hii haitaendeshwa bila Programu ya YouTube, ambayo inakosekana kwenye kifaa chako."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Pata Programu ya YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Wezesha Programu ya YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Programu hii haitafanya kazi isipokuwa uwezeshe Programu ya YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Wezesha Programu ya YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Sasisha Programu ya YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Programu hii haitafanya kazi mpaka usasishe Programu ya YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Sasisha Programu ya YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_c7e
const-string v0, "th"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_cce
const-string v0, "error_initializing_player"
const-string v1, "\u0e40\u0e01\u0e34\u0e14\u0e02\u0e49\u0e2d\u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14\u0e43\u0e19\u0e02\u0e13\u0e30\u0e40\u0e23\u0e34\u0e48\u0e21\u0e15\u0e49\u0e19\u0e42\u0e1b\u0e23\u0e41\u0e01\u0e23\u0e21\u0e40\u0e25\u0e48\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u0e23\u0e31\u0e1a\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e19\u0e35\u0e49\u0e08\u0e30\u0e44\u0e21\u0e48\u0e17\u0e33\u0e07\u0e32\u0e19\u0e2b\u0e32\u0e01\u0e44\u0e21\u0e48\u0e21\u0e35\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube \u0e0b\u0e36\u0e48\u0e07\u0e44\u0e21\u0e48\u0e21\u0e35\u0e43\u0e19\u0e2d\u0e38\u0e1b\u0e01\u0e23\u0e13\u0e4c\u0e02\u0e2d\u0e07\u0e04\u0e38\u0e13"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u0e23\u0e31\u0e1a\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0e40\u0e1b\u0e34\u0e14\u0e43\u0e0a\u0e49\u0e07\u0e32\u0e19\u0e41\u0e2d\u0e1b YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e19\u0e35\u0e49\u0e08\u0e30\u0e44\u0e21\u0e48\u0e17\u0e33\u0e07\u0e32\u0e19\u0e08\u0e19\u0e01\u0e27\u0e48\u0e32\u0e04\u0e38\u0e13\u0e08\u0e30\u0e40\u0e1b\u0e34\u0e14\u0e43\u0e0a\u0e49\u0e07\u0e32\u0e19\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0e40\u0e1b\u0e34\u0e14\u0e43\u0e0a\u0e49\u0e07\u0e32\u0e19\u0e41\u0e2d\u0e1b YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u0e2d\u0e31\u0e1b\u0e40\u0e14\u0e15\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e19\u0e35\u0e49\u0e08\u0e30\u0e44\u0e21\u0e48\u0e17\u0e33\u0e07\u0e32\u0e19\u0e08\u0e19\u0e01\u0e27\u0e48\u0e32\u0e04\u0e38\u0e13\u0e08\u0e30\u0e2d\u0e31\u0e1b\u0e40\u0e14\u0e15\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u0e2d\u0e31\u0e1b\u0e40\u0e14\u0e15\u0e41\u0e2d\u0e1b\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_cce
const-string v0, "tl"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d1e
const-string v0, "error_initializing_player"
const-string v1, "May naganap na error habang sinisimulan ang player ng YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Kunin ang YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Hindi gagana ang app na ito nang wala ang YouTube App, na nawawala sa iyong device"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Kunin ang YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Paganahin ang YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Hindi gagana ang app na ito maliban kung paganahin mo ang YouTube App."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Paganahin ang YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "I-update ang YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Hindi gagana ang app na ito maliban kung i-update mo ang YouTube App."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "I-update ang YouTube App"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_d1e
const-string v0, "tr"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d6e
const-string v0, "error_initializing_player"
const-string v1, "YouTube oynat\u0131c\u0131s\u0131 ba\u015flat\u0131l\u0131rken bir hata olu\u015ftu."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "YouTube Uygulamas\u0131n\u0131 edinin"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Cihaz\u0131n\u0131zda bulunmayan YouTube Uygulamas\u0131 olmadan bu uygulama \u00e7al\u0131\u015fmaz"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "YouTube Uygulamas\u0131n\u0131 edinin"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "YouTube Uygulamas\u0131n\u0131 etkinle\u015ftirin"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "YouTube Uygulamas\u0131n\u0131 etkinle\u015ftirmedi\u011finiz s\u00fcrece bu uygulama \u00e7al\u0131\u015fmaz."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "YouTube Uygulamas\u0131n\u0131 etkinle\u015ftirin"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "YouTube Uygulamas\u0131n\u0131 g\u00fcncelleyin"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "YouTube Uygulamas\u0131 g\u00fcncellenmedik\u00e7e bu uygulama \u00e7al\u0131\u015fmaz."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "YouTube Uygulamas\u0131n\u0131 g\u00fcncelle"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_d6e
const-string v0, "uk"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_dbe
const-string v0, "error_initializing_player"
const-string v1, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u0456\u043d\u0456\u0446\u0456\u0430\u043b\u0456\u0437\u0430\u0446\u0456\u0457 \u043f\u0440\u043e\u0433\u0440\u0430\u0432\u0430\u0447\u0430 YouTube \u0441\u0442\u0430\u043b\u0430\u0441\u044f \u043f\u043e\u043c\u0438\u043b\u043a\u0430."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u041e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u0426\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0435 \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c\u0441\u044f \u0431\u0435\u0437 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 YouTube, \u044f\u043a\u0443 \u043d\u0435 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e \u043d\u0430 \u0432\u0430\u0448\u043e\u043c\u0443 \u043f\u0440\u0438\u0441\u0442\u0440\u043e\u0457"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u041e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u0423\u0432\u0456\u043c\u043a. \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u0426\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438\u043c\u0435, \u043f\u043e\u043a\u0438 \u0432\u0438 \u043d\u0435 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u0423\u0432\u0456\u043c\u043a. \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u0426\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438\u043c\u0435, \u043f\u043e\u043a\u0438 \u0432\u0438 \u043d\u0435 \u043e\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0443 YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_dbe
const-string v0, "vi"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e0e
const-string v0, "error_initializing_player"
const-string v1, "\u0110\u00e3 x\u1ea3y ra l\u1ed7i trong khi kh\u1edfi ch\u1ea1y tr\u00ecnh ph\u00e1t YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "T\u1ea3i \u1ee9ng d\u1ee5ng YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u1ee8ng d\u1ee5ng n\u00e0y s\u1ebd kh\u00f4ng ch\u1ea1y n\u1ebfu kh\u00f4ng c\u00f3 \u1ee9ng d\u1ee5ng YouTube, \u1ee9ng d\u1ee5ng n\u00e0y b\u1ecb thi\u1ebfu trong thi\u1ebft b\u1ecb c\u1ee7a b\u1ea1n"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "T\u1ea3i \u1ee9ng d\u1ee5ng YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "B\u1eadt \u1ee9ng d\u1ee5ng YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u1ee8ng d\u1ee5ng n\u00e0y s\u1ebd kh\u00f4ng ho\u1ea1t \u0111\u1ed9ng tr\u1eeb khi b\u1ea1n b\u1eadt \u1ee9ng d\u1ee5ng YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "B\u1eadt \u1ee9ng d\u1ee5ng YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "C\u1eadp nh\u1eadt \u1ee9ng d\u1ee5ng YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u1ee8ng d\u1ee5ng n\u00e0y s\u1ebd kh\u00f4ng ho\u1ea1t \u0111\u1ed9ng tr\u1eeb khi b\u1ea1n c\u1eadp nh\u1eadt \u1ee9ng d\u1ee5ng YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "C\u1eadp nh\u1eadt \u1ee9ng d\u1ee5ng YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_e0e
const-string v0, "zh_CN"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e5e
const-string v0, "error_initializing_player"
const-string v1, "\u521d\u59cb\u5316 YouTube \u64ad\u653e\u5668\u65f6\u51fa\u73b0\u9519\u8bef\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u83b7\u53d6 YouTube \u5e94\u7528"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u60a8\u7684\u8bbe\u5907\u4e2d\u6ca1\u6709 YouTube \u5e94\u7528\uff0c\u60a8\u5fc5\u987b\u5148\u5b89\u88c5 YouTube \u5e94\u7528\u624d\u80fd\u8fd0\u884c\u6b64\u5e94\u7528\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u83b7\u53d6 YouTube \u5e94\u7528"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u542f\u7528 YouTube \u5e94\u7528"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u60a8\u9700\u8981\u542f\u7528 YouTube \u5e94\u7528\u624d\u80fd\u8fd0\u884c\u8be5\u5e94\u7528\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u542f\u7528 YouTube \u5e94\u7528"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u66f4\u65b0 YouTube \u5e94\u7528"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u60a8\u5fc5\u987b\u66f4\u65b0 YouTube \u5e94\u7528\u624d\u80fd\u8fd0\u884c\u6b64\u5e94\u7528\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u66f4\u65b0 YouTube \u5e94\u7528"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_e5e
const-string v0, "zh_TW"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_eae
const-string v0, "error_initializing_player"
const-string v1, "\u521d\u59cb\u5316 YouTube \u64ad\u653e\u5668\u6642\u767c\u751f\u932f\u8aa4\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "\u53d6\u5f97 YouTube \u61c9\u7528\u7a0b\u5f0f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "\u60a8\u5fc5\u9808\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f\uff0c\u9019\u500b\u61c9\u7528\u7a0b\u5f0f\u624d\u80fd\u904b\u4f5c\uff0c\u4f46\u7cfb\u7d71\u5728\u88dd\u7f6e\u4e2d\u627e\u4e0d\u5230 YouTube \u61c9\u7528\u7a0b\u5f0f\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "\u53d6\u5f97 YouTube \u61c9\u7528\u7a0b\u5f0f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "\u60a8\u5fc5\u9808\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f\uff0c\u9019\u500b\u61c9\u7528\u7a0b\u5f0f\u624d\u80fd\u904b\u4f5c\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "\u555f\u7528 YouTube \u61c9\u7528\u7a0b\u5f0f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "\u66f4\u65b0 YouTube \u61c9\u7528\u7a0b\u5f0f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "\u60a8\u5fc5\u9808\u66f4\u65b0 YouTube \u61c9\u7528\u7a0b\u5f0f\uff0c\u9019\u500b\u61c9\u7528\u7a0b\u5f0f\u624d\u80fd\u904b\u4f5c\u3002"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "\u66f4\u65b0 YouTube \u61c9\u7528\u7a0b\u5f0f"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
:cond_eae
const-string v0, "zu"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
const-string v0, "error_initializing_player"
const-string v1, "Kuvele iphutha ngenkathi kuqaliswa isidlali se-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_title"
const-string v1, "Thola uhlelo lokusebenza lwe-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_text"
const-string v1, "Lolu hlelo kusebenza angeke lusebenze ngaphandle kohlelo lokusebenza lwe-YouTube, olungekho kudivayisi yakho"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "get_youtube_app_action"
const-string v1, "Thola uhelo lokusebenza lwe-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_title"
const-string v1, "Nika amandla uhlelo lokusebenza lwe-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_text"
const-string v1, "Lolu hlelo lokusebenza angeke lusebenze uma unganikanga amandla uhlelo lokusebenza lwe-YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "enable_youtube_app_action"
const-string v1, "Nika amandla uhlelo lokusebenza lwe-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_title"
const-string v1, "Buyekeza uhlelo lokusebenza lwe-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_text"
const-string v1, "Lolu hlelo lokusebenza angeke lusebenze uma ungabuyekezanga uhlelo lokusebenza lwe-YouTube."
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "update_youtube_app_action"
const-string v1, "Buyekeza uhlelo lokusebenza lwe-YouTube"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_4e
.end method
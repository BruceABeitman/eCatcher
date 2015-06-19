.class public Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field private final a:Ljava/util/regex/Pattern;
.field private final b:Ljava/util/regex/Pattern;
.field private final c:Ljava/util/regex/Pattern;
.field private final d:Ljava/util/regex/Pattern;
.field private final e:Ljava/util/regex/Pattern;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const-string v0, "(^|&)utm_source=([^&#=]*)([#&]|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a:Ljava/util/regex/Pattern;
const-string v0, "(^|&)utm_medium=([^&#=]*)([#&]|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->b:Ljava/util/regex/Pattern;
const-string v0, "(^|&)utm_campaign=([^&#=]*)([#&]|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->c:Ljava/util/regex/Pattern;
const-string v0, "(^|&)utm_content=([^&#=]*)([#&]|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->d:Ljava/util/regex/Pattern;
const-string v0, "(^|&)utm_term=([^&#=]*)([#&]|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->e:Ljava/util/regex/Pattern;
return-void
.end method
.method private static a(Ljava/util/regex/Matcher;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x2
invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
:try_start_d
const-string v1, "UTF-8"
invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_12
.catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_12} :catch_14
move-result-object v0
:goto_13
return-object v0
:catch_14
move-exception v0
const-string v0, "Mixpanel InstallReferrer"
const-string v1, "Could not decode a parameter into UTF-8"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
const/4 v0, 0x0
goto :goto_13
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
const-string v1, "referrer"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "referrer"
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a:Ljava/util/regex/Pattern;
invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2a
const-string v3, "utm_source"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2a
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->b:Ljava/util/regex/Pattern;
invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3b
const-string v3, "utm_medium"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3b
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->c:Ljava/util/regex/Pattern;
invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_4c
const-string v3, "utm_campaign"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4c
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->d:Ljava/util/regex/Pattern;
invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_5d
const-string v3, "utm_content"
invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5d
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->e:Ljava/util/regex/Pattern;
invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/InstallReferrerReceiver;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6e
const-string v2, "utm_term"
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_6e
const-string v0, "com.mixpanel.android.mpmetrics.ReferralInfo"
invoke-static {p1, v0, v1}, Lcom/mixpanel/android/mpmetrics/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
goto :goto_6
.end method
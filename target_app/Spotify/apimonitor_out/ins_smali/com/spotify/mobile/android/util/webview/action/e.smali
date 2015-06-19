.class public final Lcom/spotify/mobile/android/util/webview/action/e;
.super Lcom/spotify/mobile/android/util/webview/action/b;
.source "SourceFile"
.field private a:Ljava/util/Map;
.field private c:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/webview/action/b;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/e;->a:Ljava/util/Map;
iput-object p1, p0, Lcom/spotify/mobile/android/util/webview/action/e;->c:Landroid/content/Context;
return-void
.end method
.method private static a(Ljava/util/Map;Lcom/spotify/mobile/android/util/ClientEvent$Event;)Lcom/spotify/mobile/android/util/ClientEvent;
.registers 7
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
invoke-direct {v2, p1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
goto :goto_d
:cond_29
const-string v0, "date"
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v3, "EEE MMM dd yyyy HH:mm:ss \'GMT\'Z"
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
const-string v3, "GMT"
invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "testing-test-group"
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
return-object v2
.end method
.method public final a()V
.registers 6
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/webview/action/e;->b()Ljava/util/Map;
move-result-object v2
const-string v0, "key"
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "value"
invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_25
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_25
iget-object v3, p0, Lcom/spotify/mobile/android/util/webview/action/e;->a:Ljava/util/Map;
invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_25
const-string v0, "survey_shown"
invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/e;->a:Ljava/util/Map;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->at:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/webview/action/e;->a(Ljava/util/Map;Lcom/spotify/mobile/android/util/ClientEvent$Event;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
const-class v1, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v1, p0, Lcom/spotify/mobile/android/util/webview/action/e;->c:Landroid/content/Context;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->N:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v1, v3, v4, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_43
const-string v0, "submit"
invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/e;->a:Ljava/util/Map;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->as:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/webview/action/e;->a(Ljava/util/Map;Lcom/spotify/mobile/android/util/ClientEvent$Event;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
const-class v1, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v1, p0, Lcom/spotify/mobile/android/util/webview/action/e;->c:Landroid/content/Context;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->N:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_61
return-void
.end method
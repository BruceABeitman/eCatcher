.class public final Lcom/spotify/mobile/android/util/tracking/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private b:Lcom/facebook/AppEventsLogger;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/g;->a:Landroid/content/Context;
return-void
.end method
.method public final a()V
.registers 2
invoke-static {}, Lcom/facebook/AppEventsLogger;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/g;->b:Lcom/facebook/AppEventsLogger;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v1, 0x0
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$Event;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aJ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
const-string v0, "Logging app activation"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/g;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/AppEventsLogger;->a(Landroid/content/Context;)V
:goto_25
:cond_25
return-void
:cond_26
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aq:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientEvent$Event;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_25
:try_start_32
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "account-type"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "Logging successful signup with %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "fb_registration_method"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/g;->b:Lcom/facebook/AppEventsLogger;
if-nez v0, :cond_5e
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/g;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/AppEventsLogger;->b(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/g;->b:Lcom/facebook/AppEventsLogger;
:cond_5e
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/g;->b:Lcom/facebook/AppEventsLogger;
const-string v2, "fb_mobile_complete_registration"
invoke-virtual {v0, v2, v1}, Lcom/facebook/AppEventsLogger;->a(Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_65
.catch Lorg/json/JSONException; {:try_start_32 .. :try_end_65} :catch_66
goto :goto_25
:catch_66
move-exception v0
const-string v1, "mangled json in clientevent"
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_25
.end method
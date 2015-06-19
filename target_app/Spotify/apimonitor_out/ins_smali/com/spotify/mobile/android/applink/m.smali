.class public final Lcom/spotify/mobile/android/applink/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/Integer;
.field private final b:Ljava/lang/String;
.field private c:Landroid/content/Context;
.field private final d:Lcom/spotify/mobile/android/ui/actions/a;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/m;->a:Ljava/lang/Integer;
const-string v0, "232323"
iput-object v0, p0, Lcom/spotify/mobile/android/applink/m;->b:Ljava/lang/String;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/m;->d:Lcom/spotify/mobile/android/ui/actions/a;
iput-object p1, p0, Lcom/spotify/mobile/android/applink/m;->c:Landroid/content/Context;
return-void
.end method
.method public final a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_7
const-string v0, "playback-id"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const-string v2, "232323"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "connected"
invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "accessory-id"
iget-object v2, p0, Lcom/spotify/mobile/android/applink/m;->a:Ljava/lang/Integer;
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "model-number"
invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "name"
invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_27
:try_end_27
.catch Lorg/json/JSONException; {:try_start_7 .. :try_end_27} :catch_50
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->X:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bP:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v2, "AutomotiveAccessory"
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v2, "Sending client event with data %s"
new-array v3, v5, [Ljava/lang/Object;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/m;->d:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/m;->c:Landroid/content/Context;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->bg:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
:catch_50
move-exception v0
const-string v2, "Could not setup automotiveAccessory JSON"
new-array v3, v5, [Ljava/lang/Object;
aput-object v0, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_27
.end method
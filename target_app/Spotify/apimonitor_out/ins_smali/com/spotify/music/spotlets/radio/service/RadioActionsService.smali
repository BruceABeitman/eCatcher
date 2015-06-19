.class public Lcom/spotify/music/spotlets/radio/service/RadioActionsService;
.super Landroid/app/Service;
.source "SourceFile"
.implements Lcom/spotify/music/spotlets/radio/service/f;
.field private final a:Lcom/spotify/music/spotlets/radio/service/i;
.field private b:Lcom/spotify/music/spotlets/radio/service/e;
.field private c:Landroid/support/v4/content/n;
.field private d:Lcom/spotify/mobile/android/service/session/e;
.field private final e:Lcom/spotify/mobile/android/service/session/d;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/spotify/music/spotlets/radio/service/i;
invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/service/i;-><init>(Lcom/spotify/music/spotlets/radio/service/RadioActionsService;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a:Lcom/spotify/music/spotlets/radio/service/i;
new-instance v0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService$1;
invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService$1;-><init>(Lcom/spotify/music/spotlets/radio/service/RadioActionsService;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->e:Lcom/spotify/mobile/android/service/session/d;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)Landroid/content/Intent;
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.REMOVE_STATION"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.stationId"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.viewUri"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.subViewUri"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
return-object v0
.end method
.method public static a(Landroid/content/Context;[Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)Landroid/content/Intent;
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.PLAY_STATION"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.seeds"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.viewUri"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.subViewUri"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
return-object v0
.end method
.method private static a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 2
const-string v0, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.subViewUri"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/music/spotlets/radio/service/RadioActionsService;)Lcom/spotify/music/spotlets/radio/service/e;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b:Lcom/spotify/music/spotlets/radio/service/e;
return-object v0
.end method
.method private static b(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
const-string v0, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.viewUri"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->c:Landroid/support/v4/content/n;
new-instance v1, Landroid/content/Intent;
const-string v2, "com.spotify.music.spotlets.radio.service..RADIO_MODEL_UPDATED"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z
return-void
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->c:Landroid/support/v4/content/n;
new-instance v1, Landroid/content/Intent;
const-string v2, "com.spotify.music.spotlets.radio.service..RADIO_MODEL_UPDATE_FAILED"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a:Lcom/spotify/music/spotlets/radio/service/i;
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/spotify/music/spotlets/radio/service/RadioActionsService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->c:Landroid/support/v4/content/n;
new-instance v0, Lcom/spotify/music/spotlets/radio/service/e;
invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/music/spotlets/radio/service/e;-><init>(Landroid/content/Context;Lcom/spotify/music/spotlets/radio/service/f;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b:Lcom/spotify/music/spotlets/radio/service/e;
new-instance v0, Lcom/spotify/mobile/android/service/session/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/e;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->d:Lcom/spotify/mobile/android/service/session/e;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->d:Lcom/spotify/mobile/android/service/session/e;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->e:Lcom/spotify/mobile/android/service/session/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->d:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V
const-string v1, " - Lcom/spotify/music/spotlets/radio/service/RadioActionsService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/music/spotlets/radio/service/RadioActionsService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b:Lcom/spotify/music/spotlets/radio/service/e;
invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/e;->a()V
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->d:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V
const-string v1, " - Lcom/spotify/music/spotlets/radio/service/RadioActionsService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 8
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.GET_ALL_STATIONS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_13
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b:Lcom/spotify/music/spotlets/radio/service/e;
invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/e;->c()V
:goto_11
:cond_11
const/4 v0, 0x2
return v0
:cond_13
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.REMOVE_STATION"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2f
const-string v0, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.stationId"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p1}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-static {p1}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v2
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b:Lcom/spotify/music/spotlets/radio/service/e;
invoke-virtual {v3, v0, v1, v2}, Lcom/spotify/music/spotlets/radio/service/e;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
goto :goto_11
:cond_2f
const-string v1, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.PLAY_STATION"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4b
const-string v0, "com.spotify.music.spotlets.radio.service..RADIO_ACTIONS_INTENT_SERVICE.intent_keys.seeds"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
invoke-static {p1}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
invoke-static {p1}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v2
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->b:Lcom/spotify/music/spotlets/radio/service/e;
invoke-virtual {v3, v0, v1, v2}, Lcom/spotify/music/spotlets/radio/service/e;->a([Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
goto :goto_11
:cond_4b
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_11
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "RadioActionsService does not know the action "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
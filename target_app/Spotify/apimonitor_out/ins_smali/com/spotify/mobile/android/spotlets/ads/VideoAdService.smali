.class public Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
.super Landroid/app/Service;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.field private b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
.field private final c:Lcom/spotify/mobile/android/spotlets/ads/a;
.field private d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
.field private e:Z
.field private f:Landroid/content/ServiceConnection;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/a;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/ads/a;-><init>(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->c:Lcom/spotify/mobile/android/spotlets/ads/a;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;-><init>(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->f:Landroid/content/ServiceConnection;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
const-string v0, "getIntent"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
return-object v0
.end method
.method public static a()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
return-object v0
.end method
.method private b()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
const-string v0, "initializeVideoAd : %s"
new-array v1, v4, [Ljava/lang/Object;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getVideos()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getVideos()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_2f
iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->e:Z
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->f:Landroid/content/ServiceConnection;
invoke-virtual {p0, v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:cond_2f
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->e:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->e:Z
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
return-object v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->c:Lcom/spotify/mobile/android/spotlets/ads/a;
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/spotlets/ads/VideoAdService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
if-nez v0, :cond_e
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
:cond_e
const-string v1, " - Lcom/spotify/mobile/android/spotlets/ads/VideoAdService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/spotlets/ads/VideoAdService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a()V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/ads/VideoAdService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
const-string v0, "onStartCommand Report event: %s"
new-array v1, v4, [Ljava/lang/Object;
invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
const-string v1, "com.spotify.mobile.android.spotlets.ads.action.FETCH_VIDEO_AD"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
const-string v0, "EXTRA_AD_MODEL"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b()V
:cond_2a
:goto_2a
const/4 v0, 0x2
return v0
:cond_2c
const-string v1, "com.spotify.mobile.android.spotlets.ads.action.PLAY_VIDEO_AD"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
const-string v0, "EXTRA_AD_MODEL"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
if-eqz v1, :cond_55
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getId()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_55
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->b()V
:cond_55
const-string v0, "playVideoAd : %s"
new-array v1, v4, [Ljava/lang/Object;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->d:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "com.spotify.music.service.video.action.player.START_VIDEO"
invoke-static {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_2a
.end method
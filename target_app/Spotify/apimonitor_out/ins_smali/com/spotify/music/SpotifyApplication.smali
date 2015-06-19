.class public Lcom/spotify/music/SpotifyApplication;
.super Landroid/app/Application;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Application;-><init>()V
return-void
.end method
.method private static a()Z
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/ao;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ao;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->f()Z
move-result v1
if-nez v1, :cond_15
const/4 v1, 0x1
:goto_f
if-eqz v1, :cond_14
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->h()V
:cond_14
return v1
:cond_15
const/4 v1, 0x0
goto :goto_f
.end method
.method public onCreate()V
.registers 9
const-string v1, " + Lcom/spotify/music/SpotifyApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
invoke-static {v0}, Lcom/spotify/mobile/android/devtools/a;->a(Lcom/spotify/mobile/android/devtools/MethodTraceScope;)V
invoke-super {p0}, Landroid/app/Application;->onCreate()V
new-instance v0, Lcom/spotify/mobile/android/util/LockScreenController;
invoke-virtual {p0}, Lcom/spotify/music/SpotifyApplication;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LockScreenController;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/spotify/music/SpotifyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
invoke-static {p0}, Lnet/hockeyapp/android/a;->a(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/actions/d;-><init>()V
new-instance v1, Lcom/spotify/mobile/android/util/ac;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/ac;-><init>()V
new-instance v2, Lcom/spotify/mobile/android/util/ao;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/util/ao;-><init>(Landroid/content/Context;)V
new-instance v3, Lcom/spotify/mobile/android/util/c;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/util/c;-><init>(Landroid/content/Context;)V
new-instance v4, Lcom/spotify/mobile/android/ui/actions/a;
invoke-direct {v4}, Lcom/spotify/mobile/android/ui/actions/a;-><init>()V
new-instance v5, Lcom/spotify/mobile/android/ui/actions/c;
invoke-direct {v5, v4}, Lcom/spotify/mobile/android/ui/actions/c;-><init>(Lcom/spotify/mobile/android/ui/actions/a;)V
const-class v6, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v6, v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v6, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v6, v4}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v6, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v6, v5}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v6, Lcom/spotify/mobile/android/util/ac;
invoke-static {v6, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v6, Lcom/spotify/mobile/android/ui/menus/d;
new-instance v7, Lcom/spotify/mobile/android/ui/menus/d;
invoke-direct {v7, v4, v0, v5, v1}, Lcom/spotify/mobile/android/ui/menus/d;-><init>(Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/ui/actions/d;Lcom/spotify/mobile/android/ui/actions/c;Lcom/spotify/mobile/android/util/ac;)V
invoke-static {v6, v7}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v1, Lcom/spotify/mobile/android/util/bn;
new-instance v5, Lcom/spotify/mobile/android/util/bn;
invoke-direct {v5, v0}, Lcom/spotify/mobile/android/util/bn;-><init>(Lcom/spotify/mobile/android/ui/actions/d;)V
invoke-static {v1, v5}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;
new-instance v1, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/ClientInfo;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/ao;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/ah;
invoke-static {v0, v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/dc;
new-instance v1, Lcom/spotify/mobile/android/util/dc;
invoke-direct {v1, v3, v2}, Lcom/spotify/mobile/android/util/dc;-><init>(Lcom/spotify/mobile/android/util/ah;Lcom/spotify/mobile/android/util/ao;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/b/a;
new-instance v1, Lcom/spotify/mobile/android/util/b/a;
invoke-direct {v1, v4, v2}, Lcom/spotify/mobile/android/util/b/a;-><init>(Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/util/ao;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/ui/cell/c;
new-instance v1, Lcom/spotify/mobile/android/ui/cell/c;
invoke-direct {v1}, Lcom/spotify/mobile/android/ui/cell/c;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/ui/stuff/a;
new-instance v1, Lcom/spotify/mobile/android/ui/stuff/a;
invoke-direct {v1}, Lcom/spotify/mobile/android/ui/stuff/a;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
new-instance v1, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
new-instance v1, Lcom/spotify/mobile/android/util/df;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/df;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/de;
new-instance v1, Lcom/spotify/mobile/android/util/de;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/de;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
new-instance v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v2, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
new-instance v3, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
const-class v1, Lcom/spotify/mobile/android/util/ao;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/ao;
invoke-direct {v3, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;-><init>(Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/util/ao;)V
invoke-static {v2, v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/bl;
new-instance v1, Lcom/spotify/mobile/android/util/bl;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/bl;-><init>(Landroid/app/Application;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/spotlets/common/persistence/g;
new-instance v1, Lcom/spotify/mobile/android/spotlets/common/persistence/h;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/h;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/login/g;
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/g;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/flow/login/g;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/applink/service/a;
new-instance v1, Lcom/spotify/mobile/android/applink/service/a;
invoke-direct {v1}, Lcom/spotify/mobile/android/applink/service/a;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/service/media/d;
new-instance v1, Lcom/spotify/mobile/android/service/media/d;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/media/d;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/service/player/a/h;
new-instance v1, Lcom/spotify/mobile/android/service/player/a/b;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/player/a/b;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/service/player/d;
new-instance v1, Lcom/spotify/mobile/android/service/player/d;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/player/d;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/service/session/g;
new-instance v1, Lcom/spotify/mobile/android/service/session/g;
invoke-direct {v1}, Lcom/spotify/mobile/android/service/session/g;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/do;
new-instance v1, Lcom/spotify/mobile/android/util/do;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/do;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/da;
new-instance v1, Lcom/spotify/mobile/android/util/da;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/da;-><init>()V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/dm;
new-instance v1, Lcom/spotify/mobile/android/util/dm;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/dm;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/service/flow/logic/c;
new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/c;
invoke-direct {v1, p0, v4}, Lcom/spotify/mobile/android/service/flow/logic/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/actions/a;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/a/a;
new-instance v1, Lcom/spotify/mobile/android/util/a/a;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/a/a;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/spotlets/video/f;
new-instance v1, Lcom/spotify/mobile/android/spotlets/video/f;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/video/f;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/ca;
new-instance v1, Lcom/spotify/mobile/android/util/ca;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/ca;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
new-instance v1, Lcom/spotify/music/internal/a/b;
const-string v0, "fafcad5f8ea1f543076174a284590bf3"
invoke-direct {v1, p0, v0}, Lcom/spotify/music/internal/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V
:try_start_178
new-instance v0, Lcom/spotify/mobile/android/util/ProcessIdentifier;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/ProcessIdentifier;-><init>()V
invoke-static {}, Lcom/spotify/mobile/android/util/ProcessIdentifier;->a()Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
if-ne v0, v2, :cond_1a9
const-wide v2, 0x3f1a36e2eb1c432dL
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v4
cmpl-double v2, v2, v4
if-lez v2, :cond_197
const-string v2, "baseline crash, periodicity 10000"
invoke-static {v2}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
:cond_197
invoke-static {}, Lcom/spotify/music/SpotifyApplication;->a()Z
move-result v2
const-string v3, "com.spotify.mobile.android.service.mat.application.init"
invoke-static {p0, v3}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
const-string v4, "installation_id_new"
invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v3}, Lcom/spotify/music/SpotifyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_1a9
sget-object v2, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
if-eq v0, v2, :cond_1b1
sget-object v2, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->b:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
if-ne v0, v2, :cond_1bb
:cond_1b1
invoke-virtual {v1}, Lcom/spotify/music/internal/a/b;->a()V
sget-object v2, Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;->a:Lcom/spotify/mobile/android/util/ProcessIdentifier$ProcessType;
if-ne v0, v2, :cond_1bb
invoke-virtual {v1}, Lcom/spotify/music/internal/a/b;->b()Ljava/lang/Thread;
:cond_1bb
:try_end_1bb
.catch Lcom/spotify/mobile/android/util/ProcessIdentifier$UnidentifiableProcessException; {:try_start_178 .. :try_end_1bb} :catch_1c1
:goto_1bb
sget-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
invoke-static {v0}, Lcom/spotify/mobile/android/devtools/a;->b(Lcom/spotify/mobile/android/devtools/MethodTraceScope;)V
const-string v1, " - Lcom/spotify/music/SpotifyApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_1c1
move-exception v0
const-string v2, "Could not determine our process"
invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {v1}, Lcom/spotify/music/internal/a/b;->a()V
invoke-virtual {v1}, Lcom/spotify/music/internal/a/b;->b()Ljava/lang/Thread;
invoke-static {}, Lcom/spotify/music/SpotifyApplication;->a()Z
goto :goto_1bb
.end method
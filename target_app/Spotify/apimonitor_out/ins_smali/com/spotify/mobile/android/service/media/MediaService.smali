.class public Lcom/spotify/mobile/android/service/media/MediaService;
.super Landroid/app/Service;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/player/a/g;
.implements Lcom/spotify/mobile/android/service/session/d;
.field private a:Lcom/spotify/mobile/android/service/media/b;
.field private b:Lcom/spotify/mobile/android/service/media/c;
.field private c:Lcom/spotify/mobile/android/service/media/a;
.field private d:Lcom/spotify/mobile/android/ui/actions/c;
.field private e:Lcom/spotify/mobile/android/ui/actions/d;
.field private f:Lcom/spotify/mobile/android/service/b/b;
.field private g:Lcom/spotify/mobile/android/service/media/a/a/a;
.field private h:Lcom/spotify/mobile/android/service/player/c;
.field private i:Lcom/spotify/mobile/android/service/session/e;
.field private j:I
.field private k:Lcom/spotify/mobile/android/service/player/model/d;
.field private l:Lcom/google/common/base/Optional;
.field private m:Landroid/os/Handler;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/service/media/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/media/b;-><init>(Lcom/spotify/mobile/android/service/media/MediaService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->a:Lcom/spotify/mobile/android/service/media/b;
const/4 v0, 0x0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->l:Lcom/google/common/base/Optional;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/media/MediaService;)Lcom/spotify/mobile/android/service/media/a/a/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->g:Lcom/spotify/mobile/android/service/media/a/a/a;
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/media/MediaService;)Lcom/spotify/mobile/android/service/b/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->f:Lcom/spotify/mobile/android/service/b/b;
return-object v0
.end method
.method public final a()V
.registers 5
const/4 v3, 0x0
const-string v0, ""
invoke-static {v0, v3}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;Z)Landroid/net/Uri;
move-result-object v0
:try_start_7
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/MediaService;->e:Lcom/spotify/mobile/android/ui/actions/d;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->bf:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
:goto_10
:try_end_10
.catch Lcom/spotify/mobile/android/ui/fragments/logic/Flag$FlagUndefinedException; {:try_start_7 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag$FlagUndefinedException;->getMessage()Ljava/lang/String;
move-result-object v1
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_10
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/service/media/MediaService;->j:I
return-void
.end method
.method public final a(Landroid/net/Uri;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->e:Lcom/spotify/mobile/android/ui/actions/d;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->bf:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0, p1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V
return-void
.end method
.method public final a(Lcom/google/common/base/Optional;)V
.registers 2
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/media/c/c;Lcom/spotify/mobile/android/service/media/c/a;)V
.registers 6
new-instance v0, Lcom/spotify/mobile/android/service/media/c/e;
new-instance v1, Lcom/spotify/mobile/android/service/media/c;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/media/c;-><init>(Landroid/content/Context;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/media/c;->a()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "collection"
invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "playlists"
invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
const-string v2, "MediaService"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/media/c/e;-><init>(Landroid/net/Uri;Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/MediaService;->m:Landroid/os/Handler;
new-instance v2, Lcom/spotify/mobile/android/service/media/MediaService$1;
invoke-direct {v2, p0, v0, p1, p2}, Lcom/spotify/mobile/android/service/media/MediaService$1;-><init>(Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/service/media/c/e;Lcom/spotify/mobile/android/service/media/c/c;Lcom/spotify/mobile/android/service/media/c/a;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/a/g;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/player/c;->a(Ljava/lang/Object;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
.registers 3
const/4 v0, 0x0
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/service/player/model/b;->a(I)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->l:Lcom/google/common/base/Optional;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/model/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/MediaService;->k:Lcom/spotify/mobile/android/service/player/model/d;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 3
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->c()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->d()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/player/c;->a(Ljava/lang/Object;)V
:cond_20
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/player/c;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->b()V
goto :goto_20
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/d;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->d:Lcom/spotify/mobile/android/ui/actions/c;
const/4 v0, 0x0
invoke-static {p0, p2, p1, v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->b()V
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/service/player/a/g;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/player/c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/service/session/d;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/session/e;->b(Lcom/spotify/mobile/android/service/session/d;)V
return-void
.end method
.method public final b(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->d:Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {p0, p2, p1}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->a(Z)V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->a()V
return-void
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->b(Z)V
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->b(Z)V
return-void
.end method
.method public final g()Lcom/spotify/mobile/android/service/player/model/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->k:Lcom/spotify/mobile/android/service/player/model/d;
return-object v0
.end method
.method public final h()Lcom/google/common/base/Optional;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->l:Lcom/google/common/base/Optional;
return-object v0
.end method
.method public final i()Lcom/google/common/base/Optional;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->h()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
return-object v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->a:Lcom/spotify/mobile/android/service/media/b;
return-object v0
.end method
.method public onCreate()V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/service/media/MediaService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
new-instance v0, Lcom/spotify/mobile/android/service/media/c;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/media/c;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->b:Lcom/spotify/mobile/android/service/media/c;
new-instance v0, Lcom/spotify/mobile/android/service/media/a;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/media/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->c:Lcom/spotify/mobile/android/service/media/a;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->m:Landroid/os/Handler;
const-class v0, Lcom/spotify/mobile/android/service/media/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {}, Lcom/spotify/mobile/android/service/media/d;->a()Lcom/spotify/mobile/android/service/b/b;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->f:Lcom/spotify/mobile/android/service/b/b;
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->d:Lcom/spotify/mobile/android/ui/actions/c;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->e:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/service/player/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {p0}, Lcom/spotify/mobile/android/service/player/d;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/service/player/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
const-class v0, Lcom/spotify/mobile/android/service/session/g;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {p0}, Lcom/spotify/mobile/android/service/session/g;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V
new-instance v0, Lcom/spotify/mobile/android/service/media/a/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/MediaService;->f:Lcom/spotify/mobile/android/service/b/b;
iget-object v2, p0, Lcom/spotify/mobile/android/service/media/MediaService;->b:Lcom/spotify/mobile/android/service/media/c;
iget-object v3, p0, Lcom/spotify/mobile/android/service/media/MediaService;->c:Lcom/spotify/mobile/android/service/media/a;
invoke-direct {v0, p0, v1, v2, v3}, Lcom/spotify/mobile/android/service/media/a/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/b/b;Lcom/spotify/mobile/android/service/media/c;Lcom/spotify/mobile/android/service/media/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->g:Lcom/spotify/mobile/android/service/media/a/a/a;
const-string v1, " - Lcom/spotify/mobile/android/service/media/MediaService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/service/media/MediaService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->f:Lcom/spotify/mobile/android/service/b/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/b/b;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/session/e;->b(Lcom/spotify/mobile/android/service/session/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/player/c;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->i:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/MediaService;->h:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->b()V
const-string v1, " - Lcom/spotify/mobile/android/service/media/MediaService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
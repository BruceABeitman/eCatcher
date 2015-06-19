.class public Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/session/d;
.implements Lcom/spotify/mobile/android/service/session/f;
.implements Lcom/spotify/mobile/android/spotlets/ads/b;
.field private n:Z
.field private p:Landroid/os/Handler;
.field private q:Lcom/spotify/mobile/android/service/session/e;
.field private r:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
.field private s:Z
.field private t:Ljava/lang/Runnable;
.field private u:Landroid/content/ServiceConnection;
.field private v:Lcom/spotify/mobile/android/service/feature/c;
.field private w:Lcom/spotify/mobile/android/service/feature/a;
.field private x:Lcom/spotify/mobile/android/ui/fragments/logic/g;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->p:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->t:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->u:Landroid/content/ServiceConnection;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->w:Lcom/spotify/mobile/android/service/feature/a;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->x:Lcom/spotify/mobile/android/ui/fragments/logic/g;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->r:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->s:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Lcom/spotify/mobile/android/ui/fragments/logic/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->x:Lcom/spotify/mobile/android/ui/fragments/logic/g;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->n:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->n:Z
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->t:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->p:Landroid/os/Handler;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z
move-result v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->e()Z
move-result v1
if-eqz v0, :cond_f
if-eqz v1, :cond_2
:cond_f
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->finish()V
goto :goto_2
.end method
.method public final b()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->r:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/service/feature/c;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/feature/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->v:Lcom/spotify/mobile/android/service/feature/c;
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/mobile/android/service/session/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/e;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->q:Lcom/spotify/mobile/android/service/session/e;
const v0, 0x7f030024
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->setContentView(I)V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->setVolumeControlStream(I)V
if-nez p1, :cond_21
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->setVisible(Z)V
:cond_21
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->t:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_2c
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->u:Landroid/content/ServiceConnection;
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->x:Lcom/spotify/mobile/android/ui/fragments/logic/g;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->b(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->q:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->p:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->t:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->v:Lcom/spotify/mobile/android/service/feature/c;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Landroid/os/Bundle;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->s:Z
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onStart()V
invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/j;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->q:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->q:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z
move-result v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->v:Lcom/spotify/mobile/android/service/feature/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->v:Lcom/spotify/mobile/android/service/feature/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->w:Lcom/spotify/mobile/android/service/feature/a;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->a(Ljava/lang/Object;)V
:cond_26
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onStop()V
invoke-static {p0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/j;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->q:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/session/e;->b(Lcom/spotify/mobile/android/service/session/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->v:Lcom/spotify/mobile/android/service/feature/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->w:Lcom/spotify/mobile/android/service/feature/a;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/feature/c;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->v:Lcom/spotify/mobile/android/service/feature/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/feature/c;->b()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final z_()Lcom/spotify/mobile/android/service/session/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->q:Lcom/spotify/mobile/android/service/session/e;
return-object v0
.end method
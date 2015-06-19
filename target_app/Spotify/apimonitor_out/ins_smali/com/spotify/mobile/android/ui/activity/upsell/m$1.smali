.class final Lcom/spotify/mobile/android/ui/activity/upsell/m$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/m;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/upsell/m$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {p2}, Lcom/a/a/a/b;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/m;Lcom/a/a/a/a;)Lcom/a/a/a/a;
:try_start_b
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Lcom/a/a/a/a;
move-result-object v2
const/4 v4, 0x3
iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Ljava/lang/String;
move-result-object v5
const-string v6, "subs"
invoke-interface {v2, v4, v5, v6}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_74
move v2, v0
:goto_23
invoke-static {v3, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/m;Z)Z
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Lcom/a/a/a/a;
move-result-object v3
const/4 v4, 0x3
iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Ljava/lang/String;
move-result-object v5
const-string v6, "inapp"
invoke-interface {v3, v4, v5, v6}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I
move-result v3
if-nez v3, :cond_76
:goto_3d
invoke-static {v2, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b(Lcom/spotify/mobile/android/ui/activity/upsell/m;Z)Z
const-string v0, "Supports subs: %b, inapp: %b"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Z
move-result v4
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v4}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->d(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Z
move-result v4
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_62
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_62} :catch_78
:goto_62
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Lcom/spotify/mobile/android/ui/activity/upsell/n;
move-result-object v0
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->e(Lcom/spotify/mobile/android/ui/activity/upsell/m;)Lcom/spotify/mobile/android/ui/activity/upsell/n;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/n;->c()V
:cond_73
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/m$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_74
move v2, v1
goto :goto_23
:cond_76
move v0, v1
goto :goto_3d
:catch_78
move-exception v0
const-string v2, ""
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_62
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/upsell/m$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/m$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/m;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/m;Lcom/a/a/a/a;)Lcom/a/a/a/a;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/m$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
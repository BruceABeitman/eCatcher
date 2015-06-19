.class public Lcom/spotify/mobile/android/applink/service/AppLinkService;
.super Landroid/app/Service;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.implements Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;
.field private a:Lcom/spotify/mobile/android/applink/a;
.field private b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
.field private c:Landroid/content/Intent;
.field private d:Ljava/util/concurrent/ScheduledExecutorService;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method private a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->d:Ljava/util/concurrent/ScheduledExecutorService;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->d:Ljava/util/concurrent/ScheduledExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->a:Lcom/spotify/mobile/android/applink/a;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/a;->b()V
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->removeStickyBroadcast(Landroid/content/Intent;)V
:cond_24
return-void
.end method
.method private b(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
.registers 6
const-string v0, "sendStateIntent %b"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->a:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;
invoke-virtual {p1, v3}, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->equals(Ljava/lang/Object;)Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.REQUIRE_LOCK_SCREEN"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
const-string v1, "value"
sget-object v2, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->a:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;
invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->equals(Ljava/lang/Object;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
const-string v1, "sender_id"
const-string v2, "applink"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
const-string v1, "layout_id"
const v2, 0x7f030020
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->c:Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->sendStickyBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/applink/service/AppLinkService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0, p0}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
const-string v1, " - Lcom/spotify/mobile/android/applink/service/AppLinkService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/applink/service/AppLinkService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->a()V
invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->unbindService(Landroid/content/ServiceConnection;)V
const-string v1, " - Lcom/spotify/mobile/android/applink/service/AppLinkService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/applink/service/AppLinkService; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p2, Lcom/spotify/mobile/android/service/media/b;
invoke-virtual {p2}, Lcom/spotify/mobile/android/service/media/b;->a()Lcom/spotify/mobile/android/service/media/MediaService;
move-result-object v3
const-class v0, Lcom/spotify/mobile/android/applink/service/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {}, Lcom/spotify/mobile/android/applink/service/a;->c()Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-static {}, Lcom/spotify/mobile/android/applink/service/a;->a()Lcom/spotify/mobile/android/applink/u;
move-result-object v0
invoke-static {}, Lcom/spotify/mobile/android/applink/service/a;->b()Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->d:Ljava/util/concurrent/ScheduledExecutorService;
invoke-static {p0}, Lcom/spotify/mobile/android/applink/service/a;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/applink/t;
move-result-object v5
iget-object v1, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->d:Ljava/util/concurrent/ScheduledExecutorService;
invoke-static {v0, v1, v5}, Lcom/spotify/mobile/android/applink/service/a;->a(Lcom/spotify/mobile/android/applink/u;Ljava/util/concurrent/ScheduledExecutorService;Lcom/spotify/mobile/android/applink/t;)Lcom/spotify/mobile/android/applink/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->a:Lcom/spotify/mobile/android/applink/a;
invoke-static {p0}, Lcom/spotify/mobile/android/applink/service/a;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/applink/m;
move-result-object v4
invoke-static {v3, v5}, Lcom/spotify/mobile/android/applink/service/a;->a(Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/applink/t;)Lcom/spotify/mobile/android/applink/r;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/applink/e;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/applink/e;-><init>(Lcom/spotify/mobile/android/applink/a;Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/applink/m;Lcom/spotify/mobile/android/applink/t;Lcom/spotify/mobile/android/applink/r;)V
sget-object v1, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->b:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->b(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;)V
const-string v1, " - Lcom/spotify/mobile/android/applink/service/AppLinkService; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/applink/service/AppLinkService; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/service/AppLinkService;->a()V
const-string v1, " - Lcom/spotify/mobile/android/applink/service/AppLinkService; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
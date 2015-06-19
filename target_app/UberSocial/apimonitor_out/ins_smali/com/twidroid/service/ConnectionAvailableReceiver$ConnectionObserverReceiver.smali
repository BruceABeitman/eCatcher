.class public Lcom/twidroid/service/ConnectionAvailableReceiver$ConnectionObserverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
const-string v1, "ConnectionAvailableReceiver"
const-string v2, "android.net.conn.CONNECTIVITY_CHANGE received"
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v0, :cond_37
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-static {}, Lcom/twidroid/service/ConnectionAvailableReceiver;->a()Z
move-result v0
if-nez v0, :cond_37
new-instance v0, Lcom/twidroid/service/b;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/twidroid/service/b;-><init>(Lcom/twidroid/service/ConnectionAvailableReceiver$1;)V
const/4 v1, 0x1
new-array v1, v1, [Landroid/content/Context;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/service/b;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_37
return-void
.end method
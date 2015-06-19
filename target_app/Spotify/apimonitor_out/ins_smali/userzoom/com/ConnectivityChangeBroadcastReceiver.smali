.class public Luserzoom/com/ConnectivityChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v1, 0x1
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_31
const-string v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v2
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v0
if-eqz v0, :cond_32
move v0, v1
:goto_26
invoke-static {}, Lcom/userzoom/y;->a()Lcom/userzoom/y;
move-result-object v1
invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v2
invoke-virtual {v1, v0, v2}, Lcom/userzoom/y;->a(ZZ)V
:cond_31
return-void
:cond_32
const/4 v0, 0x0
goto :goto_26
.end method
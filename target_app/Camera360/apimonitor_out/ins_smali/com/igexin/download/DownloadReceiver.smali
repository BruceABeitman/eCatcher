.class public Lcom/igexin/download/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
const-string/jumbo v0, "networkInfo"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/NetworkInfo;
if-eqz v0, :cond_28
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/igexin/download/DownloadService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_28
:goto_28
return-void
:cond_29
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.intent.action.GTDOWNLOAD_WAKEUP"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/igexin/download/DownloadService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_28
.end method
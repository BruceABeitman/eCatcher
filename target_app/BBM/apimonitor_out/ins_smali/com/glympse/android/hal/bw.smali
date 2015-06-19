.class  Lcom/glympse/android/hal/bw;
.super Landroid/content/BroadcastReceiver;
.source "WifiProvider.java"
.field final synthetic eQ:Lcom/glympse/android/hal/bv;
.method private constructor <init>(Lcom/glympse/android/hal/bv;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/bw;->eQ:Lcom/glympse/android/hal/bv;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/bv;Lcom/glympse/android/hal/bv$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/bw;-><init>(Lcom/glympse/android/hal/bv;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/glympse/android/hal/bw;->eQ:Lcom/glympse/android/hal/bv;
invoke-static {v0}, Lcom/glympse/android/hal/bv;->a(Lcom/glympse/android/hal/bv;)Lcom/glympse/android/hal/GWifiListener;
move-result-object v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.net.wifi.STATE_CHANGE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8
const-string v0, "networkInfo"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/NetworkInfo;
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
move-result-object v0
sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
if-ne v1, v0, :cond_3d
const-string v0, "wifiInfo"
invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiInfo;
iget-object v1, p0, Lcom/glympse/android/hal/bw;->eQ:Lcom/glympse/android/hal/bv;
invoke-static {v1}, Lcom/glympse/android/hal/bv;->a(Lcom/glympse/android/hal/bv;)Lcom/glympse/android/hal/GWifiListener;
move-result-object v1
invoke-static {v0}, Lcom/glympse/android/hal/bv;->a(Landroid/net/wifi/WifiInfo;)Lcom/glympse/android/hal/bu;
move-result-object v0
invoke-interface {v1, v0}, Lcom/glympse/android/hal/GWifiListener;->connected(Lcom/glympse/android/hal/GWifiInfo;)V
goto :goto_8
:catch_3b
move-exception v0
goto :goto_8
:cond_3d
sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;
if-ne v1, v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/hal/bw;->eQ:Lcom/glympse/android/hal/bv;
invoke-static {v0}, Lcom/glympse/android/hal/bv;->a(Lcom/glympse/android/hal/bv;)Lcom/glympse/android/hal/GWifiListener;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GWifiListener;->disconnected(Lcom/glympse/android/hal/GWifiInfo;)V
:try_end_4b
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_3b
goto :goto_8
.end method
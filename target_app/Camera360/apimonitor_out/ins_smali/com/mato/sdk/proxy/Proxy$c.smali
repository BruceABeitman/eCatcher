.class final Lcom/mato/sdk/proxy/Proxy$c;
.super Landroid/content/BroadcastReceiver;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/mato/sdk/proxy/Proxy$c;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "wifi rssi change"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "wifi"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
if-eqz v0, :cond_2c
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I
move-result v0
invoke-static {v0}, Lcom/mato/sdk/utils/g;->c(I)V
:cond_2c
return-void
.end method
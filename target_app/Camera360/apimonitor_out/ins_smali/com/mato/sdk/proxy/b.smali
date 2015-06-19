.class final Lcom/mato/sdk/proxy/b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->f()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "wifi"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I
move-result v0
const-string/jumbo v1, "MAA"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the wifi strength is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/mato/sdk/utils/g;->c(I)V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->g()V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->h()V
return-void
.end method
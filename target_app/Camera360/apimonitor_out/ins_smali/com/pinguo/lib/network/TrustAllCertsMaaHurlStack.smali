.class public Lcom/pinguo/lib/network/TrustAllCertsMaaHurlStack;
.super Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;
.source "TrustAllCertsMaaHurlStack.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack;-><init>()V
return-void
.end method
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/lib/network/TrustAllCertsMaaHurlStack;->createMaaConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method
.method public createMaaConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.registers 8
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->getAddress()Lcom/mato/sdk/proxy/Address;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/mato/sdk/proxy/Address;->getPort()I
move-result v2
new-instance v3, Ljava/net/Proxy;
sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
new-instance v5, Ljava/net/InetSocketAddress;
invoke-direct {v5, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
invoke-virtual {p1, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
move-result-object v4
check-cast v4, Ljava/net/HttpURLConnection;
:goto_20
return-object v4
:cond_21
invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v4
check-cast v4, Ljava/net/HttpURLConnection;
goto :goto_20
.end method
.class  Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;
.super Ljava/net/InetSocketAddress;
.source "HttpInetSocketAddress.java"
.field private static final serialVersionUID:J = -0x5c4c0a13728d6ef5L
.field private final host:Lch/boye/httpclientandroidlib/HttpHost;
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;I)V
.registers 6
invoke-direct {p0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP host may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;->host:Lch/boye/httpclientandroidlib/HttpHost;
return-void
.end method
.method public getHost()Lch/boye/httpclientandroidlib/HttpHost;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;->host:Lch/boye/httpclientandroidlib/HttpHost;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;->host:Lch/boye/httpclientandroidlib/HttpHost;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/HttpInetSocketAddress;->getPort()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
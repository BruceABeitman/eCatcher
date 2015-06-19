.class public Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source "HttpHostConnectException.java"
.field private static final serialVersionUID:J = -0x2c5515199314e300L
.field private final host:Lch/boye/httpclientandroidlib/HttpHost;
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/ConnectException;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Connection to "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " refused"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;->host:Lch/boye/httpclientandroidlib/HttpHost;
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
return-void
.end method
.method public getHost()Lch/boye/httpclientandroidlib/HttpHost;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/HttpHostConnectException;->host:Lch/boye/httpclientandroidlib/HttpHost;
return-object v0
.end method
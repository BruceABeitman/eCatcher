.class final Lcom/squareup/okhttp/internal/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/i;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)[Ljava/net/InetAddress;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/net/UnknownHostException;
const-string v1, "host == null"
invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
move-result-object v0
return-object v0
.end method
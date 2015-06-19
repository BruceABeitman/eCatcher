.class public Lcom/a/a/a;
.super Ljava/lang/Object;
.source "BaseSocketFactory.java"
.implements Lcom/a/a/e;
.field private mSocketFactory:Ljavax/net/SocketFactory;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a;->mSocketFactory:Ljavax/net/SocketFactory;
return-void
.end method
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;I)V
.registers 5
new-instance v0, Ljava/net/InetSocketAddress;
invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
invoke-static {p1, v0}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;)V
return-void
.end method
.method public createSocket(Z)Ljava/net/Socket;
.registers 3
if-nez p1, :cond_7
iget-object v0, p0, Lcom/a/a/a;->mSocketFactory:Ljavax/net/SocketFactory;
invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
:cond_7
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
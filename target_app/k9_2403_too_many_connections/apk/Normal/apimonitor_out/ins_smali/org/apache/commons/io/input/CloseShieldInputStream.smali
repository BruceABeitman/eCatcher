.class public Lorg/apache/commons/io/input/CloseShieldInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CloseShieldInputStream.java"
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public close()V
.registers 2
new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;
invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/input/CloseShieldInputStream;->in:Ljava/io/InputStream;
return-void
.end method
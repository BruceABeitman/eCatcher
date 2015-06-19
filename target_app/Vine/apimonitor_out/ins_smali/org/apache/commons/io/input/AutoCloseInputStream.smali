.class public Lorg/apache/commons/io/input/AutoCloseInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "AutoCloseInputStream.java"
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method protected afterRead(I)V
.registers 3
const/4 v0, -0x1
if-ne p1, v0, :cond_6
invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V
:cond_6
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;
invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;
return-void
.end method
.method protected finalize()V
.registers 1
invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
.end method
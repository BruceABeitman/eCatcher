.class public Lorg/apache/commons/io/input/AutoCloseInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "AutoCloseInputStream.java"
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
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
.method public read()I
.registers 3
iget-object v1, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V
:cond_c
return v0
.end method
.method public read([B)I
.registers 4
iget-object v1, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V
:cond_c
return v0
.end method
.method public read([BII)I
.registers 6
iget-object v1, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V
:cond_c
return v0
.end method
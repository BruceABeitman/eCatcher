.class public Lorg/apache/commons/io/input/TeeInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "TeeInputStream.java"
.field private final branch:Ljava/io/OutputStream;
.field private final closeBranch:Z
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
.registers 4
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
iput-object p2, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;
iput-boolean p3, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z
return-void
.end method
.method public close()V
.registers 3
:try_start_0
invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_d
iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:cond_c
return-void
:catchall_d
move-exception v0
iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z
if-eqz v1, :cond_17
iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:cond_17
throw v0
.end method
.method public read()I
.registers 3
invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_c
iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V
:cond_c
return v0
.end method
.method public read([B)I
.registers 5
invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_d
iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;
const/4 v2, 0x0
invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
:cond_d
return v0
.end method
.method public read([BII)I
.registers 6
invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_c
iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;
invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V
:cond_c
return v0
.end method
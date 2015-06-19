.class public Lorg/apache/commons/io/output/ProxyOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProxyOutputStream.java"
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public write(I)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
return-void
.end method
.method public write([B)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
return-void
.end method
.method public write([BII)V
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
return-void
.end method
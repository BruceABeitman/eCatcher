.class public Lorg/apache/commons/io/output/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"
.field private final m_streams:Ljava/lang/InheritableThreadLocal;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
new-instance v0, Ljava/lang/InheritableThreadLocal;
invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
return-void
.end method
.method public bindStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.registers 4
iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/OutputStream;
iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V
return-object v0
.end method
.method public close()V
.registers 3
iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/OutputStream;
if-eqz v0, :cond_d
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:cond_d
return-void
.end method
.method public flush()V
.registers 3
iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/OutputStream;
if-eqz v0, :cond_d
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:cond_d
return-void
.end method
.method public write(I)V
.registers 4
iget-object v1, p0, Lorg/apache/commons/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/OutputStream;
if-eqz v0, :cond_d
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
:cond_d
return-void
.end method
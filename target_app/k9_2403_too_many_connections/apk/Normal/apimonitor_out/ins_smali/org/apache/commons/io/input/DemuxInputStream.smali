.class public Lorg/apache/commons/io/input/DemuxInputStream;
.super Ljava/io/InputStream;
.source "DemuxInputStream.java"
.field private m_streams:Ljava/lang/InheritableThreadLocal;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
new-instance v0, Ljava/lang/InheritableThreadLocal;
invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
return-void
.end method
.method private getStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/io/InputStream;
return-object p0
.end method
.method public bindStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;
move-result-object v0
iget-object v1, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;
invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V
return-object v0
.end method
.method public close()V
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_9
return-void
.end method
.method public read()I
.registers 3
invoke-direct {p0}, Lorg/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v1
:goto_a
return v1
:cond_b
const/4 v1, -0x1
goto :goto_a
.end method
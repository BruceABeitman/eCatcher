.class public Lorg/apache/commons/io/input/TaggedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "TaggedInputStream.java"
.field private final tag:Ljava/io/Serializable;
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
iput-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;
return-void
.end method
.method protected handleIOException(Ljava/io/IOException;)V
.registers 4
new-instance v0, Lorg/apache/commons/io/TaggedIOException;
iget-object v1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;
invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/io/Serializable;)V
throw v0
.end method
.method public isCauseOf(Ljava/lang/Throwable;)Z
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;
invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public throwIfCauseOf(Ljava/lang/Throwable;)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;
invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->throwCauseIfTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)V
return-void
.end method
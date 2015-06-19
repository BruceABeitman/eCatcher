.class public Lorg/apache/commons/io/TaggedIOException;
.super Lorg/apache/commons/io/IOExceptionWithCause;
.source "TaggedIOException.java"
.field private static final serialVersionUID:J = -0x61101e3fe8bcf273L
.field private final tag:Ljava/io/Serializable;
.method public constructor <init>(Ljava/io/IOException;Ljava/io/Serializable;)V
.registers 4
invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
iput-object p2, p0, Lorg/apache/commons/io/TaggedIOException;->tag:Ljava/io/Serializable;
return-void
.end method
.method public static isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z
.registers 3
if-eqz p1, :cond_12
instance-of v0, p0, Lorg/apache/commons/io/TaggedIOException;
if-eqz v0, :cond_12
check-cast p0, Lorg/apache/commons/io/TaggedIOException;
iget-object v0, p0, Lorg/apache/commons/io/TaggedIOException;->tag:Ljava/io/Serializable;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public static throwCauseIfTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)V
.registers 3
invoke-static {p0, p1}, Lorg/apache/commons/io/TaggedIOException;->isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
check-cast p0, Lorg/apache/commons/io/TaggedIOException;
invoke-virtual {p0}, Lorg/apache/commons/io/TaggedIOException;->getCause()Ljava/io/IOException;
move-result-object v0
throw v0
:cond_d
return-void
.end method
.method public getCause()Ljava/io/IOException;
.registers 2
invoke-super {p0}, Lorg/apache/commons/io/IOExceptionWithCause;->getCause()Ljava/lang/Throwable;
move-result-object v0
check-cast v0, Ljava/io/IOException;
return-object v0
.end method
.method public bridge synthetic getCause()Ljava/lang/Throwable;
.registers 2
invoke-virtual {p0}, Lorg/apache/commons/io/TaggedIOException;->getCause()Ljava/io/IOException;
move-result-object v0
return-object v0
.end method
.method public getTag()Ljava/io/Serializable;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/TaggedIOException;->tag:Ljava/io/Serializable;
return-object v0
.end method
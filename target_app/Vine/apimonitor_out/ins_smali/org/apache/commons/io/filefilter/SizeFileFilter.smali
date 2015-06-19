.class public Lorg/apache/commons/io/filefilter/SizeFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SizeFileFilter.java"
.implements Ljava/io/Serializable;
.field private final acceptLarger:Z
.field private final size:J
.method public constructor <init>(J)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V
return-void
.end method
.method public constructor <init>(JZ)V
.registers 6
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The size must be non-negative"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iput-wide p1, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J
iput-boolean p3, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/io/File;->length()J
move-result-wide v3
iget-wide v5, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J
cmp-long v3, v3, v5
if-gez v3, :cond_14
move v0, v1
:goto_d
iget-boolean v3, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z
if-eqz v3, :cond_18
if-nez v0, :cond_16
:goto_13
return v1
:cond_14
move v0, v2
goto :goto_d
:cond_16
move v1, v2
goto :goto_13
:cond_18
move v1, v0
goto :goto_13
.end method
.method public toString()Ljava/lang/String;
.registers 5
iget-boolean v1, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z
if-eqz v1, :cond_2e
const-string v0, ">="
:goto_6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_2e
const-string v0, "<"
goto :goto_6
.end method
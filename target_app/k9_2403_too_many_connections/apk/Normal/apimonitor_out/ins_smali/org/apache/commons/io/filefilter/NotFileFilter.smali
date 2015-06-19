.class public Lorg/apache/commons/io/filefilter/NotFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "NotFileFilter.java"
.implements Ljava/io/Serializable;
.field private final filter:Lorg/apache/commons/io/filefilter/IOFileFilter;
.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The filter must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;
invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;
invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.class public abstract Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.super Ljava/lang/Object;
.source "AbstractFileFilter.java"
.implements Lorg/apache/commons/io/filefilter/IOFileFilter;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 4
invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;)Z
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const/16 v2, 0x2e
invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
if-lez v1, :cond_17
add-int/lit8 v2, v1, 0x1
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
:goto_16
return-object v2
:cond_17
move-object v2, v0
goto :goto_16
.end method
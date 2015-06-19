.class public Lorg/apache/commons/io/filefilter/DelegateFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "DelegateFileFilter.java"
.implements Ljava/io/Serializable;
.field private final fileFilter:Ljava/io/FileFilter;
.field private final filenameFilter:Ljava/io/FilenameFilter;
.method public constructor <init>(Ljava/io/FileFilter;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The FileFilter must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;
return-void
.end method
.method public constructor <init>(Ljava/io/FilenameFilter;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The FilenameFilter must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;
invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z
move-result v0
:goto_a
return v0
:cond_b
invoke-super {p0, p1}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;)Z
move-result v0
goto :goto_a
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;
invoke-interface {v0, p1, p2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
move-result v0
:goto_a
return v0
:cond_b
invoke-super {p0, p1, p2}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
move-result v0
goto :goto_a
.end method
.method public toString()Ljava/lang/String;
.registers 4
iget-object v1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;
if-eqz v1, :cond_2c
iget-object v1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_a
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
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_2c
iget-object v1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
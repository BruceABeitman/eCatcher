.class public Lorg/apache/commons/io/filefilter/OrFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "OrFileFilter.java"
.implements Lorg/apache/commons/io/filefilter/ConditionalFileFilter;
.implements Ljava/io/Serializable;
.field private fileFilters:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Ljava/util/List;)V
.registers 3
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
:goto_c
return-void
:cond_d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
goto :goto_c
.end method
.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
.registers 5
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-eqz p1, :cond_7
if-nez p2, :cond_f
:cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The filters must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
invoke-virtual {p0, p2}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 5
iget-object v2, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/commons/io/filefilter/IOFileFilter;
invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z
move-result v2
if-eqz v2, :cond_6
const/4 v2, 0x1
:goto_19
return v2
:cond_1a
const/4 v2, 0x0
goto :goto_19
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 6
iget-object v2, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/commons/io/filefilter/IOFileFilter;
invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6
const/4 v2, 0x1
:goto_19
return v2
:cond_1a
const/4 v2, 0x0
goto :goto_19
.end method
.method public addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public getFileFilters()Ljava/util/List;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public removeFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Z
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public setFileFilters(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v3, "("
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v3, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
if-eqz v3, :cond_3a
const/4 v2, 0x0
:goto_16
iget-object v3, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-ge v2, v3, :cond_3a
if-lez v2, :cond_25
const-string v3, ","
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_25
iget-object v3, p0, Lorg/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_35
const-string v3, "null"
:goto_2f
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_16
:cond_35
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_2f
:cond_3a
const-string v3, ")"
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
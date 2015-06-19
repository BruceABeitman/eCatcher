.class public Lorg/apache/commons/io/filefilter/WildcardFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "WildcardFilter.java"
.implements Ljava/io/Serializable;
.field private final wildcards:[Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The wildcard must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p1, v0, v1
iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/util/List;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The wildcard list must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>([Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The wildcard array must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
array-length v0, p1
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
array-length v1, p1
invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 8
const/4 v4, 0x0
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v5
if-eqz v5, :cond_8
:cond_7
:goto_7
return v4
:cond_8
iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
array-length v2, v0
const/4 v1, 0x0
:goto_c
if-ge v1, v2, :cond_7
aget-object v3, v0, v1
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v5
invoke-static {v5, v3}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_1c
const/4 v4, 0x1
goto :goto_7
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_c
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 9
const/4 v4, 0x0
if-eqz p1, :cond_f
new-instance v5, Ljava/io/File;
invoke-direct {v5, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z
move-result v5
if-eqz v5, :cond_f
:goto_e
:cond_e
return v4
:cond_f
iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
array-length v2, v0
const/4 v1, 0x0
:goto_13
if-ge v1, v2, :cond_e
aget-object v3, v0, v1
invoke-static {p2, v3}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_1f
const/4 v4, 0x1
goto :goto_e
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
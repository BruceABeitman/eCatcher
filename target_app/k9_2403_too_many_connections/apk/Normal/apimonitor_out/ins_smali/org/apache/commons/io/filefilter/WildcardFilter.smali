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
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>([Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "The wildcard array must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
return-void
.end method
.method public accept(Ljava/io/File;)Z
.registers 6
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_9
move v1, v3
:goto_8
return v1
:cond_9
const/4 v0, 0x0
:goto_a
iget-object v1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_22
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-static {v1, v2}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1f
const/4 v1, 0x1
goto :goto_8
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_22
move v1, v3
goto :goto_8
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 6
const/4 v2, 0x0
if-eqz p1, :cond_10
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_10
move v1, v2
:goto_f
return v1
:cond_10
const/4 v0, 0x0
:goto_11
iget-object v1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_25
iget-object v1, p0, Lorg/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-static {p2, v1}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_22
const/4 v1, 0x1
goto :goto_f
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_25
move v1, v2
goto :goto_f
.end method
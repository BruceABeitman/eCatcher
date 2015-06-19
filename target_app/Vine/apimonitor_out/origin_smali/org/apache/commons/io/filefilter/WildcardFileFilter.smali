.class public Lorg/apache/commons/io/filefilter/WildcardFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "WildcardFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .registers 5

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

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    if-nez p2, :cond_19

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_19
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/io/IOCase;",
            ")V"
        }
    .end annotation

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

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    if-nez p2, :cond_1f

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_1f
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .registers 6

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

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p2, :cond_1d

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :cond_1d
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_19

    aget-object v4, v0, v1

    iget-object v5, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-static {v3, v4, v5}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    :goto_15
    return v5

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    const/4 v5, 0x0

    goto :goto_15
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_15

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-static {p2, v3, v4}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_11
    return v4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    const/4 v4, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    if-eqz v2, :cond_2c

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    if-lez v1, :cond_22

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

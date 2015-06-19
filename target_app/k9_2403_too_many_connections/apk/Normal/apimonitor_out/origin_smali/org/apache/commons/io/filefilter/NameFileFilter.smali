.class public Lorg/apache/commons/io/filefilter/NameFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "NameFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

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

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    if-nez p2, :cond_1c

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :goto_19
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void

    :cond_1c
    move-object v0, p2

    goto :goto_19
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/apache/commons/io/IOCase;)V
    .registers 5

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of names must not be null"

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

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    if-nez p2, :cond_24

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :goto_21
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void

    :cond_24
    move-object v0, p2

    goto :goto_21
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .registers 5

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of names must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    if-nez p2, :cond_16

    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    :goto_13
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    return-void

    :cond_16
    move-object v0, p2

    goto :goto_13
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    if-eqz v2, :cond_2c

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    if-lez v1, :cond_22

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/NameFileFilter;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

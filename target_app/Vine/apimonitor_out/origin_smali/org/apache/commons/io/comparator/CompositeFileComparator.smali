.class public Lorg/apache/commons/io/comparator/CompositeFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "CompositeFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NO_COMPARATORS:[Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Comparator",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final delegates:[Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Comparator;

    sput-object v0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->NO_COMPARATORS:[Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    if-nez p1, :cond_c

    sget-object v3, Lorg/apache/commons/io/comparator/CompositeFileComparator;->NO_COMPARATORS:[Ljava/util/Comparator;

    check-cast v3, [Ljava/util/Comparator;

    iput-object v3, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    :goto_b
    return-void

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Comparator;

    check-cast v3, [Ljava/util/Comparator;

    iput-object v3, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    goto :goto_b
.end method

.method public varargs constructor <init>([Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    if-nez p1, :cond_d

    sget-object v0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->NO_COMPARATORS:[Ljava/util/Comparator;

    check-cast v0, [Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    :goto_c
    return-void

    :cond_d
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Comparator;

    check-cast v0, [Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    iget-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    return v4

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic sort(Ljava/util/List;)Ljava/util/List;
    .registers 3

    invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sort([Ljava/io/File;)[Ljava/io/File;
    .registers 3

    invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    array-length v2, v2

    if-ge v1, v2, :cond_28

    if-lez v1, :cond_1e

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    iget-object v2, p0, Lorg/apache/commons/io/comparator/CompositeFileComparator;->delegates:[Ljava/util/Comparator;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

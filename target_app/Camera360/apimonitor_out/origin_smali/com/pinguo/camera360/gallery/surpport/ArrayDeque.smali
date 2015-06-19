.class public Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/surpport/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;,
        Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;,
        Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/pinguo/camera360/gallery/surpport/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient front:I

.field private transient modCount:I

.field private transient rear:I

.field private transient status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->countInitSize(I)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->countInitSize(I)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLastImpl(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeInternal(IZ)V

    return-void
.end method

.method private addLastImpl(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkAndExpand()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->resetStatus(Z)V

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return v2
.end method

.method private checkAndExpand()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v4, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Full:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-eq v3, v4, :cond_8

    :goto_7
    return-void

    :cond_8
    const v3, 0x7fffffff

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v3, v4, :cond_16

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_16
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v3

    shl-int/lit8 v2, v0, 0x1

    if-gez v2, :cond_20

    const v2, 0x7fffffff

    :cond_20
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sub-int v5, v0, v5

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    sget-object v3, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Normal:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    goto :goto_7
.end method

.method private checkEmpty()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method private checkNull(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method private circularBiggerPos(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    add-int/lit8 v0, p1, 0x1

    goto :goto_8
.end method

.method private circularSmallerPos(I)I
    .registers 3

    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    return v0

    :cond_a
    add-int/lit8 v0, p1, -0x1

    goto :goto_9
.end method

.method private countInitSize(I)I
    .registers 4

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    if-gtz v0, :cond_11

    move v0, p1

    :cond_11
    return v0
.end method

.method private newArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->size()I

    move-result v2

    array-length v3, p1

    if-le v2, v3, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_16
    iget v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    if-ge v3, v4, :cond_2a

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    invoke-static {v3, v4, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_23
    array-length v3, p1

    if-ge v2, v3, :cond_29

    const/4 v3, 0x0

    aput-object v3, p1, v2

    :cond_29
    return-object p1

    :cond_2a
    if-eqz v2, :cond_23

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v3

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sub-int v5, v1, v5

    invoke-static {v3, v4, p1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v4, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-static {v3, v6, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->countInitSize(I)I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sget-object v2, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    const/4 v0, 0x0

    :goto_1b
    if-lt v0, v1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLastImpl(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method private removeFirstOccurrenceImpl(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_d
.end method

.method private removeInternal(IZ)V
    .registers 7

    move v0, p1

    if-eqz p2, :cond_34

    :goto_3
    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    if-ne v0, v2, :cond_19

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    :goto_f
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->resetStatus(Z)V

    return-void

    :cond_19
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    move v0, v1

    goto :goto_3

    :cond_27
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    move v0, v1

    :cond_34
    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    if-ne v0, v2, :cond_27

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    goto :goto_f
.end method

.method private removeLastImpl()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v2, v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->resetStatus(Z)V

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return-object v0
.end method

.method private removePollFirstImpl()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->resetStatus(Z)V

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return-object v0
.end method

.method private resetStatus(Z)V
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    if-ne v0, v1, :cond_10

    if-eqz p1, :cond_d

    sget-object v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Full:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    :goto_a
    iput-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    goto :goto_a

    :cond_10
    sget-object v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Normal:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    goto :goto_c
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;-><init>(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)V

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_f
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLastImpl(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v2, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-eq v1, v2, :cond_1a

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularBiggerPos(I)I

    move-result v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    if-ne v0, v1, :cond_9

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    :cond_1a
    iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iput v3, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return-void
.end method

.method public clone()Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/camera360/gallery/surpport/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v1

    :catch_11
    move-exception v0

    const/4 v1, 0x0

    goto :goto_10
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->clone()Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_d

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;-><init>(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)V

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_e
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ReverseArrayDequeIterator;-><init>(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkEmpty()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkEmpty()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$ArrayDequeIterator;-><init>(Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkAndExpand()V

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    aput-object p1, v0, v1

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->resetStatus(Z)V

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->modCount:I

    return v2
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->addLastImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->circularSmallerPos(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removePollFirstImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Empty:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkEmpty()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removePollFirstImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->checkEmpty()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->removeLastImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_d
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->status:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    sget-object v1, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;->Full:Lcom/pinguo/camera360/gallery/surpport/ArrayDeque$DequeStatus;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    if-gt v0, v1, :cond_16

    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sub-int/2addr v0, v1

    goto :goto_9

    :cond_16
    iget v0, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->rear:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->front:I

    sub-int/2addr v0, v1

    goto :goto_9
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->newArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/surpport/ArrayDeque;->newArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

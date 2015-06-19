.class public Lcom/ubermedia/b/a/a;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/b/a/e;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic a:Z = false

.field private static final e:I = 0x8

.field private static final f:J = 0x207cda2e240da08bL


# instance fields
.field private transient b:[Ljava/lang/Object;

.field private transient c:I

.field private transient d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/ubermedia/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/ubermedia/b/a/a;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-direct {p0, p1}, Lcom/ubermedia/b/a/a;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ubermedia/b/a/a;->a(I)V

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic a(Lcom/ubermedia/b/a/a;)I
    .registers 2

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    return v0
.end method

.method private a(I)V
    .registers 4

    const/16 v0, 0x8

    if-lt p1, v0, :cond_19

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_19

    ushr-int/lit8 v0, v0, 0x1

    :cond_19
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ubermedia/b/a/a;->a(I)V

    iput v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iput v1, p0, Lcom/ubermedia/b/a/a;->d:I

    :goto_f
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1c
    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    :goto_11
    iget v2, p0, Lcom/ubermedia/b/a/a;->d:I

    if-eq v0, v2, :cond_20

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    goto :goto_11

    :cond_20
    return-void
.end method

.method static synthetic a(Lcom/ubermedia/b/a/a;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/b/a/a;->b(I)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_12
    return-object p1

    :cond_13
    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-le v0, v1, :cond_12

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/ubermedia/b/a/a;->c:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/ubermedia/b/a/a;->d:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12
.end method

.method static synthetic b(Lcom/ubermedia/b/a/a;)I
    .registers 2

    iget v0, p0, Lcom/ubermedia/b/a/a;->d:I

    return v0
.end method

.method private b(I)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ubermedia/b/a/a;->m()V

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v5, p0, Lcom/ubermedia/b/a/a;->d:I

    sub-int v6, p1, v4

    and-int/2addr v6, v3

    sub-int v7, v5, p1

    and-int/2addr v7, v3

    sub-int v8, v5, v4

    and-int/2addr v8, v3

    if-lt v6, v8, :cond_1f

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1f
    if-ge v6, v7, :cond_40

    if-gt v4, p1, :cond_31

    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_28
    const/4 v1, 0x0

    aput-object v1, v2, v4

    add-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/ubermedia/b/a/a;->c:I

    :goto_30
    return v0

    :cond_31
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v2, v3

    aput-object v1, v2, v0

    add-int/lit8 v1, v4, 0x1

    sub-int v5, v3, v4

    invoke-static {v2, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28

    :cond_40
    if-ge p1, v5, :cond_4d

    add-int/lit8 v0, p1, 0x1

    invoke-static {v2, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/ubermedia/b/a/a;->d:I

    :goto_4b
    move v0, v1

    goto :goto_30

    :cond_4d
    add-int/lit8 v4, p1, 0x1

    sub-int v6, v3, p1

    invoke-static {v2, v4, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v2, v0

    aput-object v4, v2, v3

    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/ubermedia/b/a/a;->d:I

    goto :goto_4b
.end method

.method static synthetic c(Lcom/ubermedia/b/a/a;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method private l()V
    .registers 7

    const/4 v5, 0x0

    sget-boolean v0, Lcom/ubermedia/b/a/a;->a:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v0

    sub-int v3, v2, v1

    shl-int/lit8 v0, v2, 0x1

    if-gez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    invoke-static {v4, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    invoke-static {v4, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iput v5, p0, Lcom/ubermedia/b/a/a;->c:I

    iput v2, p0, Lcom/ubermedia/b/a/a;->d:I

    return-void
.end method

.method private m()V
    .registers 4

    sget-boolean v0, Lcom/ubermedia/b/a/a;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    sget-boolean v0, Lcom/ubermedia/b/a/a;->a:Z

    if-nez v0, :cond_24

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    aget-object v0, v0, v1

    if-nez v0, :cond_56

    :cond_24
    sget-boolean v0, Lcom/ubermedia/b/a/a;->a:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3e
    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_24

    :cond_56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5c
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/ubermedia/b/a/a;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lcom/ubermedia/b/a/a;->l()V

    :cond_21
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/ubermedia/b/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ubermedia/b/a/a;->d:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lcom/ubermedia/b/a/a;->l()V

    :cond_21
    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    iget v2, p0, Lcom/ubermedia/b/a/a;->c:I

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    iget-object v3, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/ubermedia/b/a/a;->c:I

    move-object v0, v1

    goto :goto_9
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 6

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-eq v0, v1, :cond_1a

    const/4 v2, 0x0

    iput v2, p0, Lcom/ubermedia/b/a/a;->d:I

    iput v2, p0, Lcom/ubermedia/b/a/a;->c:I

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :cond_10
    iget-object v3, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_10

    :cond_1a
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->k()Lcom/ubermedia/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    :goto_c
    iget-object v3, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1e

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    goto :goto_4

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_c

    :cond_1e
    move v0, v1

    goto :goto_4
.end method

.method public d()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    iget-object v3, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aput-object v0, v3, v2

    iput v2, p0, Lcom/ubermedia/b/a/a;->d:I

    move-object v0, v1

    goto :goto_11
.end method

.method public d(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    aget-object v0, v0, v1

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_e
    return-object v0
.end method

.method public e(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    :goto_c
    iget-object v3, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_21

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-direct {p0, v0}, Lcom/ubermedia/b/a/a;->b(I)Z

    const/4 v0, 0x1

    goto :goto_4

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_c

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public element()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_16
    return-object v0
.end method

.method public f(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lcom/ubermedia/b/a/a;->d:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    :goto_f
    iget-object v3, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_24

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-direct {p0, v0}, Lcom/ubermedia/b/a/a;->b(I)Z

    const/4 v0, 0x1

    goto :goto_4

    :cond_20
    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_f

    :cond_24
    move v0, v1

    goto :goto_4
.end method

.method public g()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public h()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    iget v0, p0, Lcom/ubermedia/b/a/a;->c:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->d:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lcom/ubermedia/b/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ubermedia/b/a/b;-><init>(Lcom/ubermedia/b/a/a;Lcom/ubermedia/b/a/a$1;)V

    return-object v0
.end method

.method public j()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lcom/ubermedia/b/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ubermedia/b/a/c;-><init>(Lcom/ubermedia/b/a/a;Lcom/ubermedia/b/a/a$1;)V

    return-object v0
.end method

.method public k()Lcom/ubermedia/b/a/a;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubermedia/b/a/a;

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ubermedia/b/a/a;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 3

    iget v0, p0, Lcom/ubermedia/b/a/a;->d:I

    iget v1, p0, Lcom/ubermedia/b/a/a;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ubermedia/b/a/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/ubermedia/b/a/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lcom/ubermedia/b/a/a;->size()I

    move-result v1

    array-length v0, p1

    if-ge v0, v1, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_17
    invoke-direct {p0, v0}, Lcom/ubermedia/b/a/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v0

    if-le v2, v1, :cond_20

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_20
    return-object v0

    :cond_21
    move-object v0, p1

    goto :goto_17
.end method

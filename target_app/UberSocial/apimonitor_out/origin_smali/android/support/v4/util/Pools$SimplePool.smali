.class public Landroid/support/v4/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/util/Pools$Pool;


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_e

    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    if-lez v0, :cond_18

    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v0, v0, v2

    iget-object v3, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aput-object v1, v3, v2

    iget v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_17
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v4/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    iget-object v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/util/Pools$SimplePool;->mPoolSize:I

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

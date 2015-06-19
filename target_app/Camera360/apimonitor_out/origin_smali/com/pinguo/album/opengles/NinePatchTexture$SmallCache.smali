.class Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/opengles/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x10

.field private static final CACHE_SIZE_START_MOVE:I = 0x8


# instance fields
.field private mCount:I

.field private mKey:[I

.field private mValue:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    if-lt v0, v1, :cond_9

    const/4 v1, 0x0

    iput v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    if-lt v0, v3, :cond_7

    const/4 v3, 0x0

    :goto_6
    return-object v3

    :cond_7
    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_42

    iget v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_3d

    if-lez v0, :cond_3d

    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    aget v1, v3, v0

    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    iget-object v4, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    aput v4, v3, v0

    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    add-int/lit8 v4, v0, -0x1

    aput v1, v3, v4

    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v2, v3, v0

    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    add-int/lit8 v4, v0, -0x1

    aput-object v2, v3, v4

    :cond_3d
    iget-object v3, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v3, v3, v0

    goto :goto_6

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/16 v3, 0xf

    iget v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v0, v1, v3

    iget-object v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    aput p1, v1, v3

    iget-object v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aput-object p2, v1, v3

    :goto_14
    return-object v0

    :cond_15
    iget-object v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mKey:[I

    iget v2, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    aput p1, v1, v2

    iget-object v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    iget v2, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    aput-object p2, v1, v2

    iget v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    const/4 v0, 0x0

    goto :goto_14
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mCount:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/album/opengles/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

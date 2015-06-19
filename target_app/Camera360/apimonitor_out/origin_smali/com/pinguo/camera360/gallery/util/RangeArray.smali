.class public Lcom/pinguo/camera360/gallery/util/RangeArray;
.super Ljava/lang/Object;
.source "RangeArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mData:[Ljava/lang/Object;

    iput p1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mOffset:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mData:[Ljava/lang/Object;

    iput p2, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mOffset:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    const v1, 0x7fffffff

    :goto_9
    return v1

    :cond_a
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_14

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mOffset:I

    add-int/2addr v1, v0

    goto :goto_9

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    return-void
.end method

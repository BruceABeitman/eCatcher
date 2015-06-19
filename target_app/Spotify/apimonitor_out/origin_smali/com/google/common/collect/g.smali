.class public final Lcom/google/common/collect/g;
.super Lcom/google/common/collect/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/g;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/f;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/g;->b:I

    return-void
.end method

.method private a(I)Lcom/google/common/collect/g;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/g",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_2e

    iget-object v1, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-gez p1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_14
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_23

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    :cond_23
    if-gez v0, :cond_28

    const v0, 0x7fffffff

    :cond_28
    invoke-static {v1, v0}, Lcom/google/common/collect/al;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    :cond_2e
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/g;->b:I

    packed-switch v0, :pswitch_data_32

    iget v0, p0, Lcom/google/common/collect/g;->b:I

    iget-object v1, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_23

    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    :goto_13
    return-object v0

    :pswitch_14
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_13

    :pswitch_19
    iget-object v0, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_13

    :cond_23
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/g;->b:I

    invoke-static {v1, v2}, Lcom/google/common/collect/al;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    goto :goto_13

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/f;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/f;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->b(Ljava/lang/Object;)Lcom/google/common/collect/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/google/common/collect/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/g",
            "<TE;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/common/collect/g;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/g;->a(I)Lcom/google/common/collect/g;

    :cond_11
    invoke-super {p0, p1}, Lcom/google/common/collect/f;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/f;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/g;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/g",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/g;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/g;->a(I)Lcom/google/common/collect/g;

    iget-object v0, p0, Lcom/google/common/collect/g;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/g;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

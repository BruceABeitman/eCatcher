.class abstract Lcom/google/common/collect/a;
.super Lcom/google/common/collect/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ar",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/a;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/ar;-><init>()V

    invoke-static {p2, p1}, Lcom/google/common/base/i;->b(II)I

    iput p1, p0, Lcom/google/common/collect/a;->a:I

    iput p2, p0, Lcom/google/common/collect/a;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/common/collect/a;->b:I

    iget v1, p0, Lcom/google/common/collect/a;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasPrevious()Z
    .registers 2

    iget v0, p0, Lcom/google/common/collect/a;->b:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/common/collect/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/a;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/a;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/common/collect/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/a;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/a;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

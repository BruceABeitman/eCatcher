.class public final Lcom/google/android/gms/common/data/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lcom/google/android/gms/common/data/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    iput-object v0, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/data/i;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/data/i;->b:I

    iget-object v1, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/a;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/i;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot advance the iterator beyond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/i;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/data/i;->a:Lcom/google/android/gms/common/data/a;

    iget v1, p0, Lcom/google/android/gms/common/data/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/data/i;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove elements from a DataBufferIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

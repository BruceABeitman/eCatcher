.class public abstract Lcom/google/android/gms/common/data/FilteredDataBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ed;->d(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/common/data/FilteredDataBuffer;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_c
    const-string v1, "Not possible to have nested FilteredDataBuffers."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ed;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    return-void
.end method

.method protected abstract computeRealPosition(I)I
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;->computeRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->isClosed()Z

    move-result v0

    return v0
.end method

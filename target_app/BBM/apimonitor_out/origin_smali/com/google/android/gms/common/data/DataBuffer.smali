.class public abstract Lcom/google/android/gms/common/data/DataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final zU:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_9
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public getMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/data/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method

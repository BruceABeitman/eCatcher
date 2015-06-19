.class public abstract Lcom/google/android/gms/common/data/d;
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
.field private Ap:Z

.field private Aq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/d;->Ap:Z

    return-void
.end method

.method private K(I)I
    .registers 4

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_b

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_b
.end method

.method private dK()V
    .registers 7

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/common/data/d;->Ap:Z

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/common/data/d;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    if-lez v3, :cond_54

    iget-object v1, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/d;->getPrimaryDataMarkerColumn()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/common/data/d;->zU:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->I(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/d;->zU:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    :goto_32
    if-ge v2, v3, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->I(I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/common/data/d;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v5, v4, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    iget-object v1, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_32

    :cond_54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/d;->Ap:Z

    :cond_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_59

    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5c
    move-object v0, v1

    goto :goto_4f
.end method


# virtual methods
.method J(I)I
    .registers 5

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_25

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds for this buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public abstract c(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/data/d;->dK()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/d;->J(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/d;->K(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/data/d;->c(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/data/d;->dK()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/d;->Aq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getPrimaryDataMarkerColumn()Ljava/lang/String;
.end method

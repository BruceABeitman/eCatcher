.class public abstract Lcom/google/android/gms/internal/mb;
.super Lcom/google/android/gms/internal/mf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/mb",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/mf;"
    }
.end annotation


# instance fields
.field protected amU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mc;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/mc",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mc;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ma;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    if-nez v1, :cond_1f

    move v1, v0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v2, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mh;

    iget v3, v0, Lcom/google/android/gms/internal/mh;->tag:I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ma;->eI(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/mh;->amZ:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ma;->t([B)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_6

    :cond_26
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/lz;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/lz;->ev(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lz;->o(II)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/mh;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/mh;-><init>(I[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected c()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    if-nez v1, :cond_21

    move v1, v0

    :goto_6
    move v2, v0

    move v3, v0

    :goto_8
    if-ge v2, v1, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mh;

    iget v4, v0, Lcom/google/android/gms/internal/mh;->tag:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ma;->eJ(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mh;->amZ:[B

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/mb;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_6

    :cond_28
    return v3
.end method

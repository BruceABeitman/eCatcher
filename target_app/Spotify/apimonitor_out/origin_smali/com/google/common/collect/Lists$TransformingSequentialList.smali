.class Lcom/google/common/collect/Lists$TransformingSequentialList;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation
.end field

.field final function:Lcom/google/common/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b",
            "<-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/google/common/base/b",
            "<-TF;+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/b;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;

    iget-object v1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Lists$TransformingSequentialList$1;-><init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    return-object v0
.end method

.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ag;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/ag;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V

    return-object v0
.end method

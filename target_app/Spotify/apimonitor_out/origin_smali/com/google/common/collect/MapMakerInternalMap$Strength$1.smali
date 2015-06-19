.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$Strength;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/base/Equivalence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/base/Equivalence;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Ljava/lang/Object;)Lcom/google/common/collect/ac;
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
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/ac",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/aa;

    invoke-direct {v0, p3}, Lcom/google/common/collect/aa;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

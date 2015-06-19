.class final enum Lcom/google/b/c/af;
.super Lcom/google/b/c/ae;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/b/c/ae;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/b/c/ba;Ljava/lang/Object;ILcom/google/b/c/az;)Lcom/google/b/c/az;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/c/ba",
            "<TK;TV;>;TK;I",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)",
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/c/bg;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/b/c/bg;-><init>(Ljava/lang/Object;ILcom/google/b/c/az;)V

    return-object v0
.end method

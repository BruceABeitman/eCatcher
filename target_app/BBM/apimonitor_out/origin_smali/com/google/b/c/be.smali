.class final enum Lcom/google/b/c/be;
.super Lcom/google/b/c/bc;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/b/c/bc;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/b/a/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/a/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/b/a/e;->a:Lcom/google/b/a/e;

    return-object v0
.end method

.method final a(Lcom/google/b/c/ba;Lcom/google/b/c/az;Ljava/lang/Object;)Lcom/google/b/c/bm;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/c/ba",
            "<TK;TV;>;",
            "Lcom/google/b/c/az",
            "<TK;TV;>;TV;)",
            "Lcom/google/b/c/bm",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/c/bb;

    iget-object v1, p1, Lcom/google/b/c/ba;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/b/c/bb;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/c/az;)V

    return-object v0
.end method

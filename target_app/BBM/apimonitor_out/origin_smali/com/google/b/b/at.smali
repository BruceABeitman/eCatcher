.class final enum Lcom/google/b/b/at;
.super Lcom/google/b/b/aq;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/b/b/aq;-><init>(Ljava/lang/String;IB)V

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

.method final a(Lcom/google/b/b/an;Lcom/google/b/b/am;Ljava/lang/Object;)Lcom/google/b/b/ba;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/b/an",
            "<TK;TV;>;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;TV;)",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/b/bf;

    iget-object v1, p1, Lcom/google/b/b/an;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/b/b/bf;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)V

    return-object v0
.end method

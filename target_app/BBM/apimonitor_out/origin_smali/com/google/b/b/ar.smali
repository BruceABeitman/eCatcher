.class final enum Lcom/google/b/b/ar;
.super Lcom/google/b/b/aq;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/b/b/aq;-><init>(Ljava/lang/String;IB)V

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

    sget-object v0, Lcom/google/b/a/d;->a:Lcom/google/b/a/d;

    return-object v0
.end method

.method final a(Lcom/google/b/b/an;Lcom/google/b/b/am;Ljava/lang/Object;)Lcom/google/b/b/ba;
    .registers 5
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

    new-instance v0, Lcom/google/b/b/ax;

    invoke-direct {v0, p3}, Lcom/google/b/b/ax;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

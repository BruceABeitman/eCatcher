.class final enum Lcom/google/b/b/x;
.super Lcom/google/b/b/v;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/b/b/v;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/b/b/an;Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;
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
            "<TK;TV;>;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/b/b/v;->a(Lcom/google/b/b/an;Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/b/b/x;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;)V

    return-object v0
.end method

.method final a(Lcom/google/b/b/an;Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/b/an",
            "<TK;TV;>;TK;I",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/b/au;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/b/b/au;-><init>(Ljava/lang/Object;ILcom/google/b/b/am;)V

    return-object v0
.end method

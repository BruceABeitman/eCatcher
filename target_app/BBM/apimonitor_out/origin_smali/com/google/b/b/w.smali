.class final enum Lcom/google/b/b/w;
.super Lcom/google/b/b/v;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/b/b/v;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
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

    new-instance v0, Lcom/google/b/b/aw;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/b/b/aw;-><init>(Ljava/lang/Object;ILcom/google/b/b/am;)V

    return-object v0
.end method

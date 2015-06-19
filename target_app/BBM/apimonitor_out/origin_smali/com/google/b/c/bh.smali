.class final Lcom/google/b/c/bh;
.super Lcom/google/b/c/bg;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/b/c/az;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/c/bg",
        "<TK;TV;>;",
        "Lcom/google/b/c/az",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field e:Lcom/google/b/c/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/b/c/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/b/c/az;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/b/c/bg;-><init>(Ljava/lang/Object;ILcom/google/b/c/az;)V

    invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/c/bh;->e:Lcom/google/b/c/az;

    invoke-static {}, Lcom/google/b/c/aa;->g()Lcom/google/b/c/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/c/bh;->f:Lcom/google/b/c/az;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/c/bh;->e:Lcom/google/b/c/az;

    return-void
.end method

.method public final d(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/c/bh;->f:Lcom/google/b/c/az;

    return-void
.end method

.method public final h()Lcom/google/b/c/az;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/bh;->e:Lcom/google/b/c/az;

    return-object v0
.end method

.method public final i()Lcom/google/b/c/az;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/bh;->f:Lcom/google/b/c/az;

    return-object v0
.end method

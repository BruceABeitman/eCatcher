.class final Lcom/google/b/c/bn;
.super Ljava/util/AbstractCollection;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/c/aa;


# direct methods
.method constructor <init>(Lcom/google/b/c/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/b/c/bn;->a:Lcom/google/b/c/aa;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/bn;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0}, Lcom/google/b/c/aa;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/b/c/bn;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0, p1}, Lcom/google/b/c/aa;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/bn;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0}, Lcom/google/b/c/aa;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/c/bl;

    iget-object v1, p0, Lcom/google/b/c/bn;->a:Lcom/google/b/c/aa;

    invoke-direct {v0, v1}, Lcom/google/b/c/bl;-><init>(Lcom/google/b/c/aa;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/bn;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0}, Lcom/google/b/c/aa;->size()I

    move-result v0

    return v0
.end method

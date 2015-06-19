.class final Lcom/google/common/collect/ReverseOrdering;
.super Lcom/google/common/collect/am;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/am",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final forwardOrder:Lcom/google/common/collect/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/am",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/am;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/am",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/am;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/am;

    iput-object v0, p0, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/am",
            "<TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    invoke-virtual {v0, p2, p1}, Lcom/google/common/collect/am;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/ReverseOrdering;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/common/collect/ReverseOrdering;

    iget-object v0, p0, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    iget-object v1, p1, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/ReverseOrdering;->forwardOrder:Lcom/google/common/collect/am;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

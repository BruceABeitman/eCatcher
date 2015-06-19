.class Lcom/glympse/android/lib/s;
.super Ljava/lang/Object;
.source "ArrayAdapter.java"

# interfaces
.implements Lcom/glympse/android/core/GArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FROM:",
        "Ljava/lang/Object;",
        "TO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/glympse/android/core/GArray",
        "<TTO;>;"
    }
.end annotation


# instance fields
.field private hF:Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/core/GArray",
            "<TFROM;>;"
        }
    .end annotation
.end field

.field private hG:Lcom/glympse/android/lib/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bp",
            "<TFROM;TTO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/bp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<TFROM;>;",
            "Lcom/glympse/android/lib/bp",
            "<TFROM;TTO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    iput-object p2, p0, Lcom/glympse/android/lib/s;->hG:Lcom/glympse/android/lib/bp;

    return-void
.end method


# virtual methods
.method public at(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/s;->hG:Lcom/glympse/android/lib/bp;

    iget-object v1, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    invoke-interface {v1, p1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/bp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/glympse/android/core/GArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<TTO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v1

    new-instance v2, Lcom/glympse/android/hal/GVector;

    invoke-direct {v2, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_20

    iget-object v3, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    invoke-interface {v3, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/glympse/android/lib/s;->hG:Lcom/glympse/android/lib/bp;

    invoke-interface {v4, v3}, Lcom/glympse/android/lib/bp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/glympse/android/lib/s;->clone()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TTO;>;"
        }
    .end annotation

    new-instance v0, Lcom/glympse/android/lib/t;

    iget-object v1, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    invoke-interface {v1}, Lcom/glympse/android/core/GArray;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/s;->hG:Lcom/glympse/android/lib/bp;

    invoke-direct {v0, p0, v1, v2}, Lcom/glympse/android/lib/t;-><init>(Lcom/glympse/android/lib/s;Ljava/util/Enumeration;Lcom/glympse/android/lib/bp;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TTO;>;"
        }
    .end annotation

    new-instance v0, Lcom/glympse/android/lib/u;

    iget-object v1, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    invoke-interface {v1}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/s;->hG:Lcom/glympse/android/lib/bp;

    invoke-direct {v0, p0, v1, v2}, Lcom/glympse/android/lib/u;-><init>(Lcom/glympse/android/lib/s;Ljava/util/Iterator;Lcom/glympse/android/lib/bp;)V

    return-object v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/s;->hF:Lcom/glympse/android/core/GArray;

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v0

    return v0
.end method

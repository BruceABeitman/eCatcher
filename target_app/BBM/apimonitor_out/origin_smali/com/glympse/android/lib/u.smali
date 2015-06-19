.class Lcom/glympse/android/lib/u;
.super Ljava/lang/Object;
.source "ArrayAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TTO;>;"
    }
.end annotation


# instance fields
.field private hG:Lcom/glympse/android/lib/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bp",
            "<TFROM;TTO;>;"
        }
    .end annotation
.end field

.field final synthetic hI:Lcom/glympse/android/lib/s;

.field private hJ:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TFROM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/s;Ljava/util/Iterator;Lcom/glympse/android/lib/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TFROM;>;",
            "Lcom/glympse/android/lib/bp",
            "<TFROM;TTO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/u;->hI:Lcom/glympse/android/lib/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/u;->hJ:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/glympse/android/lib/u;->hG:Lcom/glympse/android/lib/bp;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/u;->hJ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/u;->hG:Lcom/glympse/android/lib/bp;

    iget-object v1, p0, Lcom/glympse/android/lib/u;->hJ:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/bp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method

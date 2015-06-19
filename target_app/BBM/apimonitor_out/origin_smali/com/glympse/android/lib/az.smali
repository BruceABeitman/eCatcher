.class Lcom/glympse/android/lib/az;
.super Lcom/glympse/android/lib/y;
.source "DiagnosticsManager.java"


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/GGlympsePrivate;",
            "Lcom/glympse/android/lib/GBatchListener;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/lib/y;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    invoke-super {p0}, Lcom/glympse/android/lib/y;->onComplete()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/az;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/glympse/android/lib/az;->_failures:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/glympse/android/lib/az;->abort()V

    iget-object v0, p0, Lcom/glympse/android/lib/az;->hS:Lcom/glympse/android/lib/GBatchListener;

    iget-object v1, p0, Lcom/glympse/android/lib/az;->hT:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GBatchListener;->batchFailed(Lcom/glympse/android/hal/GVector;)V

    :cond_18
    return-void
.end method

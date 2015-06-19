.class final Lcom/facebook/Request$4;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v4, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/Request$Callback;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/Response;

    invoke-interface {v4, v5}, Lcom/facebook/Request$Callback;->onCompleted(Lcom/facebook/Response;)V

    goto :goto_6

    :cond_1e
    iget-object v4, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v4}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    iget-object v4, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-interface {v0, v4}, Lcom/facebook/RequestBatch$Callback;->onBatchCompleted(Lcom/facebook/RequestBatch;)V

    goto :goto_28

    :cond_3a
    return-void
.end method

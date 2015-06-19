.class final Lcom/bbm/util/e;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/util/b;


# direct methods
.method constructor <init>(Lcom/bbm/util/b;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/e;->a:Lcom/bbm/util/b;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbm/util/e;->a:Lcom/bbm/util/b;

    invoke-virtual {p0}, Lcom/bbm/util/e;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/b;->b(Lcom/bbm/util/b;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_1c

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->b(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1c
    move-exception v0

    iget-object v0, p0, Lcom/bbm/util/e;->a:Lcom/bbm/util/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/util/b;->b(Lcom/bbm/util/b;Ljava/lang/Object;)V

    goto :goto_9
.end method

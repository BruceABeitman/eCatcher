.class Lcom/twidroid/net/b/a/f$3;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/b/a/f;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/b/a/f;


# direct methods
.method constructor <init>(Lcom/twidroid/net/b/a/f;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/b/a/f$3;->a:Lcom/twidroid/net/b/a/f;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/net/b/a/f$3;->a:Lcom/twidroid/net/b/a/f;

    invoke-virtual {p0}, Lcom/twidroid/net/b/a/f$3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/b/a/f;->b(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_1e

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    iget-object v0, p0, Lcom/twidroid/net/b/a/f$3;->a:Lcom/twidroid/net/b/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/net/b/a/f;->b(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)V

    goto :goto_9
.end method

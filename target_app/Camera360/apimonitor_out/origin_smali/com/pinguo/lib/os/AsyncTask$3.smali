.class Lcom/pinguo/lib/os/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/lib/os/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/lib/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/pinguo/lib/os/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/lib/os/AsyncTask$3;->this$0:Lcom/pinguo/lib/os/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask$3;->this$0:Lcom/pinguo/lib/os/AsyncTask;

    invoke-virtual {p0}, Lcom/pinguo/lib/os/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    #calls: Lcom/pinguo/lib/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/pinguo/lib/os/AsyncTask;->access$3(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_20

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_20
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/lib/os/AsyncTask$3;->this$0:Lcom/pinguo/lib/os/AsyncTask;

    const/4 v2, 0x0

    #calls: Lcom/pinguo/lib/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/pinguo/lib/os/AsyncTask;->access$3(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9
.end method

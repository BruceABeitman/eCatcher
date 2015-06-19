.class final Lcom/blackberry/ids/IDS$13;
.super Ljava/lang/Object;
.source "IDS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/RequestId;

.field final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/RequestId;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 3

    iput-object p1, p0, Lcom/blackberry/ids/IDS$13;->a:Lcom/blackberry/ids/RequestId;

    iput-object p2, p0, Lcom/blackberry/ids/IDS$13;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :try_start_5
    iget-object v0, p0, Lcom/blackberry/ids/IDS$13;->a:Lcom/blackberry/ids/RequestId;

    invoke-static {v0}, Lcom/blackberry/ids/IDS;->c(Lcom/blackberry/ids/RequestId;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_15

    move-result-object v0

    iget-object v1, p0, Lcom/blackberry/ids/IDS$13;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void

    :catch_15
    move-exception v0

    :try_start_16
    const-string v2, "Unexpected Throwable in pingServer"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_24

    iget-object v0, p0, Lcom/blackberry/ids/IDS$13;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_24
    move-exception v0

    iget-object v2, p0, Lcom/blackberry/ids/IDS$13;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    throw v0
.end method

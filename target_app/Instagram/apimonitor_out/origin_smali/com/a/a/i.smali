.class final Lcom/a/a/i;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/a/a/f;


# direct methods
.method constructor <init>(Lcom/a/a/f;[B)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/i;->b:Lcom/a/a/f;

    iput-object p2, p0, Lcom/a/a/i;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->a(Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_25

    :try_start_7
    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_30

    :goto_10
    return-void

    :cond_11
    :try_start_11
    monitor-exit v1

    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/f;

    invoke-static {v0}, Lcom/a/a/f;->d(Lcom/a/a/f;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_25

    goto :goto_10

    :catch_25
    move-exception v0

    iget-object v1, p0, Lcom/a/a/i;->b:Lcom/a/a/f;

    invoke-static {v1}, Lcom/a/a/f;->f(Lcom/a/a/f;)Lcom/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/k;->onError(Ljava/lang/Exception;)V

    goto :goto_10

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1

    throw v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_33} :catch_25
.end method

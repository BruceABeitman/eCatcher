.class final Lcom/facebook/g/h;
.super Ljava/io/OutputStream;
.source "FileLruCache.java"


# instance fields
.field final a:Ljava/io/OutputStream;

.field final b:Lcom/facebook/g/l;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/g/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/facebook/g/h;->b:Lcom/facebook/g/l;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/facebook/g/h;->b:Lcom/facebook/g/l;

    invoke-interface {v0}, Lcom/facebook/g/l;->a()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/facebook/g/h;->b:Lcom/facebook/g/l;

    invoke-interface {v1}, Lcom/facebook/g/l;->a()V

    throw v0
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/g/h;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.class public Lorg/apache/commons/io/output/ProxyOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProxyOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected beforeWrite(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    throw p1
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_d
.end method

.method public write([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_f

    :try_start_2
    array-length v1, p1

    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_11

    :goto_e
    return-void

    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    :catch_11
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_e
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_b
.end method

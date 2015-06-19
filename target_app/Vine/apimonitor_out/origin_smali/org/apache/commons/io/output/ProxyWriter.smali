.class public Lorg/apache/commons/io/output/ProxyWriter;
.super Ljava/io/FilterWriter;
.source "ProxyWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

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

.method public append(C)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    :goto_d
    return-object p0

    :catch_e
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_d
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    :goto_12
    return-object p0

    :catch_13
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_12
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-int v1, p3, p2

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    sub-int v1, p3, p2

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_10

    :goto_f
    return-object p0

    :catch_10
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_f
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
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
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

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
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

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
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_d
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_12
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_b
.end method

.method public write([C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_3
    array-length v1, p1

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write([C)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_f
.end method

.method public write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_b
.end method

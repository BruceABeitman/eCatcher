.class public Lorg/apache/commons/io/CopyUtils;
.super Ljava/lang/Object;
.source "CopyUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x1000

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v3, v2, :cond_13

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    goto :goto_6

    :cond_13
    return v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x1000

    new-array v0, v3, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-eq v3, v2, :cond_13

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V

    add-int/2addr v1, v2

    goto :goto_6

    :cond_13
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static copy([BLjava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static copy([BLjava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

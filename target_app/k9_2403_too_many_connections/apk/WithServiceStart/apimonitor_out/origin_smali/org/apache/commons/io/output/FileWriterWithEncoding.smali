.class public Lorg/apache/commons/io/output/FileWriterWithEncoding;
.super Ljava/io/Writer;
.source "FileWriterWithEncoding.java"


# instance fields
.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    return-void
.end method

.method private static initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "File is missing"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    if-nez p1, :cond_14

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Encoding is missing"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1f} :catch_50

    :try_start_1f
    instance-of v6, p1, Ljava/nio/charset/Charset;

    if-eqz v6, :cond_2c

    new-instance v5, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v5

    :goto_2b
    return-object v4

    :cond_2c
    instance-of v6, p1, Ljava/nio/charset/CharsetEncoder;

    if-eqz v6, :cond_39

    new-instance v5, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    invoke-direct {v5, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    move-object v4, v5

    goto :goto_2b

    :cond_39
    new-instance v5, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v5, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_40} :catch_5e

    move-object v4, v5

    goto :goto_2b

    :catch_42
    move-exception v6

    move-object v0, v6

    :goto_44
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    if-nez v1, :cond_4f

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    :cond_4f
    throw v0

    :catch_50
    move-exception v6

    move-object v0, v6

    :goto_52
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    if-nez v1, :cond_5d

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    :cond_5d
    throw v0

    :catch_5e
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    goto :goto_52

    :catch_62
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    goto :goto_44
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write([C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.class public Lcom/umeng/common/util/f;
.super Ljava/lang/Object;
.source "DeflaterHelper.java"


# static fields
.field public static a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v1, 0x64

    new-array v1, v1, [B

    array-length v2, p0

    invoke-virtual {v0, p0, v5, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1a
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_28
    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v5, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    const/16 v1, 0x2000

    new-array v3, v1, [B

    sput v4, Lcom/umeng/common/util/f;->a:I

    :try_start_1e
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_4b

    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_44

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_8

    :cond_36
    :try_start_36
    invoke-virtual {v2, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    sget v4, Lcom/umeng/common/util/f;->a:I

    add-int/2addr v4, v0

    sput v4, Lcom/umeng/common/util/f;->a:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_44

    goto :goto_23

    :catchall_44
    move-exception v0

    :goto_45
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4a
    throw v0

    :catchall_4b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_45
.end method

.class Lcom/facebook/Request$Serializer;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;Lcom/facebook/internal/Logger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    iput-object p1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    iput-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    return-void
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    :cond_28
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_16

    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2d

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const-string v7, "content/unknown"

    invoke-virtual {p0, p1, p1, v7}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_9
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_62

    :try_start_e
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_6e

    const/16 v7, 0x2000

    :try_start_15
    new-array v0, v7, [B

    :goto_17
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_26

    iget-object v7, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_71

    add-int/2addr v6, v3

    goto :goto_17

    :cond_26
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_2b
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_30
    const-string v7, ""

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v7, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "<Data: %d>"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_62
    move-exception v7

    :goto_63
    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_68
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_6d
    throw v7

    :catchall_6e
    move-exception v7

    move-object v4, v5

    goto :goto_63

    :catchall_71
    move-exception v7

    move-object v1, v2

    move-object v4, v5

    goto :goto_63
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #calls: Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/facebook/Request;->access$100(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    #calls: Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/Request;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_d

    :cond_18
    instance-of v0, p2, [B

    if-eqz v0, :cond_24

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_d

    :cond_24
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2e

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecordBoundary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

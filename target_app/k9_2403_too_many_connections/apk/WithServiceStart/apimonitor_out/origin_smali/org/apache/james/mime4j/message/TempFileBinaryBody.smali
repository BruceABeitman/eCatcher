.class Lorg/apache/james/mime4j/message/TempFileBinaryBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "TempFileBinaryBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private tempFile:Lorg/apache/james/mime4j/util/TempFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    invoke-static {}, Lorg/apache/james/mime4j/util/TempStorage;->getInstance()Lorg/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v1

    const-string v2, "attachment"

    const-string v3, ".bin"

    invoke-interface {v1, v2, v3}, Lorg/apache/james/mime4j/util/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    invoke-interface {v2}, Lorg/apache/james/mime4j/util/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/util/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void
.end method

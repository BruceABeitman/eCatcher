.class public Lcom/pinguo/Camera360Lib/network/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"
.implements Lorg/apache/http/HttpEntity;
.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"
.field private static final CR_LF:[B = null
.field public static final IMAGE_JPG:Ljava/lang/String; = "image/jpeg"
.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"
.field private static final LOG_TAG:Ljava/lang/String; = "SimpleMultipartEntity"
.field private static final MULTIPART_CHARS:[C = null
.field private static final STR_CR_LF:Ljava/lang/String; = "\r\n"
.field private static final TRANSFER_ENCODING_BINARY:[B
.field private final boundary:Ljava/lang/String;
.field private final boundaryEnd:[B
.field private final boundaryLine:[B
.field private bytesWritten:I
.field private final fileParts:Ljava/util/List;
.field private isRepeatable:Z
.field private final out:Ljava/io/ByteArrayOutputStream;
.field private final progressHandler:Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;
.field private totalSize:I
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->CR_LF:[B
const-string/jumbo v0, "Content-Transfer-Encoding: binary\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->TRANSFER_ENCODING_BINARY:[B
const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->MULTIPART_CHARS:[C
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;-><init>(Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;)V
return-void
.end method
.method public constructor <init>(Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->fileParts:Ljava/util/List;
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Ljava/util/Random;
invoke-direct {v2}, Ljava/util/Random;-><init>()V
const/4 v1, 0x0
:goto_1c
const/16 v3, 0x1e
if-lt v1, v3, :cond_6e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundary:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "--"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundary:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
iput-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryLine:[B
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "--"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundary:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "--"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
iput-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryEnd:[B
iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->progressHandler:Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;
return-void
:cond_6e
sget-object v3, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->MULTIPART_CHARS:[C
sget-object v4, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->MULTIPART_CHARS:[C
array-length v4, v4
invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I
move-result v4
aget-char v3, v3, v4
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_1c
.end method
.method static synthetic access$0(Lcom/pinguo/Camera360Lib/network/MultipartEntity;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryLine:[B
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/Camera360Lib/network/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/Camera360Lib/network/MultipartEntity;Ljava/lang/String;)[B
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentType(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method static synthetic access$3()[B
.registers 1
sget-object v0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->TRANSFER_ENCODING_BINARY:[B
return-object v0
.end method
.method static synthetic access$4()[B
.registers 1
sget-object v0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->CR_LF:[B
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/Camera360Lib/network/MultipartEntity;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->updateProgress(I)V
return-void
.end method
.method private createContentDisposition(Ljava/lang/String;)[B
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Content-Disposition: form-data; name=\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
return-object v0
.end method
.method private createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Content-Disposition: form-data; name=\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\"; filename=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
return-object v0
.end method
.method private createContentType(Ljava/lang/String;)[B
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Content-Type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
return-object v1
.end method
.method private normalizeContentType(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-nez p1, :cond_5
const-string/jumbo p1, "application/octet-stream"
:cond_5
return-object p1
.end method
.method private updateProgress(I)V
.registers 5
iget v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->bytesWritten:I
add-int/2addr v0, p1
iput v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->bytesWritten:I
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->progressHandler:Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->progressHandler:Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;
iget v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->bytesWritten:I
iget v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->totalSize:I
invoke-interface {v0, v1, v2}, Lcom/pinguo/Camera360Lib/network/ResponseHandlerInterface;->sendProgressMessage(II)V
:cond_12
return-void
.end method
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->fileParts:Ljava/util/List;
new-instance v1, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;
invoke-direct {p0, p3}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, p0, p1, p2, v2}, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;-><init>(Lcom/pinguo/Camera360Lib/network/MultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string/jumbo v0, "text/plain; charset=UTF-8"
invoke-virtual {p0, p1, p2, v0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryLine:[B
invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-direct {p0, p1, p2}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-direct {p0, p4}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentType(Ljava/lang/String;)[B
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
sget-object v3, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->TRANSFER_ENCODING_BINARY:[B
invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
sget-object v3, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->CR_LF:[B
invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
const/16 v2, 0x1000
new-array v1, v2, [B
:goto_2b
invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I
move-result v0
const/4 v2, -0x1
if-ne v0, v2, :cond_44
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
sget-object v3, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->CR_LF:[B
invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
return-void
:cond_44
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
const/4 v3, 0x0
invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
goto :goto_2b
.end method
.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
:try_start_0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryLine:[B
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentDisposition(Ljava/lang/String;)[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-direct {p0, p3}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentType(Ljava/lang/String;)[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
sget-object v2, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->CR_LF:[B
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
sget-object v2, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->CR_LF:[B
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
:goto_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31
return-void
:catch_31
move-exception v0
const-string/jumbo v1, "SimpleMultipartEntity"
const-string/jumbo v2, "addPart ByteArrayOutputStream exception"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_30
.end method
.method public consumeContent()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->isStreaming()Z
move-result v0
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string/jumbo v1, "Streaming entity does not implement #consumeContent()"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string/jumbo v1, "getContent() is not supported. Use writeTo() instead."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getContentEncoding()Lorg/apache/http/Header;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getContentLength()J
.registers 9
iget-object v5, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v5
int-to-long v0, v5
iget-object v5, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->fileParts:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_1a
iget-object v5, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryEnd:[B
array-length v5, v5
int-to-long v5, v5
add-long/2addr v0, v5
move-wide v5, v0
:goto_19
return-wide v5
:cond_1a
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;
invoke-virtual {v2}, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->getTotalLength()J
move-result-wide v3
const-wide/16 v6, 0x0
cmp-long v6, v3, v6
if-gez v6, :cond_2d
const-wide/16 v5, -0x1
goto :goto_19
:cond_2d
add-long/2addr v0, v3
goto :goto_d
.end method
.method public getContentType()Lorg/apache/http/Header;
.registers 5
new-instance v0, Lorg/apache/http/message/BasicHeader;
const-string/jumbo v1, "Content-Type"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "multipart/form-data; boundary="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundary:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public isChunked()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isRepeatable()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->isRepeatable:Z
return v0
.end method
.method public isStreaming()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public setIsRepeatable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->isRepeatable:Z
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 5
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->bytesWritten:I
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->getContentLength()J
move-result-wide v1
long-to-int v1, v1
iput v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->totalSize:I
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->out:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v1
invoke-direct {p0, v1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->updateProgress(I)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->fileParts:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_30
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryEnd:[B
invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
iget-object v1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryEnd:[B
array-length v1, v1
invoke-direct {p0, v1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->updateProgress(I)V
return-void
:cond_30
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;
invoke-virtual {v0, p1}, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V
goto :goto_1e
.end method
.class Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "MultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/Camera360Lib/network/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public header:[B

.field final synthetic this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;


# direct methods
.method public constructor <init>(Lcom/pinguo/Camera360Lib/network/MultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->header:[B

    iput-object p3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->file:Ljava/io/File;

    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    #getter for: Lcom/pinguo/Camera360Lib/network/MultipartEntity;->boundaryLine:[B
    invoke-static {v2}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$0(Lcom/pinguo/Camera360Lib/network/MultipartEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    #calls: Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v2, p1, p2}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$1(Lcom/pinguo/Camera360Lib/network/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    #calls: Lcom/pinguo/Camera360Lib/network/MultipartEntity;->createContentType(Ljava/lang/String;)[B
    invoke-static {v2, p3}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$2(Lcom/pinguo/Camera360Lib/network/MultipartEntity;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$3()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$4()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2e} :catch_33

    :goto_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :catch_33
    move-exception v0

    const-string/jumbo v2, "SimpleMultipartEntity"

    const-string/jumbo v3, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method


# virtual methods
.method public getTotalLength()J
    .registers 7

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$4()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    iget-object v4, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->header:[B

    array-length v4, v4

    #calls: Lcom/pinguo/Camera360Lib/network/MultipartEntity;->updateProgress(I)V
    invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$5(Lcom/pinguo/Camera360Lib/network/MultipartEntity;I)V

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x1000

    new-array v2, v3, [B

    :goto_18
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_37

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$4()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$4()[B

    move-result-object v4

    array-length v4, v4

    #calls: Lcom/pinguo/Camera360Lib/network/MultipartEntity;->updateProgress(I)V
    invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$5(Lcom/pinguo/Camera360Lib/network/MultipartEntity;I)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_37
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/network/MultipartEntity$FilePart;->this$0:Lcom/pinguo/Camera360Lib/network/MultipartEntity;

    #calls: Lcom/pinguo/Camera360Lib/network/MultipartEntity;->updateProgress(I)V
    invoke-static {v3, v0}, Lcom/pinguo/Camera360Lib/network/MultipartEntity;->access$5(Lcom/pinguo/Camera360Lib/network/MultipartEntity;I)V

    goto :goto_18
.end method

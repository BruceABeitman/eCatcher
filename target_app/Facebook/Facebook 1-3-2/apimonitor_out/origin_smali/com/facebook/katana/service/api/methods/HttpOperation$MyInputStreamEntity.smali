.class Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "HttpOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/HttpOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInputStreamEntity"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/api/methods/HttpOperation;Ljava/io/InputStream;J)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;->this$0:Lcom/facebook/katana/service/api/methods/HttpOperation;

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;->getContentLength()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;-><init>(Lcom/facebook/katana/service/api/methods/HttpOperation;Ljava/io/OutputStream;J)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

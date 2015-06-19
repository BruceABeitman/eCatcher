.class Lcom/pinguo/album/data/download/GroupDataDownloader$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "GroupDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/data/download/GroupDataDownloader;->initHttpGroupDataRequest()Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/album/data/download/entity/GroupDataJson;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;


# direct methods
.method constructor <init>(Lcom/pinguo/album/data/download/GroupDataDownloader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/data/download/GroupDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;

    invoke-direct {p0, p2}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "GroupDataDownloader"

    const-string/jumbo v1, "onErrorResponse:onErrorResponse"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    invoke-static {v0, v1}, Lcom/pinguo/album/data/download/GroupDataDownloader;->access$1(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V

    return-void
.end method

.method protected onResponse(Lcom/pinguo/album/data/download/entity/GroupDataJson;)V
    .registers 5

    const-string/jumbo v0, "GroupDataDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "increment req onResponse"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/pinguo/album/data/download/entity/GroupDataJson;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",req lastTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/pinguo/album/data/download/entity/GroupDataJson;->status:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;

    iget-object v1, p1, Lcom/pinguo/album/data/download/entity/GroupDataJson;->data:Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;

    #calls: Lcom/pinguo/album/data/download/GroupDataDownloader;->downloadFinished(Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V
    invoke-static {v0, v1}, Lcom/pinguo/album/data/download/GroupDataDownloader;->access$0(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V

    :goto_2c
    return-void

    :cond_2d
    const-string/jumbo v0, "GroupDataDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResponse error response.status ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/pinguo/album/data/download/entity/GroupDataJson;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader$1;->this$0:Lcom/pinguo/album/data/download/GroupDataDownloader;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    invoke-static {v0, v1}, Lcom/pinguo/album/data/download/GroupDataDownloader;->access$1(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V

    goto :goto_2c
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/album/data/download/entity/GroupDataJson;

    invoke-virtual {p0, p1}, Lcom/pinguo/album/data/download/GroupDataDownloader$1;->onResponse(Lcom/pinguo/album/data/download/entity/GroupDataJson;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/pinguo/album/data/download/entity/GroupDataJson;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "GroupDataDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parseNetworkResponse = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method

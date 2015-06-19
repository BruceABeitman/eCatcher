.class Lcom/pinguo/album/data/download/MetaDataDownLoader$1;
.super Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.source "MetaDataDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/data/download/MetaDataDownLoader;->initHttpAlbumRequest(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
        "<",
        "Lcom/pinguo/album/data/download/entity/MetaDataJson;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/data/download/MetaDataDownLoader;

.field private final synthetic val$sp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/album/data/download/MetaDataDownLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->this$0:Lcom/pinguo/album/data/download/MetaDataDownLoader;

    iput-object p3, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->val$sp:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onErrorResponse(Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->this$0:Lcom/pinguo/album/data/download/MetaDataDownLoader;

    #getter for: Lcom/pinguo/album/data/download/MetaDataDownLoader;->mMetaDataLoadingListener:Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
    invoke-static {v0}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->access$1(Lcom/pinguo/album/data/download/MetaDataDownLoader;)Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;->OnDownloadFailed(ILjava/lang/String;)V

    return-void
.end method

.method protected onResponse(Lcom/pinguo/album/data/download/entity/MetaDataJson;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "metaDown req: onResponse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",req sp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->val$sp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->status:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->this$0:Lcom/pinguo/album/data/download/MetaDataDownLoader;

    #getter for: Lcom/pinguo/album/data/download/MetaDataDownLoader;->mMetaDataLoadingListener:Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
    invoke-static {v1}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->access$1(Lcom/pinguo/album/data/download/MetaDataDownLoader;)Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;

    move-result-object v1

    iget-object v2, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->data:Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;

    invoke-interface {v1, v2}, Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;->onDownloadFinished(Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;)V

    :goto_37
    return-void

    :cond_38
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->message:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_47

    iget-object v0, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->message:Ljava/lang/String;

    :cond_47
    iget-object v1, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->this$0:Lcom/pinguo/album/data/download/MetaDataDownLoader;

    #getter for: Lcom/pinguo/album/data/download/MetaDataDownLoader;->mMetaDataLoadingListener:Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
    invoke-static {v1}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->access$1(Lcom/pinguo/album/data/download/MetaDataDownLoader;)Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;

    move-result-object v1

    iget v2, p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;->status:I

    invoke-interface {v1, v2, v0}, Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;->OnDownloadFailed(ILjava/lang/String;)V

    goto :goto_37
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/album/data/download/entity/MetaDataJson;

    invoke-virtual {p0, p1}, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;->onResponse(Lcom/pinguo/album/data/download/entity/MetaDataJson;)V

    return-void
.end method

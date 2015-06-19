.class public Lcom/pinguo/album/data/download/GroupDataDownloader;
.super Ljava/lang/Object;
.source "GroupDataDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupDataDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
            "<",
            "Lcom/pinguo/album/data/download/entity/GroupDataJson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/download/GroupDataDownloader;->downloadFinished(Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/album/data/download/GroupDataDownloader;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private downloadFinished(Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V
    .registers 3

    new-instance v0, Lcom/pinguo/album/data/download/GroupDataDownloader$2;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/album/data/download/GroupDataDownloader$2;-><init>(Lcom/pinguo/album/data/download/GroupDataDownloader;Lcom/pinguo/album/data/download/entity/GroupDataJson$ResultJson;)V

    invoke-virtual {v0}, Lcom/pinguo/album/data/download/GroupDataDownloader$2;->start()V

    return-void
.end method

.method private initHttpGroupDataRequest()Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
            "<",
            "Lcom/pinguo/album/data/download/entity/GroupDataJson;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pinguo/album/utils/AlbumConstants;->buildGroupDataCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    :try_start_7
    const-string/jumbo v4, "http://cloud.camera360.com/group/getData"

    invoke-static {v4, v1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_d} :catch_31

    move-result-object v3

    :goto_e
    const-string/jumbo v4, "GroupDataDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Group dat  url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/pinguo/album/data/download/GroupDataDownloader$1;

    invoke-direct {v2, p0, v3}, Lcom/pinguo/album/data/download/GroupDataDownloader$1;-><init>(Lcom/pinguo/album/data/download/GroupDataDownloader;Ljava/lang/String;)V

    invoke-static {}, LvStudio/Android/Camera360/RemoteConstants;->getRetryPolity()Lcom/android/volley/RetryPolicy;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-object v2

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method public startDownLoadGroupData()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/pinguo/album/data/download/GroupDataDownloader;->initHttpGroupDataRequest()Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    iget-object v0, p0, Lcom/pinguo/album/data/download/GroupDataDownloader;->mHttpTask:Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->execute()V

    goto :goto_8
.end method

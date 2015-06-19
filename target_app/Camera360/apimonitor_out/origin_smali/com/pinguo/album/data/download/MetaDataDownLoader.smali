.class public Lcom/pinguo/album/data/download/MetaDataDownLoader;
.super Ljava/lang/Object;
.source "MetaDataDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
    }
.end annotation


# static fields
.field public static final ALBUM_HTTP_REQUEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final ALBUM_HTTP_REQUEST_PARAMETER_SP:Ljava/lang/String; = "sp"

.field private static final DOWNLOAD_INTERVAL:J = 0x5265c00L

.field private static final DOWNLOAD_PAGE_SIZE:Ljava/lang/String; = "800"

.field private static final TAG:Ljava/lang/String; = null

.field public static final TEST_USER_USER_KEY:Ljava/lang/String; = "cHRmWGVaaXF0UDdFSmYvY3k2OVRiVFh6ZzVWWVA4NTNnS3lVeHlwV2RIRGFxTHRLdlBTOXlOT2krOGgvZ0U4L3Q3MVlDelFnYmcxcGt5MHMwQXdxaXdIU0V1YlJ3RUFWUVNXMDdPdUppWC8wdEJFc3JEMTg3Zz09"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFixedCommonParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaDataLoadingListener:Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/data/download/MetaDataDownLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->initRequestParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->mFixedCommonParam:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/album/data/download/MetaDataDownLoader;)Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->mMetaDataLoadingListener:Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;

    return-object v0
.end method

.method private initHttpAlbumRequest(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/pinguo/Camera360Lib/network/HttpGsonRequest",
            "<",
            "Lcom/pinguo/album/data/download/entity/MetaDataJson;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->mFixedCommonParam:Ljava/util/Map;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string/jumbo v4, ""

    :try_start_a
    const-string/jumbo v5, "sp"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "http://cloud.camera360.com/v2/page/timeline"

    invoke-static {v6, v1}, Lcom/pinguo/Camera360Lib/utils/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "&sig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_32} :catch_56

    move-result-object v4

    :goto_33
    move-object v3, v4

    sget-object v5, Lcom/pinguo/album/data/download/MetaDataDownLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "metaDown req: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;

    invoke-direct {v2, p0, v4, p1}, Lcom/pinguo/album/data/download/MetaDataDownLoader$1;-><init>(Lcom/pinguo/album/data/download/MetaDataDownLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LvStudio/Android/Camera360/RemoteConstants;->getRetryPolity()Lcom/android/volley/RetryPolicy;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-object v2

    :catch_56
    move-exception v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_33
.end method

.method private initRequestParam(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/pinguo/album/utils/AlbumConstants;->buildCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "limit"

    const-string/jumbo v2, "800"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static isTimeForAutoUpdate(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/pinguo/album/common/PGPreferences;->getMetadataUpdateTime(Landroid/content/Context;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public setMetaDataLoadingListener(Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->mMetaDataLoadingListener:Lcom/pinguo/album/data/download/MetaDataDownLoader$MetaDataLoadingListener;

    return-void
.end method

.method public startDowloadFirstPage()Z
    .registers 3

    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->initHttpAlbumRequest(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->execute()V

    const/4 v1, 0x1

    return v1
.end method

.method public startDowloadNextPage()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v2, p0, Lcom/pinguo/album/data/download/MetaDataDownLoader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pinguo/album/common/PGPreferences;->getDataLinkerSp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    sget-object v2, Lcom/pinguo/album/data/download/MetaDataDownLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " startDowloadNextPage linker:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pinguo/album/data/download/MetaDataDownLoader;->initHttpAlbumRequest(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;->execute()V

    const/4 v2, 0x1

    :goto_2b
    return v2

    :cond_2c
    sget-object v2, Lcom/pinguo/album/data/download/MetaDataDownLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " startDowloadNextPage  error linker is wrong"

    invoke-static {v2, v3}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_2b
.end method

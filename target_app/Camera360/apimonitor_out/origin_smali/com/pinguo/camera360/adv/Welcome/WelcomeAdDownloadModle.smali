.class public Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
.super Ljava/lang/Object;
.source "WelcomeAdDownloadModle.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;,
        Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle; = null

.field private static final PARAM_APPVERSION:Ljava/lang/String; = "appversion"

.field private static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field private static final PARAM_GEOINFO:Ljava/lang/String; = "geoinfo"

.field private static final PARAM_IMEI:Ljava/lang/String; = "imei"

.field private static final PARAM_LOCALE:Ljava/lang/String; = "locale"

.field private static final PARAM_PLATFORM:Ljava/lang/String; = "platform"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

.field private mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    invoke-direct {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->INSTANCE:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->IDEAL:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    iput-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private downloadImages(Ljava/util/ArrayList;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v6, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "start download, image count : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_25

    return v4

    :cond_25
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;

    sget-object v7, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "get cache name : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->getCacheName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;->imageUrl:Ljava/lang/String;

    :try_start_46
    const-string/jumbo v0, ""

    new-instance v7, Ljava/io/File;

    invoke-static {v5}, Lcom/pinguo/lib/network/HttpUtils;->getNameAutomatic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_74

    sget-object v7, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "file is eixt , continue : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6d} :catch_6e

    goto :goto_1e

    :catch_6e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_1e

    :cond_74
    :try_start_74
    sget-object v7, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_WELCOME:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/pinguo/lib/network/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_1e

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_84} :catch_6e

    goto :goto_1e
.end method

.method public static getInstance()Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->INSTANCE:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;

    return-object v0
.end method


# virtual methods
.method public isIdeal()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->isIdeal()Z

    move-result v0

    return v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onErrorResponse = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    iput-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onTaskFinished()V

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTaskFinished, onErrorResponse"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 8

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "jsonObject = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->DOWNLOADING_AD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    iput-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    :try_start_19
    invoke-static {p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->newInstance(Lorg/json/JSONObject;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->areaList:Ljava/util/ArrayList;

    if-eqz v3, :cond_75

    iget-object v3, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->areaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_75

    iget-object v3, v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;->areaList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;

    iget-object v3, v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->imageInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->downloadImages(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->SUCCESS:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    :goto_3c
    iput-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "down load finish : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6b

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v3, p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onDownloadSuccess(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onTaskFinished()V

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTaskFinished, all success"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    if-nez v2, :cond_71

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherWelcomeError(I)V

    :cond_71
    :goto_71
    return-void

    :cond_72
    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_DOWNLOAD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    goto :goto_3c

    :cond_75
    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v3, p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onDownloadSuccess(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onTaskFinished()V

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTaskFinished, not need download"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_8b} :catch_8c

    goto :goto_71

    :catch_8c
    move-exception v0

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "no new ad = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onTaskFinished()V

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onTaskFinished, in try catch ..."

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    invoke-interface {v3, p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;->onDownloadSuccess(Lorg/json/JSONObject;)V

    sget-object v3, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->SUCCESS:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    iput-object v3, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_71
.end method

.method public setListener(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mListener:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$OnWelcomeAdDownloadListener;

    return-void
.end method

.method public startTask(Landroid/content/Context;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->isIdeal()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "not ideal !!!!!!!!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->REQUEST_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    iput-object v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->mState:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;-><init>(Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$1;->start()V

    return-void

    :cond_1d
    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTask...."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

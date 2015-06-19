.class public Lcom/pinguo/album/utils/AlbumConstants;
.super Ljava/lang/Object;
.source "AlbumConstants.java"


# static fields
.field public static final COMMON_ALBUM_DELETE_PHOTO_URL:Ljava/lang/String; = "http://cloud.camera360.com/mobile/picture/delete"

.field public static final COMMON_ALBUM_INCREMENT_REQUEST_URL:Ljava/lang/String; = "http://cloud.camera360.com/v2/page/getNew"

.field public static final COMMON_ALBUM_REQUEST_URL:Ljava/lang/String; = "http://cloud.camera360.com/v2/page/timeline"

.field public static final COMMON_ALBUM_REQUEST_URLV1:Ljava/lang/String; = "http://cloud.camera360.com/v1/page/timeline"

.field public static final COMMON_ALBUM_REQUEST_URLV2:Ljava/lang/String; = "http://cloud.camera360.com/v2/page/timeline"

.field public static final COMMON_GROUP_DATA_REQUEST_URL:Ljava/lang/String; = "http://cloud.camera360.com/group/getData"

.field public static final COMMON_HTTP_REQUEST_GROUP_DATA_LASTTIME:Ljava/lang/String; = "lastTime"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_APPKEY:Ljava/lang/String; = "appkey"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_APP_VERSION:Ljava/lang/String; = "appversion"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_CHANNEL:Ljava/lang/String; = "channel"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_IMIE:Ljava/lang/String; = "imei"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_LOCALE:Ljava/lang/String; = "locale"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_LOCALKEY:Ljava/lang/String; = "localkey"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_PLATFORM:Ljava/lang/String; = "platform"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_TOKEN:Ljava/lang/String; = "token"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_USERID:Ljava/lang/String; = "userId"

.field public static final COMMON_HTTP_REQUEST_PARAMETER_VERSION:Ljava/lang/String; = "version"

.field public static final HOST:Ljava/lang/String; = "http://cloud.camera360.com"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;
    .registers 4
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "localkey"

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appversion"

    invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "channel"

    const-string/jumbo v2, "test-channel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "imei"

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appkey"

    const-string/jumbo v2, "5dab06e7a53740ea9b78"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static buildGroupDataCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;
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

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "token"

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "appversion"

    invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "version"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "channel"

    const-string/jumbo v3, "test-channel"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "imei"

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "appkey"

    const-string/jumbo v3, "5dab06e7a53740ea9b78"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "userId"

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUpdatePicGroupDataTime()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "lastTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

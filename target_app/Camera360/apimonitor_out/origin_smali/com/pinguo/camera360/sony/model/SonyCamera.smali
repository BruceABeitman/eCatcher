.class public Lcom/pinguo/camera360/sony/model/SonyCamera;
.super Ljava/lang/Object;
.source "SonyCamera.java"


# static fields
.field public static final API_NAME_ACT_ROOM:Ljava/lang/String; = "actZoom"

.field public static final API_NAME_GET_FLASH_MOOD:Ljava/lang/String; = "getAvailableFlashMode"

.field public static final API_NAME_GET_SHOOT_MOOD:Ljava/lang/String; = "getAvailableShootMode"

.field public static final API_NAME_SET_FLASH_MOOD:Ljava/lang/String; = "setFlashMode"

.field public static final API_NAME_START_LIVEVIEW:Ljava/lang/String; = "startLiveview"

.field public static final CAMERA_STATUS_STILL_CAPTURING:Ljava/lang/String; = "StillCapturing"

.field public static QX100_STILL_SIZE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static QX10_STILL_SIZE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAvailableApiSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

.field private mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

.field private mLiveview:Lcom/pinguo/camera360/sony/model/SonyLiveview;

.field private mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

.field private mSonyDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/pinguo/camera360/sony/model/SonyCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX100_STILL_SIZE:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX10_STILL_SIZE:Ljava/util/ArrayList;

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX100_STILL_SIZE:Ljava/util/ArrayList;

    const-string/jumbo v1, "3:2 20M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX100_STILL_SIZE:Ljava/util/ArrayList;

    const-string/jumbo v1, "16:9 17M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX100_STILL_SIZE:Ljava/util/ArrayList;

    const-string/jumbo v1, "4:3 5M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX10_STILL_SIZE:Ljava/util/ArrayList;

    const-string/jumbo v1, "4:3 18M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX10_STILL_SIZE:Ljava/util/ArrayList;

    const-string/jumbo v1, "16:9 13M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX10_STILL_SIZE:Ljava/util/ArrayList;

    const-string/jumbo v1, "4:3 5M"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/pinguo/camera360/sony/model/ServerDevice;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mSonyDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    invoke-direct {v0, p2}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;-><init>(Lcom/pinguo/camera360/sony/model/ServerDevice;)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/sony/model/SonyRemoteApi;)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->fireTakePictureFailListener()V

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/sony/model/SonyCamera;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCamera;->firePictureTakenListener([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/sony/model/SonyCamera;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->loadAvailableApiList(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/sony/model/SonyCamera;Lorg/json/JSONObject;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isSupportedServerVersion(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCamera;->fireCameraOpenFailListener(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/sony/model/SonyCamera;Lcom/pinguo/camera360/sony/model/SonyLiveview;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mLiveview:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->fireCameraOpenListener()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->preProcessShootMode()V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V

    return-void
.end method

.method private fireCameraOpenFailListener(Ljava/io/IOException;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCamera$5;

    invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/sony/model/SonyCamera$5;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireCameraOpenListener()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCamera$4;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera$4;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private firePicturePostTakenListener()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCamera$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera$7;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private firePictureTakenListener([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCamera$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCamera$6;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireTakePictureFailListener()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyCamera$8;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera$8;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getConfigStillSizeList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isQX10Device()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX10_STILL_SIZE:Ljava/util/ArrayList;

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->QX100_STILL_SIZE:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method static getImageBitmapByUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private isQX10Device()Z
    .registers 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mSonyDevice:Lcom/pinguo/camera360/sony/model/ServerDevice;

    invoke-virtual {v2}, Lcom/pinguo/camera360/sony/model/ServerDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qx100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x0

    :cond_15
    return v1
.end method

.method private isSupportedServerVersion(Lorg/json/JSONObject;)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_2
    const-string/jumbo v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1f} :catch_24
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1f} :catch_2f

    move-result v1

    const/4 v7, 0x2

    if-gt v7, v1, :cond_2d

    :goto_23
    return v5

    :catch_24
    move-exception v0

    sget-object v5, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isSupportedServerVersion: JSON format error."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    move v5, v6

    goto :goto_23

    :catch_2f
    move-exception v0

    sget-object v5, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isSupportedServerVersion: Number format error."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private loadAvailableApiList(Lorg/json/JSONObject;)V
    .registers 9

    iget-object v5, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_33

    :try_start_8
    const-string/jumbo v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_33
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_18} :catch_29

    move-result v4

    if-lt v2, v4, :cond_1d

    :goto_1b
    :try_start_1b
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_33

    return-void

    :cond_1d
    :try_start_1d
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_33
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_26} :catch_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :catch_29
    move-exception v1

    :try_start_2a
    sget-object v4, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadAvailableApiList: JSON format error."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_33
    move-exception v4

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v4
.end method

.method private preProcessShootMode()V
    .registers 6

    :try_start_0
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    invoke-virtual {v4}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->getShootMode()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "still"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "still"

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->setShootMode(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_2e

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_28
.end method

.method private setShootMode(Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v4, "setShootMode"

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    :try_start_9
    iget-object v4, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->setShootMode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_32

    sget-object v4, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setShootMode: error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_33
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_32} :catch_4e

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    sget-object v4, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setShootMode: IOException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catch_4e
    move-exception v0

    sget-object v4, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setShootMode: JSON format error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method


# virtual methods
.method public actZoom(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCamera$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyCamera$10;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera$10;->start()V

    return-void
.end method

.method public addApi(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkStillSizeHaveInList(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getConfigStillSizeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public closeConnection()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCamera$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera$2;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera$2;->start()V

    return-void
.end method

.method public getAvailableApiSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    return-object v0
.end method

.method public getEventObserver()Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    return-object v0
.end method

.method public getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;
    .registers 2

    const-string/jumbo v0, "startLiveview"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->isApiAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mLiveview:Lcom/pinguo/camera360/sony/model/SonyLiveview;

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getSupportedStillSize()V
    .registers 11

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getConfigStillSizeList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v4, :cond_3c

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "test"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u652f\u6301\u9759\u6b62\u7167\u7247\u4fe1\u606f:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v2

    const-string/jumbo v7, "still-size-values"

    invoke-virtual {v2, v7, v6}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void

    :cond_3c
    if-nez v1, :cond_44

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_44
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v0, :cond_50

    const/4 v1, 0x0

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public getTheConfigListFirstStillSize()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getConfigStillSizeList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public isApiAvailable(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mAvailableApiSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2

    return v0

    :catchall_c
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public openConnection()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCamera$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera$1;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera$1;->start()V

    return-void
.end method

.method public setEventChangeListener(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera;->mEventObserver:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->setEventChangeListener(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;)V

    return-void
.end method

.method public setPostViewSize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/pinguo/camera360/sony/model/SonyCamera$9;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->start()V

    return-void
.end method

.method public takePicture()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->getLiveview()Lcom/pinguo/camera360/sony/model/SonyLiveview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->isStarted()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to take a picture."

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/model/SonyCamera$3;-><init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->start()V

    goto :goto_18
.end method

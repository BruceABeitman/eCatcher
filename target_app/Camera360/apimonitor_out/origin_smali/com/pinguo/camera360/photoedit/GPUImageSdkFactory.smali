.class public final Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;
.super Ljava/lang/Object;
.source "GPUImageSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;
    }
.end annotation


# static fields
.field private static final SHADER_LOCK:[B

.field private static final TAG:Ljava/lang/String;

.field private static loadResources:[B

.field private static reloadResourceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->SHADER_LOCK:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResourceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0([BLjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->saveShader([BLjava/lang/String;)V

    return-void
.end method

.method private static getDefaultLoadResources(Landroid/content/Context;)[B
    .registers 3

    :try_start_0
    const-string/jumbo v1, "load_background.jpg"

    invoke-static {p0, v1}, Lcom/pinguo/lib/util/AssetsUtils;->getAssetsFileData(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    :goto_7
    return-object v1

    :catch_8
    move-exception v0

    sget-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static getLoadResources()[B
    .registers 5

    const/4 v1, 0x0

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->SHADER_LOCK:[B

    monitor-enter v2

    :try_start_4
    sget-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    if-nez v3, :cond_2b

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    monitor-exit v2

    :goto_f
    return-object v1

    :cond_10
    invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources(Landroid/content/Context;)[B

    move-result-object v3

    sput-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    sget-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    if-nez v3, :cond_27

    sget-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "\u521d\u59cb\u5316\u52a0\u8f7dload_background\u5931\u8d25!!!!!!!"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_f

    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v1

    :cond_27
    :try_start_27
    sget-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    monitor-exit v2

    goto :goto_f

    :cond_2b
    sget-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    goto :goto_f
.end method

.method private static getLoadResources(Landroid/content/Context;)[B
    .registers 15

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/pinguo/camera360/effect/model/EffectModel;->getShaderDir()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "load_background.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v11

    const-string/jumbo v12, "key_front_image_crc32"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_49

    const-string/jumbo v11, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_49

    const-string/jumbo v11, "0"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    :cond_49
    invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getDefaultLoadResources(Landroid/content/Context;)[B

    move-result-object v6

    :cond_4d
    :goto_4d
    return-object v6

    :cond_4e
    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6d

    :try_start_55
    invoke-static {v8}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/io/File;)[B
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_aa

    move-result-object v6

    :goto_59
    if-eqz v6, :cond_6d

    invoke-static {v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32ForByte([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4d

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    const/4 v6, 0x0

    :cond_6d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "frontImage.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_be

    :try_start_92
    invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/io/File;)[B
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_b2

    move-result-object v6

    :goto_96
    if-eqz v6, :cond_be

    invoke-static {v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32ForByte([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-static {v6, v10}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->saveShaderInThread([BLjava/lang/String;)V

    goto :goto_4d

    :catch_aa
    move-exception v7

    const/4 v6, 0x0

    sget-object v11, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    invoke-static {v11, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    :catch_b2
    move-exception v7

    const/4 v6, 0x0

    sget-object v11, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    invoke-static {v11, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_96

    :cond_ba
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v6, 0x0

    :cond_be
    invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getDefaultLoadResources(Landroid/content/Context;)[B

    move-result-object v6

    goto :goto_4d
.end method

.method protected static getPGImageSDK()Lus/pinguo/androidsdk/PGImageSDK;
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    sget-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->SHADER_LOCK:[B

    monitor-enter v3

    :try_start_b
    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    if-nez v2, :cond_26

    invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources(Landroid/content/Context;)[B

    move-result-object v2

    sput-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    if-nez v2, :cond_26

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "\u521d\u59cb\u5316\u52a0\u8f7dload_background\u5931\u8d25!!!!!!!"

    invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_7

    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v2

    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    new-instance v1, Lus/pinguo/androidsdk/PGImageSDK;

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUEditor;->EFFECT_KEY:Ljava/lang/String;

    sget-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    invoke-direct {v1, v0, v2, v3}, Lus/pinguo/androidsdk/PGImageSDK;-><init>(Landroid/content/Context;Ljava/lang/String;[B)V

    goto :goto_7
.end method

.method public static registerSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResourceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static reloadListResources()V
    .registers 3

    sget-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResourceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;->reloadResources()V

    goto :goto_6
.end method

.method protected static reloadResource(Lus/pinguo/androidsdk/PGImageSDK;)V
    .registers 4

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->SHADER_LOCK:[B

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    if-nez v1, :cond_11

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources(Landroid/content/Context;)[B

    move-result-object v1

    sput-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    sget-object v1, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/PGImageSDK;->reloadResource([B)Z

    return-void

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static reloadResource(Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "frontImage.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1f} :catch_57

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getPGImageSDK()Lus/pinguo/androidsdk/PGImageSDK;

    move-result-object v0

    :try_start_24
    invoke-virtual {v0, v3}, Lus/pinguo/androidsdk/PGImageSDK;->reloadResource([B)Z

    move-result v5

    if-eqz v5, :cond_68

    sget-object v5, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->SHADER_LOCK:[B

    monitor-enter v5
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_61

    :try_start_2d
    sput-object v3, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->loadResources:[B

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_5e

    :try_start_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "load_background.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->saveShader([BLjava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadListResources()V
    :try_end_50
    .catchall {:try_start_30 .. :try_end_50} :catchall_61

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V

    :cond_55
    const/4 v4, 0x1

    :cond_56
    :goto_56
    return v4

    :catch_57
    move-exception v2

    sget-object v5, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56

    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v4

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V

    :cond_67
    throw v4

    :cond_68
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V

    goto :goto_56
.end method

.method private static saveShader([BLjava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p0, p1}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    return-void

    :catch_4
    move-exception v1

    sget-object v2, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method private static saveShaderInThread([BLjava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;

    const-string/jumbo v1, "\u5907\u4efd\u7ebf\u7a0b"

    invoke-direct {v0, v1, p0, p1}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;->start()V

    return-void
.end method

.method public static unregisterSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResourceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.class public Lorg/pinguo/cloudshare/support/FileSupport;
.super Ljava/lang/Object;
.source "FileSupport.java"


# static fields
.field public static final CAMERA360_ORGPIC_NAME:Ljava/lang/String; = "photo_org.jpg"

.field public static final CAMERA360_VALUE_1:Ljava/lang/String; = "org_pic_path"

.field public static final CAMERA360_VALUE_2:Ljava/lang/String; = "org_pic_tokenmillis"

.field public static final CAMERA_MODEL:Ljava/lang/String; = "cameramodel"

.field public static final EFFECT_NORMAL:Ljava/lang/String; = "normal"

.field public static final EFFECT_SCENE:Ljava/lang/String; = "scene"

.field public static final EFFECT_TYPE:Ljava/lang/String; = "effect"

.field public static final EFFECT_UNKNOW:Ljava/lang/String; = "unknow"

.field public static final EXIF:Ljava/lang/String; = "exif"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "cloudshare"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllErrorLog()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->deleteAllErrorLog()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static deleteNeedUpload(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->deleteNeedUpload(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static deleteNeedUpload(Ljava/lang/String;J)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->deleteNeedUpload(Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static deleteNeedUploadForCrc32s(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->deleteNeedUploadForCrc32s(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static getCamera360RootPath(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getCamera360RootPath(Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static getErrorLogCount()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getErrorLogCount()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    :goto_9
    return v0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static native getFileMD5(Ljava/lang/String;[I)V
.end method

.method public static getNeedUpload(Ljava/lang/String;)Lcom/pinguo/camera360/cloud/struct/UploadStruct;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getNeedUpload(Ljava/lang/String;)Lcom/pinguo/camera360/cloud/struct/UploadStruct;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static getNeedUploadCount(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getNeedUploadCount(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static getNeedUploadCountByDate(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/cloud/struct/DayInformation;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getNeedUploadCountByDate(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static getOrgPictureByFileNameForCamera360DataBase(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getOrgPictureByFileNameForCamera360DataBase(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result-wide v1

    :goto_a
    return-wide v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public static getOrgPictureByTokenmillis(J)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lorg/pinguo/cloudshare/support/Config;->CAMERA360_SANDBOX_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6c

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "photo_org.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6c

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "org_pic_path"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "org_pic_tokenmillis"

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    return-object v2
.end method

.method public static getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getPictureInformationByPath(Ljava/lang/String;)Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static native initScanSdcard(Ljava/lang/String;)V
.end method

.method public static insertErrorLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->insertErrorLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public static insertExistsExclude(J)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->insertExistsExclude(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->insertNeedUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public static insertUploadedFileCRC32(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->insertUploadedFileCRC32(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static loadExistsExclude()Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->loadExistsExclude()Ljava/util/HashSet;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static loadUploadedFileCRC32(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->loadUploadedFileCRC32(Ljava/lang/String;)Ljava/util/HashSet;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v1

    :goto_9
    return-object v1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static resetNeedUploadStatus(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->resetNeedUploadStatus(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static native scanCameraSdcard(Ljava/lang/String;)V
.end method

.method public static scanFunction(Ljava/lang/String;JI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/pinguo/cloudshare/support/DataSupport;->localFunction(Ljava/lang/String;JI)V

    return-void
.end method

.method public static native scanSdcard(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static selectErrorLog()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->getInstance()Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/cloud/upload/model/CloudUploadSql;->selectErrorLog()Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    move-result-object v1

    :goto_d
    return-object v1

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static native stopScanSdcard()V
.end method

.method public static native testFunction()V
.end method

.method private static native zoomPicture(Ljava/lang/String;IILjava/lang/String;I)Z
.end method

.method public static declared-synchronized zoominPicture(Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 7

    const-class v0, Lorg/pinguo/cloudshare/support/FileSupport;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/pinguo/cloudshare/support/FileSupport;->zoomPicture(Ljava/lang/String;IILjava/lang/String;I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

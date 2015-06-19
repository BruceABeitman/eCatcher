.class public final Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;
.super Ljava/lang/Object;
.source "SceneTemplateInstall.java"


# static fields
.field private static final DEF_SCENE_NAME:Ljava/lang/String; = "20121218145945"

.field private static final MIGRATED_TEMPLATES:[Ljava/lang/String;

.field private static final SCENE_SUFFIX:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "20121008093823"

    aput-object v1, v0, v3

    const-string/jumbo v1, "20121008102841"

    aput-object v1, v0, v4

    const-string/jumbo v1, "20121008103730"

    aput-object v1, v0, v5

    const-string/jumbo v1, "20121008104214"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "20121008105818"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "20121008113522"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "20121008130148"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "20121008133909"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "20121126163639"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "20121126163738"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->MIGRATED_TEMPLATES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, ".xml"

    aput-object v1, v0, v3

    const-string/jumbo v1, ".jpg"

    aput-object v1, v0, v4

    const-string/jumbo v1, ".png"

    aput-object v1, v0, v5

    sput-object v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->SCENE_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installDefSceneTemplate()Z
    .registers 11

    const/4 v6, 0x0

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v6

    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v6}, Lcom/pinguo/lib/util/DeviceInfo;->getSDCardSize(I)J

    move-result-wide v7

    const-wide/32 v9, 0x300000

    cmp-long v7, v7, v9

    if-ltz v7, :cond_7

    sget-object v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "20121218145945"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "20121218145945"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "20121218145945"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_9a
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_aa

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "20121218145945.xml"

    invoke-static {v7, v8, v5}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_aa
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_ba

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "20121218145945.jpg"

    invoke-static {v7, v8, v2}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    :cond_ba
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_ca

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "20121218145945.png"

    invoke-static {v7, v8, v3}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ca} :catch_cd

    :cond_ca
    const/4 v6, 0x1

    goto/16 :goto_7

    :catch_cd
    move-exception v1

    invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V

    invoke-static {v2}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V

    invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V

    goto/16 :goto_7
.end method

.method protected static isJpgFileLost(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Z
    .registers 7

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    sget-object v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFileLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7d

    sget-object v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getChildId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplate;->getSceneJpgFileLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_7d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected static migrateOldTemplate()V
    .registers 16

    const/4 v8, 0x0

    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/io/File;)Z

    :try_start_b
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".nomedia"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_40

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_40

    sget-object v7, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Create .nomedia failed!"

    invoke-static {v7, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    sget-object v10, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->MIGRATED_TEMPLATES:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_44
    if-lt v9, v11, :cond_47

    :goto_46
    return-void

    :cond_47
    aget-object v1, v10, v9

    sget-object v12, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->SCENE_SUFFIX:[Ljava/lang/String;

    array-length v13, v12

    move v7, v8

    :goto_4d
    if-lt v7, v13, :cond_53

    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_44

    :cond_53
    aget-object v6, v12, v7

    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->OLD_LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_a8

    invoke-static {v4, v2}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a8} :catch_ab

    :cond_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :catch_ab
    move-exception v0

    sget-object v7, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error when copy old scene template."

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

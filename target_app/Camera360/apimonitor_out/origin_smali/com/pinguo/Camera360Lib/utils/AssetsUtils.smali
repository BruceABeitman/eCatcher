.class public Lcom/pinguo/Camera360Lib/utils/AssetsUtils;
.super Ljava/lang/Object;
.source "AssetsUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/Camera360Lib/utils/AssetsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/Camera360Lib/utils/AssetsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v9, Lcom/pinguo/Camera360Lib/utils/AssetsUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "copy from asserts: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_56

    invoke-static {v8}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_56

    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Create Folder("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") Failed!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_56
    :try_start_56
    new-instance v4, Ljava/io/BufferedInputStream;

    const/4 v9, 0x3

    invoke-virtual {v0, p1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_a0

    const/4 v6, 0x0

    :try_start_61
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_a2

    const/16 v9, 0x2000

    :try_start_6d
    new-array v1, v9, [B

    const/4 v5, -0x1

    :goto_70
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_82

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_87

    :try_start_7a
    invoke-static {v7}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_8d

    invoke-static {v4}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    move-object v3, v4

    :goto_81
    return-void

    :cond_82
    const/4 v9, 0x0

    :try_start_83
    invoke-virtual {v7, v1, v9, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_70

    :catchall_87
    move-exception v9

    move-object v6, v7

    :goto_89
    :try_start_89
    invoke-static {v6}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V

    throw v9
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception v2

    move-object v3, v4

    :goto_8f
    :try_start_8f
    sget-object v9, Lcom/pinguo/Camera360Lib/utils/AssetsUtils;->TAG:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_98

    invoke-static {v3}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    goto :goto_81

    :catchall_98
    move-exception v9

    :goto_99
    invoke-static {v3}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    throw v9

    :catchall_9d
    move-exception v9

    move-object v3, v4

    goto :goto_99

    :catch_a0
    move-exception v2

    goto :goto_8f

    :catchall_a2
    move-exception v9

    goto :goto_89
.end method

.method public static copyAssetsToDataFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v12, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_65

    const/4 v5, 0x1

    :goto_11
    const/4 v4, 0x0

    if-eqz v5, :cond_67

    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->checkFolder(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_67

    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Create Folder("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") Failed!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_65
    const/4 v5, 0x0

    goto :goto_11

    :cond_67
    :try_start_67
    const-string/jumbo v12, "Test"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Copy files from:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " to:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/BufferedInputStream;

    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_98
    .catchall {:try_start_67 .. :try_end_98} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_98} :catch_e6

    const/4 v9, 0x0

    if-eqz v5, :cond_bd

    :try_start_9b
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v10

    :goto_a6
    const/16 v12, 0x2000

    new-array v2, v12, [B

    const/4 v8, -0x1

    :goto_ab
    invoke-virtual {v7, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_cb

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_b5
    .catchall {:try_start_9b .. :try_end_b5} :catchall_d0

    :try_start_b5
    invoke-static {v9}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_d5

    invoke-static {v7}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    move-object v6, v7

    :goto_bc
    return-void

    :cond_bd
    :try_start_bd
    new-instance v10, Ljava/io/BufferedOutputStream;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v10

    goto :goto_a6

    :cond_cb
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_cf
    .catchall {:try_start_bd .. :try_end_cf} :catchall_d0

    goto :goto_ab

    :catchall_d0
    move-exception v12

    :try_start_d1
    invoke-static {v9}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/OutputStream;)V

    throw v12
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception v3

    move-object v6, v7

    :goto_d7
    :try_start_d7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_de

    invoke-static {v6}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    goto :goto_bc

    :catchall_de
    move-exception v12

    :goto_df
    invoke-static {v6}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    throw v12

    :catchall_e3
    move-exception v12

    move-object v6, v7

    goto :goto_df

    :catch_e6
    move-exception v3

    goto :goto_d7
.end method

.method public static copyImageFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_19

    sget-object v10, Lcom/pinguo/Camera360Lib/utils/AssetsUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Create dir failed!"

    invoke-static {v10, v11}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string/jumbo v10, "/"

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_52

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_33
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6b

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v10, :cond_6b

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v10, :cond_6b

    :goto_51
    return-void

    :cond_52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_33

    :cond_6b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_6f
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x1000

    new-array v1, v10, [B

    :goto_7c
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_92

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8c} :catch_8d

    goto :goto_51

    :catch_8d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    :cond_92
    const/4 v10, 0x0

    :try_start_93
    invoke-virtual {v6, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_8d

    goto :goto_7c
.end method

.method public static getAssetsFileContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/pinguo/Camera360Lib/utils/AssetsUtils;->getAssetsFileData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static getAssetsFileData(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_17

    :try_start_f
    invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->getStreamData(Ljava/io/InputStream;)[B
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1c

    move-result-object v3

    invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    return-object v3

    :catchall_17
    move-exception v3

    :goto_18
    invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    throw v3

    :catchall_1c
    move-exception v3

    move-object v1, v2

    goto :goto_18
.end method

.method public static getBitmapFromAssetsFileDate(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_17

    :try_start_f
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1c

    move-result-object v3

    invoke-static {v2}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    return-object v3

    :catchall_17
    move-exception v3

    :goto_18
    invoke-static {v1}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->close(Ljava/io/InputStream;)V

    throw v3

    :catchall_1c
    move-exception v3

    move-object v1, v2

    goto :goto_18
.end method

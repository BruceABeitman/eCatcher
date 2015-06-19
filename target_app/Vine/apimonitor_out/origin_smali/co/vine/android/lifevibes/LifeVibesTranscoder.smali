.class public Lco/vine/android/lifevibes/LifeVibesTranscoder;
.super Ljava/lang/Object;
.source "LifeVibesTranscoder.java"

# interfaces
.implements Lco/vine/android/recorder/EncoderManager$Encoder;
.implements Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;


# instance fields
.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_12

    const-string v0, "lifevibes_sw_JB"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_b
    const-string v0, "lifevibes_sw_ICS"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_a

    nop

    :pswitch_data_12
    .packed-switch 0xe
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V
    .registers 4

    iput p3, p0, Lco/vine/android/lifevibes/LifeVibesTranscoder;->mProgress:I

    return-void
.end method

.method public transcode(Lco/vine/android/recorder/EncoderManager$EncoderBoss;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/recorder/EncoderManager$EncoderBoss;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/recorder/EncoderManager$EncodingException;
        }
    .end annotation

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const-string v2, ".mp4"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_t.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    move-object v9, v12

    :cond_3b
    :try_start_3b
    new-instance v13, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "temp"

    invoke-direct {v13, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v13}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lifevibes/videoeditor/VideoEditorFactory;->create(Ljava/lang/String;)Lcom/lifevibes/videoeditor/VideoEditor;

    move-result-object v1

    new-instance v10, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v10, v1, v2, v0, v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v10}, Lcom/lifevibes/videoeditor/VideoEditor;->addMediaItem(Lcom/lifevibes/videoeditor/MediaItem;)V

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/lifevibes/videoeditor/VideoEditor;->setAspectRatio(I)V

    const/16 v3, 0x1e0

    const v4, 0x16e360

    const/4 v5, 0x2

    const/4 v6, 0x4

    move-object/from16 v2, p3

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/lifevibes/videoeditor/VideoEditor;->export(Ljava/lang/String;IIIILcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V

    :goto_71
    iget v2, p0, Lco/vine/android/lifevibes/LifeVibesTranscoder;->mProgress:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_9b

    invoke-interface {p1}, Lco/vine/android/recorder/EncoderManager$EncoderBoss;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_82

    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/lifevibes/videoeditor/VideoEditor;->cancelExport(Ljava/lang/String;)V

    :cond_82
    iget v2, p0, Lco/vine/android/lifevibes/LifeVibesTranscoder;->mProgress:I

    invoke-interface {p1, v2}, Lco/vine/android/recorder/EncoderManager$EncoderBoss;->updateLastProcess(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8c
    .catchall {:try_start_3b .. :try_end_8c} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_8c} :catch_8d

    goto :goto_71

    :catch_8d
    move-exception v8

    :try_start_8e
    new-instance v2, Lco/vine/android/recorder/EncoderManager$EncodingException;

    invoke-direct {v2, v8}, Lco/vine/android/recorder/EncoderManager$EncodingException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v2

    if-eqz v11, :cond_9a

    invoke-virtual {v9, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_9a
    throw v2

    :cond_9b
    if-eqz v11, :cond_a0

    invoke-virtual {v9, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_a0
    return-void
.end method

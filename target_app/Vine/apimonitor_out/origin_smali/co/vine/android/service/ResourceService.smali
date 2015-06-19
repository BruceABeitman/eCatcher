.class public Lco/vine/android/service/ResourceService;
.super Landroid/app/Service;
.source "ResourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/service/ResourceService$CameraServiceBinder;
    }
.end annotation


# static fields
.field public static final CONVERSATION_STATE_OFF:Ljava/lang/String; = "co.vine.android.camera.request.conversation.state.off"

.field public static final CONVERSATION_STATE_ON:Ljava/lang/String; = "co.vine.android.camera.request.conversation.state.on"

.field public static final CONVERSATION_STATE_ON_ID:Ljava/lang/String; = "co.vine.android.camera.request.conversation.state.id"

.field public static IS_READY:Z = false

.field public static final REQUEST_CONVERSATION_STATE_BC:I = 0x65

.field public static isConversationActive:Z

.field public static lastActiveconversationRowId:J

.field private static sAudioDataBufferByte:Lco/vine/android/recorder/AudioArray;

.field private static sAudioDataBufferShort:Lco/vine/android/recorder/AudioArray;

.field private static sBufferUserCountByte:I

.field private static sBufferUserCountShort:I

.field private static sFrameBuffer:Ljava/nio/ByteBuffer;

.field private static sIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private static final sLOCK:[I

.field private static sPictureConverter:Lco/vine/android/recorder/PictureConverter;

.field private static sPreviewBitmap:Landroid/graphics/Bitmap;

.field private static sPreviewCanvas:Landroid/graphics/Canvas;

.field private static sRS:Landroid/support/v8/renderscript/RenderScript;

.field private static sThumbnailBitmap:Landroid/graphics/Bitmap;

.field private static sThumbnailBitmapCanvas:Landroid/graphics/Canvas;

.field private static sThumbnailMatrix:Landroid/graphics/Matrix;

.field private static sVineRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;


# instance fields
.field private final messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lco/vine/android/service/ResourceService;->sLOCK:[I

    sput-boolean v1, Lco/vine/android/service/ResourceService;->IS_READY:Z

    sput-boolean v1, Lco/vine/android/service/ResourceService;->isConversationActive:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lco/vine/android/service/ResourceService$CameraServiceBinder;

    invoke-direct {v1, p0}, Lco/vine/android/service/ResourceService$CameraServiceBinder;-><init>(Lco/vine/android/service/ResourceService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lco/vine/android/service/ResourceService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public static generateThumbnailBitmap(Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .registers 3

    iget v1, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v1, 0x2

    sget-object v1, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static generateThumbnailMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .registers 6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method public static getAudioDataBuffer(Lco/vine/android/recorder/AudioArray$AudioArrayType;)Lco/vine/android/recorder/AudioArray;
    .registers 4

    const/4 v2, 0x1

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_4
    sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne p0, v0, :cond_29

    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    sget-object v0, Lco/vine/android/service/ResourceService;->sAudioDataBufferByte:Lco/vine/android/recorder/AudioArray;

    if-nez v0, :cond_18

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->createAudioArray(Lco/vine/android/recorder/AudioArray$AudioArrayType;)Lco/vine/android/recorder/AudioArray;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sAudioDataBufferByte:Lco/vine/android/recorder/AudioArray;

    :cond_18
    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    if-le v0, v2, :cond_22

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->createAudioArray(Lco/vine/android/recorder/AudioArray$AudioArrayType;)Lco/vine/android/recorder/AudioArray;

    move-result-object v0

    monitor-exit v1

    :goto_21
    return-object v0

    :cond_22
    sget-object v0, Lco/vine/android/service/ResourceService;->sAudioDataBufferByte:Lco/vine/android/recorder/AudioArray;

    monitor-exit v1

    goto :goto_21

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    sget-object v0, Lco/vine/android/service/ResourceService;->sAudioDataBufferShort:Lco/vine/android/recorder/AudioArray;

    if-nez v0, :cond_39

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->createAudioArray(Lco/vine/android/recorder/AudioArray$AudioArrayType;)Lco/vine/android/recorder/AudioArray;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sAudioDataBufferShort:Lco/vine/android/recorder/AudioArray;

    :cond_39
    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    if-le v0, v2, :cond_43

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->createAudioArray(Lco/vine/android/recorder/AudioArray$AudioArrayType;)Lco/vine/android/recorder/AudioArray;

    move-result-object v0

    monitor-exit v1

    goto :goto_21

    :cond_43
    sget-object v0, Lco/vine/android/service/ResourceService;->sAudioDataBufferShort:Lco/vine/android/recorder/AudioArray;

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_26

    goto :goto_21
.end method

.method public static getFrameBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sFrameBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_15

    new-instance v0, Lcom/googlecode/javacpp/BytePointer;

    const v2, 0xe1000

    invoke-direct {v0, v2}, Lcom/googlecode/javacpp/BytePointer;-><init>(I)V

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sFrameBuffer:Ljava/nio/ByteBuffer;

    :cond_15
    sget-object v0, Lco/vine/android/service/ResourceService;->sFrameBuffer:Ljava/nio/ByteBuffer;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getFrameImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .registers 5

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_14

    const/16 v0, 0x1e0

    const/16 v2, 0x1e0

    const/16 v3, 0x8

    const/4 v4, 0x4

    invoke-static {v0, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    :cond_14
    sget-object v0, Lco/vine/android/service/ResourceService;->sIplImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static getPictureConverter()Lco/vine/android/recorder/PictureConverter;
    .registers 1

    sget-object v0, Lco/vine/android/service/ResourceService;->sPictureConverter:Lco/vine/android/recorder/PictureConverter;

    return-object v0
.end method

.method public static getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 2

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sPreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->createDefaultSizeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_d
    sget-object v0, Lco/vine/android/service/ResourceService;->sPreviewBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static getPreviewCanvas()Landroid/graphics/Canvas;
    .registers 3

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sPreviewCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/Canvas;

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lco/vine/android/service/ResourceService;->sPreviewCanvas:Landroid/graphics/Canvas;

    :cond_12
    sget-object v0, Lco/vine/android/service/ResourceService;->sPreviewCanvas:Landroid/graphics/Canvas;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getRenderScript(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .registers 3

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sRS:Landroid/support/v8/renderscript/RenderScript;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sRS:Landroid/support/v8/renderscript/RenderScript;

    :cond_11
    sget-object v0, Lco/vine/android/service/ResourceService;->sRS:Landroid/support/v8/renderscript/RenderScript;

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static getThumbnailBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v2, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v2

    :try_start_3
    sget-object v1, Lco/vine/android/service/ResourceService;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_11

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/service/ResourceService;->generateThumbnailBitmap(Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lco/vine/android/service/ResourceService;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    :cond_11
    sget-object v1, Lco/vine/android/service/ResourceService;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    monitor-exit v2

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static getThumbnailCanvas(Landroid/content/Context;)Landroid/graphics/Canvas;
    .registers 4

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sThumbnailBitmapCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/Canvas;

    invoke-static {p0}, Lco/vine/android/service/ResourceService;->getThumbnailBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lco/vine/android/service/ResourceService;->sThumbnailBitmapCanvas:Landroid/graphics/Canvas;

    :cond_12
    sget-object v0, Lco/vine/android/service/ResourceService;->sThumbnailBitmapCanvas:Landroid/graphics/Canvas;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getThumbnailMatrix(Landroid/content/Context;)Landroid/graphics/Matrix;
    .registers 4

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sThumbnailMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_15

    invoke-static {p0}, Lco/vine/android/service/ResourceService;->getThumbnailBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lco/vine/android/service/ResourceService;->generateThumbnailMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v0

    sput-object v0, Lco/vine/android/service/ResourceService;->sThumbnailMatrix:Landroid/graphics/Matrix;

    :cond_15
    sget-object v0, Lco/vine/android/service/ResourceService;->sThumbnailMatrix:Landroid/graphics/Matrix;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static initVineRecorder(Landroid/content/Context;)V
    .registers 11

    sget-object v9, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v9

    :try_start_3
    sget-object v0, Lco/vine/android/service/ResourceService;->sVineRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3e

    if-nez v0, :cond_29

    :try_start_7
    sget-boolean v0, Lco/vine/android/recorder/SwVineFrameRecorder;->hasEverSuccessfullyLoaded:Z

    if-nez v0, :cond_1b

    invoke-static {p0}, Lco/vine/android/recorder/SwVineFrameRecorder;->tryLoad(Landroid/content/Context;)V

    sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    if-ne v0, v1, :cond_17

    invoke-static {}, Lco/vine/android/recorder/EncoderManager;->tryLoad()V

    :cond_17
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lco/vine/android/recorder/RecordConfigUtils;->setLoadWasEverSuccessful(Landroid/content/Context;Z)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_3e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1b} :catch_2b

    :cond_1b
    :goto_1b
    :try_start_1b
    new-instance v0, Lco/vine/android/recorder/SwVineFrameRecorder;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/lang/String;IIILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    sput-object v0, Lco/vine/android/service/ResourceService;->sVineRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_3e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_29} :catch_39

    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v9
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_3e

    return-void

    :catch_2b
    move-exception v7

    :try_start_2c
    const-string v0, "Failed to load"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lco/vine/android/recorder/RecordConfigUtils;->setLoadWasEverSuccessful(Landroid/content/Context;Z)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_3e
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_38} :catch_39

    goto :goto_1b

    :catch_39
    move-exception v8

    :try_start_3a
    invoke-static {v8}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_29

    :catchall_3e
    move-exception v0

    monitor-exit v9
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public static releaseAudioBuffer(Lco/vine/android/recorder/AudioArray$AudioArrayType;)V
    .registers 3

    sget-object v1, Lco/vine/android/service/ResourceService;->sLOCK:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne p0, v0, :cond_16

    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    if-gez v0, :cond_14

    const/4 v0, 0x0

    sput v0, Lco/vine/android/service/ResourceService;->sBufferUserCountByte:I

    :cond_14
    :goto_14
    monitor-exit v1

    return-void

    :cond_16
    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    sget v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    if-gez v0, :cond_14

    const/4 v0, 0x0

    sput v0, Lco/vine/android/service/ResourceService;->sBufferUserCountShort:I

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public static setPictureConverter(Lco/vine/android/recorder/PictureConverter;)V
    .registers 1

    sput-object p0, Lco/vine/android/service/ResourceService;->sPictureConverter:Lco/vine/android/recorder/PictureConverter;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lco/vine/android/service/ResourceService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    const/4 v6, 0x1

    const-string v3, "Camera Service onCreate start."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_a
    invoke-static {p0}, Lco/vine/android/service/ResourceService;->getThumbnailBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    invoke-static {p0}, Lco/vine/android/service/ResourceService;->getRenderScript(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v3, Lco/vine/android/recorder/RecordConfigUtils;->HW_ENABLED:Z

    if-eqz v3, :cond_17

    invoke-static {}, Lco/vine/android/service/ResourceService;->getFrameBuffer()Ljava/nio/ByteBuffer;

    :cond_17
    sget-boolean v3, Lco/vine/android/recorder/RecordConfigUtils;->SW_ENABLED:Z

    if-eqz v3, :cond_21

    invoke-static {p0}, Lco/vine/android/service/ResourceService;->initVineRecorder(Landroid/content/Context;)V

    invoke-static {}, Lco/vine/android/service/ResourceService;->getFrameImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    :cond_21
    invoke-static {}, Lco/vine/android/service/ResourceService;->getPreviewBitmap()Landroid/graphics/Bitmap;

    invoke-static {p0}, Lco/vine/android/service/ResourceService;->getThumbnailMatrix(Landroid/content/Context;)Landroid/graphics/Matrix;

    invoke-static {p0}, Lco/vine/android/service/ResourceService;->getThumbnailCanvas(Landroid/content/Context;)Landroid/graphics/Canvas;

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPreviewCanvas()Landroid/graphics/Canvas;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2d} :catch_3e

    :goto_2d
    sput-boolean v6, Lco/vine/android/service/ResourceService;->IS_READY:Z

    const-string v3, "Camera Service took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_3e
    move-exception v0

    const-string v3, "Failed to init camera service, it is ok."

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lco/vine/android/service/ResourceService;->sVineRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;

    if-eqz v0, :cond_f

    sget-object v0, Lco/vine/android/service/ResourceService;->sVineRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/service/ResourceService;->sVineRecorder:Lco/vine/android/recorder/SwVineFrameRecorder;

    :cond_f
    const-string v0, "Camera Service onDestroy.."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/service/ResourceService;->IS_READY:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

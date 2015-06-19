.class public final Lqr/recognize/camera/QRManager;
.super Ljava/lang/Object;
.source "QRManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x168

.field private static final MAX_FRAME_WIDTH:I = 0x1e0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lqr/recognize/camera/QRManager;


# instance fields
.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private screenResolution:Landroid/graphics/Point;

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v2, Lqr/recognize/camera/QRManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    :try_start_8
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_11

    move-result v1

    :goto_e
    sput v1, Lqr/recognize/camera/QRManager;->SDK_INT:I

    return-void

    :catch_11
    move-exception v0

    const/16 v1, 0x2710

    goto :goto_e
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2c

    const/4 v2, 0x1

    :goto_d
    iput-boolean v2, p0, Lqr/recognize/camera/QRManager;->useOneShotPreviewCallback:Z

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    return-void

    :cond_2c
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static get()Lqr/recognize/camera/QRManager;
    .registers 1

    sget-object v0, Lqr/recognize/camera/QRManager;->cameraManager:Lqr/recognize/camera/QRManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lqr/recognize/camera/QRManager;->cameraManager:Lqr/recognize/camera/QRManager;

    if-nez v0, :cond_b

    new-instance v0, Lqr/recognize/camera/QRManager;

    invoke-direct {v0, p0}, Lqr/recognize/camera/QRManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lqr/recognize/camera/QRManager;->cameraManager:Lqr/recognize/camera/QRManager;

    :cond_b
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BIIII)Lqr/recognize/camera/PlanarYUVLuminanceSource;
    .registers 19

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lqr/recognize/camera/QRManager;->getFramingRectInPreview(II)Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewFormat()I

    move-result v10

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v11

    packed-switch v10, :pswitch_data_d6

    const-string/jumbo v2, "yuv420p"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    new-instance v2, Lqr/recognize/camera/PlanarYUVLuminanceSource;

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v9}, Lqr/recognize/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_39
    return-object v2

    :pswitch_3a
    sget-object v2, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "data.length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " widht = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rect.left = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rect.top = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "rect.getwidht = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rect.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lqr/recognize/camera/PlanarYUVLuminanceSource;

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v9}, Lqr/recognize/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_39

    :cond_b6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported picture format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_d6
    .packed-switch 0x10
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public clearResource()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lqr/recognize/camera/QRManager;->framingRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lqr/recognize/camera/QRManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .registers 8

    const/16 v6, 0xf0

    const/16 v5, 0xc8

    iget-object v4, p0, Lqr/recognize/camera/QRManager;->framingRect:Landroid/graphics/Rect;

    if-nez v4, :cond_58

    iget-object v4, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v3, v4, 0x4

    if-ge v3, v6, :cond_5b

    const/16 v3, 0xf0

    :cond_14
    :goto_14
    iget-object v4, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v0, v4, 0x4

    if-ge v0, v6, :cond_62

    const/16 v0, 0xf0

    :cond_20
    :goto_20
    invoke-static {v5}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v3

    invoke-static {v5}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    iget-object v4, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lqr/recognize/camera/QRManager;->framingRect:Landroid/graphics/Rect;

    sget-object v4, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Calculated framing rect: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lqr/recognize/camera/QRManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    iget-object v4, p0, Lqr/recognize/camera/QRManager;->framingRect:Landroid/graphics/Rect;

    return-object v4

    :cond_5b
    const/16 v4, 0x1e0

    if-le v3, v4, :cond_14

    const/16 v3, 0x1e0

    goto :goto_14

    :cond_62
    const/16 v4, 0x168

    if-le v0, v4, :cond_20

    const/16 v0, 0x168

    goto :goto_20
.end method

.method public getFramingRectInPreview(II)Landroid/graphics/Rect;
    .registers 11

    iget-object v5, p0, Lqr/recognize/camera/QRManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_fc

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lqr/recognize/camera/QRManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v0

    sget-object v5, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rect = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cameraResolution.getWidth "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cameraResolution.getHeight "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "displayPreviewWidth "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " displayPreviewHeight -= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lqr/recognize/camera/QRManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "screenResolution.x "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " screenResolution.y -= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, p1

    div-int/lit8 v4, v5, 0x2

    iget-object v5, p0, Lqr/recognize/camera/QRManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p2

    div-int/lit8 v1, v5, 0x2

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p1

    div-float v3, v5, v6

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput-object v2, p0, Lqr/recognize/camera/QRManager;->framingRectInPreview:Landroid/graphics/Rect;

    :cond_fc
    iget-object v5, p0, Lqr/recognize/camera/QRManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v5
.end method

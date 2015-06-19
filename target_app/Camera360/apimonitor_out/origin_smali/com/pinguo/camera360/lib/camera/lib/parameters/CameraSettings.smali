.class public final Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;,
        Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_PREVIEW_SIZE:I = 0x124f80

.field private static final MAX_PICTURE_SIZE:I = 0x989680

.field private static final MAX_PREVIEW_SIZE:I = 0x3d0900

.field private static final MIN_PICTURE_SIZE:I = 0xf4240

.field private static final MIN_PREVIEW_SIZE:I = 0xc350

.field private static final PICTURE_ASPECT_TOLERANCE:F = 0.05f

.field private static final PREVIEW_ASPECT_TOLERANCE:F = 0.01f

.field private static final PREVIEW_ASPECT_TOLERANCE2:F = 0.05f

.field private static final PREVIEW_ASPECT_TOLERANCE3:F = 0.18f

.field public static final PREVIEW_DEFAULT_DEGREE:I = 0x5a

.field private static final RATIO_16X10:F = 1.6f

.field private static final RATIO_16X9:F = 1.7777778f

.field private static final RATIO_1X1:F = 1.0f

.field private static final RATIO_3X2:F = 1.5f

.field private static final RATIO_4X3:F = 1.3333334f

.field private static final RATIO_5X3:F = 1.6666666f

.field private static final TAG:Ljava/lang/String; = null

.field public static final UPDATE_PARAM_ALL:I = -0x1

.field public static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field public static final UPDATE_PARAM_PICTURE_INFO:I = 0x4

.field public static final UPDATE_PARAM_PREFERENCE:I = 0x8

.field public static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final filterSizeList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "352x288"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterSizeList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertSizeType(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->matchLimit(Ljava/util/List;)V

    goto :goto_9

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->initPictureSizeEntry(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$6(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method protected static filterPictureSize(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterPictureSizeByPreviewSize(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_13

    move-object p0, v0

    :cond_13
    new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$2;

    invoke-direct {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$2;-><init>()V

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->convertSizeType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_3
.end method

.method private static filterPictureSizeByPreviewSize(Ljava/util/List;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    const v0, 0x3ca3d70a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e

    return-void

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    const/high16 v8, 0x3f80

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    div-float v5, v8, v9

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_36

    :goto_2a
    sget-object v9, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterSizeList:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_2e
    if-lt v8, v10, :cond_58

    :goto_30
    if-nez v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_36
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    const/high16 v9, 0x3f80

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v10

    div-float v6, v9, v10

    sub-float v9, v5, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3ca3d70a

    cmpl-float v9, v9, v10

    if-lez v9, :cond_56

    const/4 v2, 0x0

    goto :goto_24

    :cond_56
    const/4 v2, 0x1

    goto :goto_2a

    :cond_58
    aget-object v1, v9, v8

    const-string/jumbo v11, "%dx%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget v14, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    const/4 v2, 0x0

    goto :goto_30

    :cond_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e
.end method

.method protected static filterPictureSizeForIdPhoto(Ljava/util/List;Ljava/util/List;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;"
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v0, "IdPhotoCamera"

    if-nez p0, :cond_d

    const-string/jumbo v7, "pictureSizeList is null"

    invoke-static {v0, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-object v5

    :cond_d
    if-nez p1, :cond_16

    const-string/jumbo v7, "picPreviewList is null"

    invoke-static {v0, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterPictureSizeByPreviewSize(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2b

    const-string/jumbo v7, "pictureList.size == 0 so return the backupPicSize"

    invoke-static {v0, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :cond_2b
    new-instance v7, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$1;

    invoke-direct {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$1;-><init>()V

    invoke-static {p0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3c
    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    const/4 v3, 0x0

    :goto_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_d1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    move-object v5, v7

    goto :goto_c

    :cond_5d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    invoke-direct {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;-><init>()V

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
    invoke-static {v2, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$0(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Landroid/hardware/Camera$Size;)V

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v8, v9

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v2, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$1(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V

    invoke-static {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getPictureRadio(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v8

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v2, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$2(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "entry.picSize width ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$3(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Landroid/hardware/Camera$Size;

    move-result-object v9

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "entry.picSize height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$3(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Landroid/hardware/Camera$Size;

    move-result-object v9

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "entry.pictureRatio"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$4(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$4(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v8

    sget-object v9, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_4X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    if-ne v8, v9, :cond_3c

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v8

    const v9, 0x75300

    if-lt v8, v9, :cond_3c

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    :cond_d1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v7

    const v8, 0x4c4b40

    if-le v7, v8, :cond_112

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "id photo picture size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
    invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$3(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Landroid/hardware/Camera$Size;

    move-result-object v8

    iget v8, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
    invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$3(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Landroid/hardware/Camera$Size;

    move-result-object v8

    iget v8, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_112
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_49
.end method

.method private static getBestPicSize(Ljava/util/List;IF)Landroid/graphics/Point;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;IF)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    const/4 v0, 0x0

    move v1, v2

    :goto_8
    if-gez v1, :cond_1f

    :goto_a
    if-nez v0, :cond_d

    const/4 v2, 0x0

    :cond_d
    move v5, v2

    :goto_e
    if-gez v5, :cond_32

    :cond_10
    move v5, v2

    :cond_11
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v4, -0x1

    if-le v5, v6, :cond_4b

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    move-object v3, v6

    :cond_1e
    :goto_1e
    return-object v3

    :cond_1f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    if-le v6, p1, :cond_2f

    move v2, v1

    const/4 v0, 0x1

    goto :goto_a

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_32
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    const v7, 0x989680

    if-gt v6, v7, :cond_10

    invoke-static {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->isSame(Landroid/graphics/Point;F)Z

    move-result v6

    if-nez v6, :cond_1e

    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_4b
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-static {v3, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->isSame(Landroid/graphics/Point;F)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_1e
.end method

.method protected static getDefaultPictureSize(Ljava/util/List;I)Landroid/graphics/Point;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;I)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    const v8, 0x2dc6c0

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v6, v7

    if-gt v1, v8, :cond_57

    const v5, 0x2dc6c0

    :cond_15
    :goto_15
    const v3, 0x3fe38e39

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v2

    if-lez v4, :cond_32

    if-lez v2, :cond_32

    if-le v4, v2, :cond_68

    int-to-float v6, v4

    int-to-float v7, v2

    div-float v3, v6, v7

    :cond_32
    :goto_32
    sget-object v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Get screen size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getBestPicSize(Ljava/util/List;IF)Landroid/graphics/Point;

    move-result-object v6

    return-object v6

    :cond_57
    const v6, 0x989680

    if-lt v1, v6, :cond_60

    const v5, 0x4c4b40

    goto :goto_15

    :cond_60
    div-int/lit8 v5, v1, 0x2

    if-ge v5, v8, :cond_15

    const v5, 0x2dc6c0

    goto :goto_15

    :cond_68
    int-to-float v6, v2

    int-to-float v7, v4

    div-float v3, v6, v7

    goto :goto_32
.end method

.method protected static getOptimalPreviewSize(Ljava/util/List;F)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;F)",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;"
        }
    .end annotation

    const v0, 0x124f80

    invoke-static {p0, p1, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getOptimalPreviewSize(Ljava/util/List;FI)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected static getOptimalPreviewSize(Ljava/util/List;FI)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;FI)",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;"
        }
    .end annotation

    const v6, 0x3d0900

    if-gt p2, v6, :cond_a

    const v6, 0xc350

    if-ge p2, v6, :cond_d

    :cond_a
    const p2, 0x3d0900

    :cond_d
    if-nez p0, :cond_11

    const/4 v6, 0x0

    :goto_10
    return-object v6

    :cond_11
    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const v6, 0x3c23d70a

    invoke-static {p0, p1, v6, v5, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->tryGetOptimalPreviewSize(Ljava/util/List;FFII)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    goto :goto_10

    :cond_2f
    const v6, 0x3d4ccccd

    invoke-static {p0, p1, v6, v5, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->tryGetOptimalPreviewSize(Ljava/util/List;FFII)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    goto :goto_10

    :cond_3d
    const v6, 0x3e3851ec

    invoke-static {p0, p1, v6, v5, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->tryGetOptimalPreviewSize(Ljava/util/List;FFII)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    goto :goto_10

    :cond_4b
    sget-object v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No preview size match the aspect ratio"

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5a
    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_65

    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    goto :goto_10

    :cond_65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v7, v8

    if-gt v3, p2, :cond_5a

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v1, :cond_5a

    move-object v2, v4

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_5a
.end method

.method private static getPictureRadio(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    .registers 4

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float v0, v1, v2

    const v1, 0x3fdd27d3

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_19

    const v1, 0x3fe9f49f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_19

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X9:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    :goto_18
    return-object v1

    :cond_19
    const v1, 0x3fa44445

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2a

    const v1, 0x3fb11111

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2a

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_4X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    goto :goto_18

    :cond_2a
    const v1, 0x3fc66667

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3b

    const v1, 0x3fd33333

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3b

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X10:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    goto :goto_18

    :cond_3b
    const v1, 0x3fceeeef

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4c

    const v1, 0x3fdbbbbb

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4c

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_5X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    goto :goto_18

    :cond_4c
    const v1, 0x3fb9999a

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5d

    const v1, 0x3fc66666

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_5d

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_3X2:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    goto :goto_18

    :cond_5d
    const v1, 0x3f733333

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_6e

    const v1, 0x3f866666

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_6e

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_1X1:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    goto :goto_18

    :cond_6e
    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_OTHER:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    goto :goto_18
.end method

.method private static initPictureSizeEntry(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;
    .registers 6

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    invoke-direct {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;-><init>()V

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picSize:Landroid/hardware/Camera$Size;
    invoke-static {v1, p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$0(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Landroid/hardware/Camera$Size;)V

    iget v3, p0, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$1(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera(I)Z

    move-result v3

    if-nez v3, :cond_5c

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v3

    const v4, 0xf4240

    if-le v3, v4, :cond_47

    const v2, 0x49742400

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x64

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$8(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V

    :goto_3f
    invoke-static {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->getPictureRadio(Landroid/hardware/Camera$Size;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v3

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$2(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;)V

    return-object v1

    :cond_47
    const v2, 0x47c35000

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0xa

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$8(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V

    goto :goto_3f

    :cond_5c
    const v2, 0x47c35000

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picTruePix:I
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$5(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0xa

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$8(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;I)V

    goto :goto_3f
.end method

.method private static isSame(Landroid/graphics/Point;F)Z
    .registers 5

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float v0, v1, v2

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_16

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float v0, v1, v2

    :cond_16
    sub-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    const/4 v1, 0x1

    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private static matchLimit(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v3, 0x1

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_36

    :goto_16
    if-eqz v3, :cond_2c

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera(I)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5d

    :cond_2c
    :goto_2c
    const/4 v4, 0x0

    :goto_2d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_6d

    return-void

    :cond_36
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$6(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v7

    if-gt v7, v10, :cond_59

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera(I)Z

    move-result v7

    if-nez v7, :cond_59

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$4(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v7

    sget-object v8, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_OTHER:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    if-eq v7, v8, :cond_10

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
    invoke-static {v2, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$7(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Z)V

    const/4 v3, 0x0

    goto :goto_16

    :cond_59
    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
    invoke-static {v2, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$7(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Z)V

    goto :goto_10

    :cond_5d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$6(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v7

    if-gt v7, v10, :cond_26

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
    invoke-static {v2, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$7(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Z)V

    goto :goto_2c

    :cond_6d
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    add-int/lit8 v5, v4, 0x1

    :goto_75
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_7e

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_7e
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$6(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v6

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->picPix:I
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$6(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)I

    move-result v7

    if-ne v6, v7, :cond_a0

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$4(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v6

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->pictureRatio:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$4(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    const/4 v6, 0x0

    #setter for: Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->isValid:Z
    invoke-static {v1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;->access$7(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PicSizeInfo;Z)V

    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_75
.end method

.method private static tryGetOptimalPreviewSize(Ljava/util/List;FFII)Landroid/hardware/Camera$Size;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;FFII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v2, 0x0

    const v0, 0x7fffffff

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_f

    return-object v2

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v7, v8

    div-int/lit8 v1, p3, 0x2

    if-gt v3, p4, :cond_8

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v1, :cond_8

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v4, v7, v8

    sub-float v7, v4, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, p2

    if-gtz v7, :cond_8

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v0, :cond_8

    move-object v2, v5

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_8
.end method

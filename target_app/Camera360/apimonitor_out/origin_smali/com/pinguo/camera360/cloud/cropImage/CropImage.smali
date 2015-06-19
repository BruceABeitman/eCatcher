.class public Lcom/pinguo/camera360/cloud/cropImage/CropImage;
.super Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
.source "CropImage.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field public static final CROP_MSG:I = 0xa

.field public static final CROP_MSG_INTERNAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mCrop:Lcom/pinguo/camera360/ui/HighlightView;

.field private final mDecodingThreads:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/pinguo/camera360/ui/CropImageView;

.field private mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field public mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field public mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mDoFaceDetection:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mScaleUp:Z

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mDecodingThreads:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$1;-><init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Lcom/pinguo/camera360/ui/CropImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/cloud/cropImage/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/cloud/cropImage/CropImage;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/pinguo/camera360/cloud/cropImage/MediaItem;
    .registers 16

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-nez p2, :cond_5f

    :try_start_20
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_22
    if-nez p2, :cond_62

    sget-object v2, Lcom/pinguo/camera360/cloud/cropImage/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    :goto_26
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_55

    new-instance v11, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    invoke-direct {v11}, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;-><init>()V
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_39} :catch_65

    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v0, v6, v4}, Lcom/pinguo/camera360/cloud/cropImage/CacheService;->populateMediaItemFromCursor(Lcom/pinguo/camera360/cloud/cropImage/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_8d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_54} :catch_90

    move-object v10, v11

    :cond_55
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    :goto_5a
    if-eqz v10, :cond_5e

    iput-wide v8, v10, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mId:J

    :cond_5e
    return-object v10

    :cond_5f
    :try_start_5f
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_22

    :cond_62
    sget-object v2, Lcom/pinguo/camera360/cloud/cropImage/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_65

    goto :goto_26

    :catch_65
    move-exception v7

    :goto_66
    :try_start_66
    const-string/jumbo v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "createMediaItemFromUri exception="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_86

    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :catchall_86
    move-exception v4

    :goto_87
    if-eqz v6, :cond_8c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8c
    throw v4

    :catchall_8d
    move-exception v4

    move-object v10, v11

    goto :goto_87

    :catch_90
    move-exception v7

    move-object v10, v11

    goto :goto_66
.end method

.method private onSaveClicked()V
    .registers 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaving:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaving:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/ui/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_140

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_35
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    int-to-float v0, v13

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputX:I

    move/from16 v21, v0

    if-eqz v21, :cond_f1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputY:I

    move/from16 v21, v0

    if-eqz v21, :cond_f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mScale:Z

    move/from16 v21, v0

    if-eqz v21, :cond_144

    move-object v15, v8

    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mScaleUp:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v8, v1, v2, v3}, Lcom/pinguo/camera360/cloud/cropImage/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eq v15, v8, :cond_f1

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f1
    :goto_f1
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_1e3

    const-string/jumbo v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    if-nez v21, :cond_111

    const-string/jumbo v21, "return-data"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1e3

    :cond_111
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v21, -0x1

    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v23, "inline-data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->finish()V

    goto/16 :goto_8

    :cond_140
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_35

    :cond_144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputY:I

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/ui/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    new-instance v9, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputY:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v10, v21, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v11, v21, 0x2

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    const/16 v21, 0x0

    neg-int v0, v10

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    neg-int v0, v11

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v5

    goto/16 :goto_f1

    :cond_1e3
    move-object v5, v8

    new-instance v18, Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;-><init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;Landroid/graphics/Bitmap;)V

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f080274

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/cloud/cropImage/Util;->startBackgroundJob(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_8
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .registers 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseValueOf"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_6f

    const/16 v24, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v24

    if-eqz v24, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_4b

    :cond_23
    invoke-static/range {v24 .. v24}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_26
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setResult(ILandroid/content/Intent;)V

    :cond_44
    :goto_44
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->finish()V

    return-void

    :catch_4b
    move-exception v17

    :try_start_4c
    const-string/jumbo v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Cannot open file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_6a

    invoke-static/range {v24 .. v24}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_26

    :catchall_6a
    move-exception v2

    invoke-static/range {v24 .. v24}, Lcom/pinguo/camera360/cloud/cropImage/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :cond_6f
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "rect"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    if-eqz v2, :cond_44

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    iget-object v2, v2, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const/4 v2, 0x0

    const-string/jumbo v4, "."

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_bc
    add-int/lit8 v25, v25, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    move-object/from16 v21, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x1

    new-array v14, v2, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->isLatLongValid()Z

    move-result v2

    if-eqz v2, :cond_14c

    new-instance v8, Ljava/lang/Double;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mLatitude:D

    invoke-direct {v8, v4, v5}, Ljava/lang/Double;-><init>(D)V

    new-instance v9, Ljava/lang/Double;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mLongitude:D

    invoke-direct {v9, v4, v5}, Ljava/lang/Double;-><init>(D)V

    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateAddedInSec:J

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mDateTakenInMs:J

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v2 .. v14}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v22

    if-eqz v22, :cond_180

    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_44

    :cond_180
    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_44
.end method

.method private startFaceDetection()V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$3;-><init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/cloud/cropImage/Util;->startBackgroundJob(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_6
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setResult(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 21

    invoke-super/range {p0 .. p1}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->requestWindowFeature(I)Z

    const v2, 0x7f03004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setContentView(I)V

    const v2, 0x7f0a018e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pinguo/camera360/ui/TitleView;

    const v2, 0x7f080276

    invoke-virtual {v13, v2}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v2, 0x7f0a018d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/ui/CropImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mImageView:Lcom/pinguo/camera360/ui/CropImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CropImage intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CropImage extras="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_11c

    const-string/jumbo v2, "circleCrop"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_90

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCircleCrop:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I

    :cond_90
    const-string/jumbo v2, "output"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_b4

    const-string/jumbo v2, "outputFormat"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b4

    invoke-static {v15}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    :cond_b4
    const-string/jumbo v2, "data"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v2, "aspectX"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectX:I

    const-string/jumbo v2, "aspectY"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mAspectY:I

    const-string/jumbo v2, "outputX"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputX:I

    const-string/jumbo v2, "outputY"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mOutputY:I

    const-string/jumbo v2, "scale"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mScale:Z

    const-string/jumbo v2, "scaleUpIfNeeded"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mScaleUp:Z

    const-string/jumbo v2, "noFaceDetection"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    const-string/jumbo v2, "noFaceDetection"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b1

    const/4 v2, 0x0

    :goto_118
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mDoFaceDetection:Z

    :cond_11c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_19e

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "target="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const-string/jumbo v2, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    const/4 v2, 0x0

    :try_start_150
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_15c} :catch_1b7

    :cond_15c
    :goto_15c
    :try_start_15c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    if-eqz v2, :cond_1bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    iget v2, v2, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mRotation:F

    float-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mItem:Lcom/pinguo/camera360/cloud/cropImage/MediaItem;

    iget-object v3, v2, Lcom/pinguo/camera360/cloud/cropImage/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v4, 0x400

    const/16 v5, 0x400

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_182} :catch_224
    .catch Ljava/net/URISyntaxException; {:try_start_15c .. :try_end_182} :catch_221

    :cond_182
    :goto_182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_19e

    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_19e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/pinguo/camera360/cloud/cropImage/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    :cond_19e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1f5

    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "Cannot load bitmap, exiting."

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->finish()V

    :goto_1b0
    return-void

    :cond_1b1
    const/4 v2, 0x1

    goto/16 :goto_118

    :cond_1b4
    const/4 v2, 0x1

    goto/16 :goto_118

    :catch_1b7
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15c

    :cond_1bc
    :try_start_1bc
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    const/16 v5, 0x400

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/pinguo/camera360/cloud/cropImage/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v2, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    new-instance v10, Landroid/media/ExifInterface;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/pinguo/camera360/cloud/cropImage/Shared;->exifOrientationToDegrees(I)F
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1f0} :catch_224
    .catch Ljava/net/URISyntaxException; {:try_start_1bc .. :try_end_1f0} :catch_221

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    goto :goto_182

    :cond_1f5
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x7f0a00b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f020150

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/pinguo/camera360/cloud/cropImage/CropImage$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage$2;-><init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->startFaceDetection()V

    goto :goto_1b0

    :catch_221
    move-exception v2

    goto/16 :goto_182

    :catch_224
    move-exception v2

    goto/16 :goto_182
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->instance()Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mDecodingThreads:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;->cancelThreadDecoding(Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadSet;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->setResult(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->finish()V

    return-void
.end method

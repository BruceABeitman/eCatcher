.class Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;
.super Ljava/lang/Object;
.source "ThumbnailSortTagMaker.java"

# interfaces
.implements Lcom/pinguo/album/AlbumThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumSortTagJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/album/AlbumThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mOtherTagLabel:Ljava/lang/String;

.field private mShowYear:Z

.field private mTimeLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;Lcom/pinguo/album/data/MediaSet$SortTag;)V
    .registers 10

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mShowYear:Z

    iget-boolean v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->isYearTag:Z

    iput-boolean v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mShowYear:Z

    iget-boolean v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mShowYear:Z

    if-eqz v4, :cond_35

    iget-object v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;

    :goto_19
    iget-object v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->tagName:Ljava/lang/String;

    iput-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    monitor-enter p1

    if-eqz v1, :cond_9f

    :try_start_2d
    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos2:F
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$2(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)F

    move-result v4

    iput v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->drawBeginPos:F

    :goto_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_a6

    return-void

    :cond_35
    iget-object v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iget-object v5, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    :try_start_3f
    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOut:Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$0(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOrigin:Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$1(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v6, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_53} :catch_54

    goto :goto_19

    :catch_54
    move-exception v0

    iget-object v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iput-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;

    goto :goto_19

    :cond_5a
    :try_start_5a
    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOut:Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$0(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOrigin:Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$1(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v6, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOut:Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$0(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mDateFormatOrigin:Ljava/text/SimpleDateFormat;
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$1(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v6, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7d} :catch_99

    move-result-object v2

    :goto_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;

    goto :goto_19

    :catch_99
    move-exception v0

    iget-object v3, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->beginTime:Ljava/lang/String;

    iget-object v2, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->endTime:Ljava/lang/String;

    goto :goto_7e

    :cond_9f
    :try_start_9f
    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagDrawPos1:F
    invoke-static {p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$3(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)F

    move-result v4

    iput v4, p2, Lcom/pinguo/album/data/MediaSet$SortTag;->drawBeginPos:F

    goto :goto_33

    :catchall_a6
    move-exception v4

    monitor-exit p1
    :try_end_a8
    .catchall {:try_start_9f .. :try_end_a8} :catchall_a6

    throw v4
.end method


# virtual methods
.method public run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .registers 29

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->setMode(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagWidth:I
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$4(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagHeight:I
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$5(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I

    move-result v18

    monitor-exit v24
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_88

    const/4 v8, 0x4

    mul-int/lit8 v23, v19, 0x2

    div-int/lit8 v23, v23, 0x3

    add-int v7, v23, v8

    add-int v6, v18, v8

    invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v6}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_42

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v23

    invoke-static {v7, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_42
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v23, 0x2

    const/16 v24, 0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    add-int/lit8 v25, v25, -0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    add-int/lit8 v26, v26, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/high16 v23, 0x4000

    const/high16 v24, 0x4000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v23, 0x0

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mShowYear:Z

    move/from16 v23, v0

    if-nez v23, :cond_166

    invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_8b

    const/4 v5, 0x0

    :goto_87
    return-object v5

    :catchall_88
    move-exception v23

    :try_start_89
    monitor-exit v24
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v23

    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel1Paint:Landroid/text/TextPaint;
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$6(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/text/TextPaint;->getTextSize()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$7(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/text/TextPaint;->getTextSize()F

    move-result v12

    move v13, v11

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_c4

    add-float/2addr v13, v12

    const v23, 0x3dcccccd

    mul-float v14, v12, v23

    add-float/2addr v13, v14

    :cond_c4
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v4, v23, v24

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    const/16 v23, 0x0

    add-float v24, v4, v11

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v26, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel1Paint:Landroid/text/TextPaint;
    invoke-static/range {v26 .. v26}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$6(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_161

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_161

    const/16 v23, 0x0

    add-float v24, v14, v12

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mOtherTagLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v24, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
    invoke-static/range {v24 .. v24}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$7(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v25, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mSortTagWidth:I
    invoke-static/range {v25 .. v25}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$4(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    div-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget-object v26, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v23 .. v26}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v25, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabel2Paint:Landroid/text/TextPaint;
    invoke-static/range {v25 .. v25}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$7(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v25

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_161
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_87

    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabelYearPaint:Landroid/text/TextPaint;
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$8(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v22

    const/high16 v24, 0x4000

    div-float v20, v23, v24

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v21, v23, v24

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const v23, -0x767474

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v23, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v23, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mYearBGHeight:I
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$9(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v23, v20, v22

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/AlbumThreadPool$JobContext;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_203

    const/4 v5, 0x0

    goto/16 :goto_87

    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabelYearPaint:Landroid/text/TextPaint;
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$8(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v23

    sget-object v24, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v23, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabelYearPaint:Landroid/text/TextPaint;
    invoke-static/range {v23 .. v23}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$8(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    iget v0, v10, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move/from16 v23, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v21, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->mTimeLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;

    move-object/from16 v24, v0

    #getter for: Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->mLabelYearPaint:Landroid/text/TextPaint;
    invoke-static/range {v24 .. v24}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;->access$8(Lcom/pinguo/album/views/render/ThumbnailSortTagMaker;)Landroid/text/TextPaint;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_87
.end method

.method public bridge synthetic run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/render/ThumbnailSortTagMaker$AlbumSortTagJob;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

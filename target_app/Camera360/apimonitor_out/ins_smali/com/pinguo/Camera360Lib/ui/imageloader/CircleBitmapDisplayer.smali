.class public Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;
.super Ljava/lang/Object;
.source "CircleBitmapDisplayer.java"
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
.registers 3
sget-object v0, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64
:try_start_1e
:goto_1e
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_62
:goto_27
:try_start_27
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_60
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:goto_39
:try_start_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_5e
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:try_end_42
.catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_5c
:goto_42
:try_start_42
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_5a
sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:goto_55
:try_end_55
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_58
sput-object v0, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I
goto :goto_4
:catch_58
move-exception v1
goto :goto_55
:catch_5a
move-exception v1
goto :goto_4b
:catch_5c
move-exception v1
goto :goto_42
:catch_5e
move-exception v1
goto :goto_39
:catch_60
move-exception v1
goto :goto_30
:catch_62
move-exception v1
goto :goto_27
:catch_64
move-exception v1
goto :goto_1e
:catch_66
move-exception v1
goto :goto_15
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
.registers 12
const/4 v6, 0x0
div-int/lit8 v4, p3, 0x2
sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p3, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v2
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v3, Landroid/graphics/Paint;
invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V
new-instance v1, Landroid/graphics/RectF;
invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
const/4 v5, 0x1
invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V
const/high16 v5, -0x100
invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v5, v4
int-to-float v6, v4
invoke-virtual {v0, v1, v5, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
new-instance v5, Landroid/graphics/PorterDuffXfermode;
sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
invoke-virtual {v0, p0, p1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
return-object v2
.end method
.method public static roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;)Landroid/graphics/Bitmap;
.registers 30
invoke-virtual/range {p1 .. p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;
move-result-object v13
if-nez v13, :cond_15
const-string/jumbo v25, "View is collected probably. Can\'t round bitmap corners without view properties."
const/16 v26, 0x0
move/from16 v0, v26
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v26, v0
invoke-static/range {v25 .. v26}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_14
:goto_14
return-object p0
:cond_15
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
invoke-virtual/range {p1 .. p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWidth()I
move-result v21
invoke-virtual/range {p1 .. p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getHeight()I
move-result v20
if-gtz v21, :cond_29
move/from16 v21, v7
:cond_29
if-gtz v20, :cond_2d
move/from16 v20, v6
:cond_2d
invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;
move-result-object v15
if-eqz v15, :cond_14
invoke-static {}, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
move-result-object v25
invoke-virtual {v15}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v26
aget v25, v25, v26
packed-switch v25, :pswitch_data_212
:pswitch_40
move/from16 v0, v21
int-to-float v0, v0
move/from16 v25, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v26, v0
div-float v19, v25, v26
int-to-float v0, v7
move/from16 v25, v0
int-to-float v0, v6
move/from16 v26, v0
div-float v5, v25, v26
cmpl-float v25, v19, v5
if-lez v25, :cond_10c
int-to-float v0, v7
move/from16 v25, v0
int-to-float v0, v6
move/from16 v26, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v27, v0
div-float v26, v26, v27
div-float v25, v25, v26
move/from16 v0, v25
float-to-int v0, v0
move/from16 v22, v0
move/from16 v12, v20
:goto_6e
new-instance v17, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move-object/from16 v0, v17
move/from16 v1, v25
move/from16 v2, v26
invoke-direct {v0, v1, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v9, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v22
invoke-direct {v9, v0, v1, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V
:try_start_8c
:goto_8c
move-object/from16 v0, p0
move-object/from16 v1, v17
move/from16 v2, v22
invoke-static {v0, v1, v9, v2, v12}, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
:try_end_95
.catch Ljava/lang/OutOfMemoryError; {:try_start_8c .. :try_end_95} :catch_1fb
move-result-object v14
:goto_96
move-object/from16 p0, v14
goto/16 :goto_14
:pswitch_9a
move/from16 v0, v21
int-to-float v0, v0
move/from16 v25, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v26, v0
div-float v19, v25, v26
int-to-float v0, v7
move/from16 v25, v0
int-to-float v0, v6
move/from16 v26, v0
div-float v5, v25, v26
cmpl-float v25, v19, v5
if-lez v25, :cond_f5
move/from16 v0, v20
invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I
move-result v8
int-to-float v0, v7
move/from16 v25, v0
int-to-float v0, v6
move/from16 v26, v0
int-to-float v0, v8
move/from16 v27, v0
div-float v26, v26, v27
div-float v25, v25, v26
move/from16 v0, v25
float-to-int v10, v0
:goto_c8
sub-int v25, v21, v10
div-int/lit8 v23, v25, 0x2
sub-int v25, v20, v8
div-int/lit8 v24, v25, 0x2
new-instance v17, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move-object/from16 v0, v17
move/from16 v1, v25
move/from16 v2, v26
invoke-direct {v0, v1, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v9, Landroid/graphics/Rect;
add-int v25, v23, v10
add-int v26, v24, v8
move/from16 v0, v23
move/from16 v1, v24
move/from16 v2, v25
move/from16 v3, v26
invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
move/from16 v22, v21
move/from16 v12, v20
goto :goto_8c
:cond_f5
move/from16 v0, v21
invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I
move-result v10
int-to-float v0, v6
move/from16 v25, v0
int-to-float v0, v7
move/from16 v26, v0
int-to-float v0, v10
move/from16 v27, v0
div-float v26, v26, v27
div-float v25, v25, v26
move/from16 v0, v25
float-to-int v8, v0
goto :goto_c8
:cond_10c
move/from16 v22, v21
int-to-float v0, v6
move/from16 v25, v0
int-to-float v0, v7
move/from16 v26, v0
move/from16 v0, v21
int-to-float v0, v0
move/from16 v27, v0
div-float v26, v26, v27
div-float v25, v25, v26
move/from16 v0, v25
float-to-int v12, v0
goto/16 :goto_6e
:pswitch_122
move/from16 v0, v21
int-to-float v0, v0
move/from16 v25, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v26, v0
div-float v19, v25, v26
int-to-float v0, v7
move/from16 v25, v0
int-to-float v0, v6
move/from16 v26, v0
div-float v5, v25, v26
cmpl-float v25, v19, v5
if-lez v25, :cond_180
move/from16 v18, v7
move/from16 v0, v20
int-to-float v0, v0
move/from16 v25, v0
int-to-float v0, v7
move/from16 v26, v0
move/from16 v0, v21
int-to-float v0, v0
move/from16 v27, v0
div-float v26, v26, v27
mul-float v25, v25, v26
move/from16 v0, v25
float-to-int v0, v0
move/from16 v16, v0
const/16 v23, 0x0
sub-int v25, v6, v16
div-int/lit8 v24, v25, 0x2
:goto_158
move/from16 v22, v18
move/from16 v12, v16
new-instance v17, Landroid/graphics/Rect;
add-int v25, v23, v18
add-int v26, v24, v16
move-object/from16 v0, v17
move/from16 v1, v23
move/from16 v2, v24
move/from16 v3, v25
move/from16 v4, v26
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v9, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v22
invoke-direct {v9, v0, v1, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V
goto/16 :goto_8c
:cond_180
move/from16 v0, v21
int-to-float v0, v0
move/from16 v25, v0
int-to-float v0, v6
move/from16 v26, v0
move/from16 v0, v20
int-to-float v0, v0
move/from16 v27, v0
div-float v26, v26, v27
mul-float v25, v25, v26
move/from16 v0, v25
float-to-int v0, v0
move/from16 v18, v0
move/from16 v16, v6
sub-int v25, v7, v18
div-int/lit8 v23, v25, 0x2
const/16 v24, 0x0
goto :goto_158
:pswitch_19f
move/from16 v22, v21
move/from16 v12, v20
new-instance v17, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move-object/from16 v0, v17
move/from16 v1, v25
move/from16 v2, v26
invoke-direct {v0, v1, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v9, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v22
invoke-direct {v9, v0, v1, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V
goto/16 :goto_8c
:pswitch_1c3
move/from16 v0, v21
invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I
move-result v22
move/from16 v0, v20
invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I
move-result v12
sub-int v25, v7, v22
div-int/lit8 v23, v25, 0x2
sub-int v25, v6, v12
div-int/lit8 v24, v25, 0x2
new-instance v17, Landroid/graphics/Rect;
add-int v25, v23, v22
add-int v26, v24, v12
move-object/from16 v0, v17
move/from16 v1, v23
move/from16 v2, v24
move/from16 v3, v25
move/from16 v4, v26
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v9, Landroid/graphics/Rect;
const/16 v25, 0x0
const/16 v26, 0x0
move/from16 v0, v25
move/from16 v1, v26
move/from16 v2, v22
invoke-direct {v9, v0, v1, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V
goto/16 :goto_8c
:catch_1fb
move-exception v11
const-string/jumbo v25, "Can\'t create bitmap with rounded corners. Not enough memory."
const/16 v26, 0x0
move/from16 v0, v26
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v26, v0
move-object/from16 v0, v25
move-object/from16 v1, v26
invoke-static {v11, v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
move-object/from16 v14, p0
goto/16 :goto_96
:pswitch_data_212
.packed-switch 0x1
:pswitch_1c3
:pswitch_122
:pswitch_9a
:pswitch_40
:pswitch_40
:pswitch_40
:pswitch_19f
:pswitch_1c3
.end packed-switch
.end method
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
.registers 7
instance-of v1, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
if-nez v1, :cond_d
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "ImageAware should wrap ImageView. ImageViewAware is expected."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_d
move-object v1, p2
check-cast v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
invoke-static {p1, v1}, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z
return-object v0
.end method
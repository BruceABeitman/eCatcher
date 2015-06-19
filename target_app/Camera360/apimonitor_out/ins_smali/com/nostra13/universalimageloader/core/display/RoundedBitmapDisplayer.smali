.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.field private final roundPixels:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I
return-void
.end method
.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
.registers 12
const/4 v5, 0x0
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p4, p5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v2
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v3, Landroid/graphics/Paint;
invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V
new-instance v1, Landroid/graphics/RectF;
invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
const/4 v4, 0x1
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V
const/high16 v4, -0x100
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v4, p1
int-to-float v5, p1
invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
new-instance v4, Landroid/graphics/PorterDuffXfermode;
sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
invoke-virtual {v0, p0, p2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
return-object v2
.end method
.method public static roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
.registers 26
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v10
invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v9
invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I
move-result v19
invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I
move-result v18
if-gtz v19, :cond_14
move/from16 v19, v10
:cond_14
if-gtz v18, :cond_18
move/from16 v18, v9
:cond_18
sget-object v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I
invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_15a
:pswitch_27
move/from16 v0, v19
int-to-float v2, v0
move/from16 v0, v18
int-to-float v3, v0
div-float v17, v2, v3
int-to-float v2, v10
int-to-float v3, v9
div-float v8, v2, v3
cmpl-float v2, v17, v8
if-lez v2, :cond_ab
int-to-float v2, v10
int-to-float v3, v9
move/from16 v0, v18
int-to-float v0, v0
move/from16 v22, v0
div-float v3, v3, v22
div-float/2addr v2, v3
float-to-int v6, v2
move/from16 v7, v18
:goto_44
new-instance v4, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v5, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
:goto_52
move-object/from16 v2, p0
move/from16 v3, p2
:try_start_56
invoke-static/range {v2 .. v7}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
:try_end_59
.catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_59} :catch_14c
move-result-object v14
:goto_5a
return-object v14
:pswitch_5b
move/from16 v0, v19
int-to-float v2, v0
move/from16 v0, v18
int-to-float v3, v0
div-float v17, v2, v3
int-to-float v2, v10
int-to-float v3, v9
div-float v8, v2, v3
cmpl-float v2, v17, v8
if-lez v2, :cond_9b
move/from16 v0, v18
invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I
move-result v11
int-to-float v2, v10
int-to-float v3, v9
int-to-float v0, v11
move/from16 v22, v0
div-float v3, v3, v22
div-float/2addr v2, v3
float-to-int v12, v2
:goto_7a
sub-int v2, v19, v12
div-int/lit8 v20, v2, 0x2
sub-int v2, v18, v11
div-int/lit8 v21, v2, 0x2
new-instance v4, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v5, Landroid/graphics/Rect;
add-int v2, v20, v12
add-int v3, v21, v11
move/from16 v0, v20
move/from16 v1, v21
invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
move/from16 v6, v19
move/from16 v7, v18
goto :goto_52
:cond_9b
move/from16 v0, v19
invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I
move-result v12
int-to-float v2, v9
int-to-float v3, v10
int-to-float v0, v12
move/from16 v22, v0
div-float v3, v3, v22
div-float/2addr v2, v3
float-to-int v11, v2
goto :goto_7a
:cond_ab
move/from16 v6, v19
int-to-float v2, v9
int-to-float v3, v10
move/from16 v0, v19
int-to-float v0, v0
move/from16 v22, v0
div-float v3, v3, v22
div-float/2addr v2, v3
float-to-int v7, v2
goto :goto_44
:pswitch_b9
move/from16 v0, v19
int-to-float v2, v0
move/from16 v0, v18
int-to-float v3, v0
div-float v17, v2, v3
int-to-float v2, v10
int-to-float v3, v9
div-float v8, v2, v3
cmpl-float v2, v17, v8
if-lez v2, :cond_f7
move/from16 v16, v10
move/from16 v0, v18
int-to-float v2, v0
int-to-float v3, v10
move/from16 v0, v19
int-to-float v0, v0
move/from16 v22, v0
div-float v3, v3, v22
mul-float/2addr v2, v3
float-to-int v15, v2
const/16 v20, 0x0
sub-int v2, v9, v15
div-int/lit8 v21, v2, 0x2
:goto_de
move/from16 v6, v16
move v7, v15
new-instance v4, Landroid/graphics/Rect;
add-int v2, v20, v16
add-int v3, v21, v15
move/from16 v0, v20
move/from16 v1, v21
invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v5, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
goto/16 :goto_52
:cond_f7
move/from16 v0, v19
int-to-float v2, v0
int-to-float v3, v9
move/from16 v0, v18
int-to-float v0, v0
move/from16 v22, v0
div-float v3, v3, v22
mul-float/2addr v2, v3
float-to-int v0, v2
move/from16 v16, v0
move v15, v9
sub-int v2, v10, v16
div-int/lit8 v20, v2, 0x2
const/16 v21, 0x0
goto :goto_de
:pswitch_10e
move/from16 v6, v19
move/from16 v7, v18
new-instance v4, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v5, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
goto/16 :goto_52
:pswitch_122
move/from16 v0, v19
invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I
move-result v6
move/from16 v0, v18
invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I
move-result v7
sub-int v2, v10, v6
div-int/lit8 v20, v2, 0x2
sub-int v2, v9, v7
div-int/lit8 v21, v2, 0x2
new-instance v4, Landroid/graphics/Rect;
add-int v2, v20, v6
add-int v3, v21, v7
move/from16 v0, v20
move/from16 v1, v21
invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v5, Landroid/graphics/Rect;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
goto/16 :goto_52
:catch_14c
move-exception v13
const-string/jumbo v2, "Can\'t create bitmap with rounded corners. Not enough memory."
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v13, v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
move-object/from16 v14, p0
goto/16 :goto_5a
:pswitch_data_15a
.packed-switch 0x1
:pswitch_5b
:pswitch_27
:pswitch_27
:pswitch_27
:pswitch_b9
:pswitch_10e
:pswitch_122
:pswitch_122
.end packed-switch
.end method
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
.registers 6
iget v1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I
invoke-static {p1, p2, v1}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-object v0
.end method
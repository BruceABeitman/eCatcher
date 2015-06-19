.class public Lcom/facebook/katana/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"
.field public static final FRAME_HOLLOW:I = 0x0
.field public static final FRAME_SOLID:I = 0x1
.field public static final PHOTO_BORDER:I = 0x3
.field private static final mInStrokePaint:Landroid/graphics/Paint;
.field private static final mOutStrokePaint:Landroid/graphics/Paint;
.field private static final mResizePaint:Landroid/graphics/Paint;
.field private static final mSolidStrokePaint:Landroid/graphics/Paint;
.method static constructor <clinit>()V
.registers 4
const v3, -0xf0f10
const/high16 v2, 0x3f80
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x2
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sput-object v0, Lcom/facebook/katana/util/ImageUtils;->mResizePaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lcom/facebook/katana/util/ImageUtils;->mOutStrokePaint:Landroid/graphics/Paint;
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mOutStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mOutStrokePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mOutStrokePaint:Landroid/graphics/Paint;
const v1, -0x1f1f20
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lcom/facebook/katana/util/ImageUtils;->mInStrokePaint:Landroid/graphics/Paint;
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mInStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mInStrokePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mInStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lcom/facebook/katana/util/ImageUtils;->mSolidStrokePaint:Landroid/graphics/Paint;
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mSolidStrokePaint:Landroid/graphics/Paint;
const/high16 v1, 0x4040
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mSolidStrokePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v0, Lcom/facebook/katana/util/ImageUtils;->mSolidStrokePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static cropBitmapCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.registers 12
const/4 v8, 0x0
sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
new-instance v3, Landroid/graphics/Rect;
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
sub-int/2addr v4, p1
div-int/lit8 v4, v4, 0x2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
sub-int/2addr v5, p2
div-int/lit8 v5, v5, 0x2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
add-int/2addr v6, p1
div-int/lit8 v6, v6, 0x2
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
add-int/2addr v7, p2
div-int/lit8 v7, v7, 0x2
invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V
const/4 v4, 0x0
invoke-virtual {v1, p0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
return-object v0
.end method
.method public static resizeBitmapAndFrame(Ljava/lang/String;III)Landroid/graphics/Bitmap;
.registers 11
add-int/lit8 p1, p1, -0x3
add-int/lit8 p2, p2, -0x3
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-gt v3, p1, :cond_17
if-le v2, p2, :cond_85
:cond_17
int-to-float v0, v3
int-to-float v1, p1
div-float/2addr v0, v1
int-to-float v1, v2
int-to-float v4, p2
div-float/2addr v1, v4
cmpl-float v4, v0, v1
if-lez v4, :cond_79
int-to-float p2, p1
int-to-float p1, v2
div-float/2addr p1, v0
:goto_24
int-to-float v0, v3
div-float/2addr v0, p2
const/high16 v1, 0x3f80
cmpl-float v0, v0, v1
if-lez v0, :cond_7f
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
float-to-int v1, p2
div-int v1, v3, v1
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object p0
move-object v6, p0
:goto_3b
if-eqz v6, :cond_104
float-to-int p0, p2
add-int/lit8 p0, p0, 0x3
float-to-int v0, p1
add-int/lit8 v0, v0, 0x3
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object p0
new-instance v0, Landroid/graphics/Canvas;
invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V
packed-switch p3, :pswitch_data_108
new-instance p3, Landroid/graphics/Rect;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
invoke-direct {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v1, Landroid/graphics/Rect;
const/4 v2, 0x3
const/4 v3, 0x3
float-to-int p2, p2
add-int/lit8 p2, p2, 0x1
float-to-int p1, p1
invoke-direct {v1, v2, v3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V
sget-object p1, Lcom/facebook/katana/util/ImageUtils;->mResizePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v6, p3, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:goto_74
invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
move-object p0, p0
:goto_78
return-object p0
:cond_79
int-to-float p1, v3
div-float v0, p1, v1
int-to-float p1, p2
move p2, v0
goto :goto_24
:cond_7f
invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object p0
move-object v6, p0
goto :goto_3b
:cond_85
int-to-float p2, v3
int-to-float p1, v2
invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object p0
move-object v6, p0
goto :goto_3b
:pswitch_8d
new-instance p3, Landroid/graphics/Rect;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
invoke-direct {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v1, Landroid/graphics/Rect;
const/4 v2, 0x3
const/4 v3, 0x3
float-to-int v4, p2
add-int/lit8 v4, v4, 0x1
float-to-int v5, p1
invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
sget-object v2, Lcom/facebook/katana/util/ImageUtils;->mResizePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v6, p3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
const/4 v1, 0x0
const/4 v2, 0x0
const/high16 p3, 0x4040
add-float/2addr p3, p2
const/high16 v3, 0x3f80
sub-float v3, p3, v3
const/high16 p3, 0x4040
add-float/2addr p3, p1
const/high16 v4, 0x3f80
sub-float v4, p3, v4
sget-object v5, Lcom/facebook/katana/util/ImageUtils;->mOutStrokePaint:Landroid/graphics/Paint;
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
const/high16 v1, 0x4000
const/high16 v2, 0x4000
sget-object v5, Lcom/facebook/katana/util/ImageUtils;->mInStrokePaint:Landroid/graphics/Paint;
move v3, p2
move v4, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
goto :goto_74
:pswitch_cd
new-instance p3, Landroid/graphics/Rect;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
invoke-direct {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v1, Landroid/graphics/Rect;
const/4 v2, 0x3
const/4 v3, 0x3
float-to-int v4, p2
add-int/lit8 v4, v4, 0x1
float-to-int v5, p1
invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
sget-object v2, Lcom/facebook/katana/util/ImageUtils;->mResizePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v6, p3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
const/high16 v1, 0x3f80
const/4 v2, 0x0
const/high16 p3, 0x4040
add-float/2addr p2, p3
const/high16 p3, 0x3f80
sub-float v3, p2, p3
const/high16 p2, 0x4040
add-float/2addr p1, p2
const/high16 p2, 0x3f80
sub-float v4, p1, p2
sget-object v5, Lcom/facebook/katana/util/ImageUtils;->mSolidStrokePaint:Landroid/graphics/Paint;
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
goto/16 :goto_74
:cond_104
const/4 p0, 0x0
goto/16 :goto_78
nop
:pswitch_data_108
.packed-switch 0x0
:pswitch_8d
:pswitch_cd
.end packed-switch
.end method
.method public static resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 12
const/4 v8, 0x0
sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p1, p1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
if-le v6, v7, :cond_4a
move v4, p1
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
mul-int/2addr v6, p1
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
div-int v3, v6, v7
:goto_22
new-instance v5, Landroid/graphics/Rect;
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
new-instance v2, Landroid/graphics/Rect;
sub-int v6, p1, v4
div-int/lit8 v6, v6, 0x2
sub-int v7, p1, v3
div-int/lit8 v7, v7, 0x2
add-int v8, p1, v4
div-int/lit8 v8, v8, 0x2
add-int v9, p1, v3
div-int/lit8 v9, v9, 0x2
invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V
sget-object v6, Lcom/facebook/katana/util/ImageUtils;->mResizePaint:Landroid/graphics/Paint;
invoke-virtual {v1, p0, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
return-object v0
:cond_4a
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
mul-int/2addr v6, p1
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v7
div-int v4, v6, v7
move v3, p1
goto :goto_22
.end method
.method public static scaleImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
.registers 16
const/4 v11, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v9
invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v4
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v9, 0x1
iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v4, v11, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
invoke-virtual {v4}, Ljava/io/InputStream;->close()V
iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v9
invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v4
if-gt v6, p2, :cond_27
if-le v5, p3, :cond_57
:cond_27
int-to-float v9, v6
int-to-float v10, p2
div-float v2, v9, v10
int-to-float v9, v5
int-to-float v10, p3
div-float v3, v9, v10
cmpl-float v9, v2, v3
if-lez v9, :cond_4e
int-to-float v0, p2
:goto_34
int-to-float v9, v6
div-float/2addr v9, v0
const/high16 v10, 0x3f80
cmpl-float v9, v9, v10
if-lez v9, :cond_52
new-instance v7, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V
float-to-int v9, v0
div-int v9, v6, v9
iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-static {v4, v11, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v8
:goto_4a
invoke-virtual {v4}, Ljava/io/InputStream;->close()V
return-object v8
:cond_4e
int-to-float v9, v6
div-float v0, v9, v3
goto :goto_34
:cond_52
invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v8
goto :goto_4a
:cond_57
invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v8
goto :goto_4a
.end method
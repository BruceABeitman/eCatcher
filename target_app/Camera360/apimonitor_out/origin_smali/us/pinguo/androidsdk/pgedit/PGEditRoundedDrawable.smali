.class public Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PGEditRoundedDrawable.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I = null

.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .registers 3

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

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
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66

    :goto_15
    :try_start_15
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64

    :goto_1e
    :try_start_1e
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
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_60

    :goto_30
    :try_start_30
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_5e

    :goto_39
    :try_start_39
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
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_5a

    :goto_4b
    :try_start_4b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_58

    :goto_55
    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

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

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 8

    const/4 v5, 0x1

    const/high16 v4, -0x100

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mOval:Z

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v6, 0x0

    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_c

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v3, :cond_32

    if-lez v2, :cond_32

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    :cond_32
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8

    if-eqz p0, :cond_6

    instance-of v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    if-eqz v5, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    instance-of v5, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v5, :cond_6

    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_2d

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    const/4 v2, 0x0

    :goto_17
    if-lt v2, v4, :cond_1b

    move-object p0, v3

    goto :goto_6

    :cond_1b
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_39
    const-string/jumbo v5, "RoundedDrawable"

    const-string/jumbo v6, "Failed to create bitmap from drawable!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private updateShaderMatrix()V
    .registers 14

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2c6

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v4, v11

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v11

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_6b
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v12

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    div-float/2addr v5, v12

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    :pswitch_7e
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    add-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_6b

    :pswitch_c7
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13a

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v9

    :goto_120
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v9

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v4, v5

    add-float v5, v1, v9

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_6b

    :cond_13a
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v9

    goto :goto_120

    :pswitch_153
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1d8

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1d8

    const/high16 v2, 0x3f80

    :goto_174
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v0, v3

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v1, v3

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6b

    :cond_1d8
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_174

    :pswitch_1f1
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6b

    :pswitch_238
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6b

    :pswitch_27f
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6b

    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_c7
        :pswitch_153
        :pswitch_1f1
        :pswitch_238
        :pswitch_27f
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mOval:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1a

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_19

    :cond_22
    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4d

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    sub-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_4d
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_19
.end method

.method public getBorderColor()I
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mOval:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->updateShaderMatrix()V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 5

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_16

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    goto :goto_15
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBorderColor(I)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
    .registers 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    move-result-object v0

    return-object v0
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
    .registers 6

    if-eqz p1, :cond_16

    :goto_2
    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->getState()[I

    move-result-object v2

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0

    :cond_16
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_2
.end method

.method public setBorderWidth(I)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
    .registers 4

    int-to-float v0, p1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mCornerRadius:F

    return-object p0
.end method

.method public setOval(Z)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mOval:Z

    return-object p0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :cond_4
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_d

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->updateShaderMatrix()V

    :cond_d
    return-object p0
.end method

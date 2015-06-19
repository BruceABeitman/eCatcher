.class public Lco/vine/android/widget/RoundedCornerBitmapImageView;
.super Landroid/widget/ImageView;
.source "RoundedCornerBitmapImageView.java"


# instance fields
.field public mCanvasBitmap:Landroid/graphics/Bitmap;

.field public mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/RoundedCornerBitmapImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lco/vine/android/R$styleable;->RoundedCornerImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mRadius:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    const/4 v11, 0x0

    invoke-virtual {p0}, Lco/vine/android/widget/RoundedCornerBitmapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v8, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_7a

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lco/vine/android/widget/RoundedCornerBitmapImageView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lco/vine/android/widget/RoundedCornerBitmapImageView;->getMeasuredHeight()I

    move-result v3

    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_2b

    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v3, v8, :cond_3c

    :cond_2b
    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_34

    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_34
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    :cond_3c
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, v1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_76

    new-instance v6, Landroid/graphics/BitmapShader;

    iget-object v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v8, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v8, v7

    int-to-float v9, v3

    invoke-direct {v5, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v8, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mRadius:I

    int-to-float v8, v8

    iget v9, p0, Lco/vine/android/widget/RoundedCornerBitmapImageView;->mRadius:I

    int-to-float v9, v9

    invoke-virtual {p1, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_75
    return-void

    :cond_76
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_75

    :cond_7a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_75
.end method

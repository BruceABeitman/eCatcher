.class public Lcom/pinguo/camera360/guide/GuideViewSecond;
.super Landroid/view/ViewGroup;
.source "GuideViewSecond.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "guide"


# instance fields
.field private image0X1:I

.field private image0X2:I

.field private image0Y1:I

.field private image0Y2:I

.field private image1X1:I

.field private image1X2:I

.field private image1Y1:I

.field private image1Y2:I

.field private image3X1:I

.field private image3X2:I

.field private image3Y1:I

.field private image3Y2:I

.field private mDx:I

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView10:Landroid/widget/ImageView;

.field private mImageView11:Landroid/widget/ImageView;

.field private mImageView12:Landroid/widget/ImageView;

.field private mImageView13:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mIsWidthScreen:Z

.field private final mScreenHeight:I

.field private final mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FFZ)V
    .registers 10

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mIsWidthScreen:Z

    float-to-int v1, p2

    iput v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mScreenWidth:I

    float-to-int v1, p3

    iput v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mScreenHeight:I

    div-float v0, p3, p2

    float-to-double v1, v0

    const-wide v3, 0x3ff999999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mIsWidthScreen:Z

    :cond_1b
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/GuideViewSecond;->initView(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/GuideViewSecond;->initData(Landroid/content/Context;)V

    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .registers 12

    const/high16 v7, 0x4120

    const/high16 v6, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020289

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02028a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020292

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mScreenWidth:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3X1:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3X1:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mScreenHeight:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y1:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y1:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mScreenWidth:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1X1:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1X1:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1X2:I

    iget-boolean v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mIsWidthScreen:Z

    if-nez v4, :cond_f6

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y1:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y2:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y1:I

    :goto_a8
    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mScreenWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X1:I

    iget-boolean v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mIsWidthScreen:Z

    if-eqz v4, :cond_114

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y2:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    :goto_c9
    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X1:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y2:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_f6
    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y1:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y2:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y1:I

    goto :goto_a8

    :cond_114
    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y2:I

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8

    mul-double/2addr v6, v8

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    goto :goto_c9
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    const v2, 0x7f020291

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView1:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView3:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView10:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView11:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView12:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView13:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView1:Landroid/widget/ImageView;

    const v1, 0x7f020289

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView3:Landroid/widget/ImageView;

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView10:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView11:Landroid/widget/ImageView;

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView12:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView13:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView10:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView11:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView12:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView13:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image1Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView3:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image3Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView10:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView11:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView12:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView13:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mDx:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->image0Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public releaseImageResource()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView10:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView11:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView12:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView13:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewSecond;->mImageView13:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/GuideViewSecond;->removeAllViews()V

    return-void
.end method

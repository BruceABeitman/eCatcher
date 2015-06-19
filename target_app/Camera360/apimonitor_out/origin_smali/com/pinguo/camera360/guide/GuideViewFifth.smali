.class public Lcom/pinguo/camera360/guide/GuideViewFifth;
.super Landroid/view/ViewGroup;
.source "GuideViewFifth.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "guide"


# instance fields
.field private duration:J

.field private image1X1:I

.field private image1X2:I

.field private image1Y1:I

.field private image1Y2:I

.field private image2X1:I

.field private image2X2:I

.field private image2Y1:I

.field private image2Y2:I

.field private image3X1:I

.field private image3X2:I

.field private image3Y1:I

.field private image3Y2:I

.field private image4X1:I

.field private image4X2:I

.field private image4Y1:I

.field private image4Y2:I

.field private image5X1:I

.field private image5X2:I

.field private image5Y1:I

.field private image5Y2:I

.field private mHandler:Landroid/os/Handler;

.field private mImageView1:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mImageView3:Landroid/widget/ImageView;

.field private mImageView4:Landroid/widget/ImageView;

.field private mImageView5:Landroid/widget/ImageView;

.field private mIsWidthScreen:Z

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mIsWidthScreen:Z

    new-instance v1, Lcom/pinguo/camera360/guide/GuideViewFifth$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/guide/GuideViewFifth$1;-><init>(Lcom/pinguo/camera360/guide/GuideViewFifth;)V

    iput-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->duration:J

    float-to-int v1, p2

    iput v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenWidth:I

    float-to-int v1, p3

    iput v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenHeight:I

    div-float v0, p3, p2

    float-to-double v1, v0

    const-wide v3, 0x3ff999999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_26

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mIsWidthScreen:Z

    :cond_26
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/GuideViewFifth;->initView(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/GuideViewFifth;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/guide/GuideViewFifth;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/GuideViewFifth;->doAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/guide/GuideViewFifth;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doAlphaAnimation(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1c

    invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initData(Landroid/content/Context;)V
    .registers 12

    const/high16 v9, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float v5, v6, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02028d

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02028e

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201a3

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020290

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201a2

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenWidth:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1X1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    div-int/2addr v6, v7

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1Y1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1X1:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1X2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1Y1:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1Y2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenWidth:I

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2X1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1Y2:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    const/high16 v8, 0x4080

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2Y1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2X1:I

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2X2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2Y1:I

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2Y2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenWidth:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3X1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2Y2:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3X1:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3X2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y1:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenWidth:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X1:I

    iget-boolean v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mIsWidthScreen:Z

    if-eqz v6, :cond_16e

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y2:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y1:I

    :goto_10c
    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X1:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y1:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mScreenWidth:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5X1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5X1:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5X2:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y1:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5Y1:I

    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5Y1:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5Y2:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_16e
    iget v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y2:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y1:I

    goto :goto_10c
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    const v1, 0x7f02028d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStartX1()F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X1:I

    int-to-float v0, v0

    return v0
.end method

.method public getStartX2()F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X2:I

    int-to-float v0, v0

    return v0
.end method

.method public getStartY1()F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y1:I

    int-to-float v0, v0

    return v0
.end method

.method public getStartY2()F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y2:I

    int-to-float v0, v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image1Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image2Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image3Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image4Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5X1:I

    iget v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5Y1:I

    iget v3, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5X2:I

    iget v4, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->image5Y2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public releaseImageResource()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2e

    iput-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->removeAllViews()V

    return-void

    :cond_2e
    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public startAnimation()V
    .registers 5

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView1:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/guide/GuideViewFifth;->doAlphaAnimation(Landroid/view/View;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startBtnDown()V
    .registers 3

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->invalidate()V

    const-string/jumbo v0, "guide"

    const-string/jumbo v1, "startBtnDown"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startBtnUp()V
    .registers 3

    const/16 v1, 0xff

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/GuideViewFifth;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->invalidate()V

    const-string/jumbo v0, "guide"

    const-string/jumbo v1, "startBtnUp"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

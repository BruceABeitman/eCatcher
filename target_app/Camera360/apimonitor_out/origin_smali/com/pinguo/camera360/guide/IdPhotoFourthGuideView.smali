.class public Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;
.super Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;
.source "IdPhotoFourthGuideView.java"


# static fields
.field private static final INDICATOR_VIEW_BOTTOM_RADIO:F = 0.306f

.field private static final INDICATOR_VIEW_HEIGHT_RADIO:F = 0.017f

.field private static final INDICATOR_VIEW_LEFT_RADIO:F = 0.792f

.field private static final INDICATOR_VIEW_WIDTH_RADIO:F = 0.031f

.field private static final TIPS_VIEW_BOTTOM_RADIO:F = 0.331f

.field private static final TIPS_VIEW_HEIGHT_RADIO:F = 0.206f

.field private static final TIPS_VIEW_LEFT_RADIO:F = 0.634f

.field private static final TIPS_VIEW_WIDTH_RADIO:F = 0.342f


# instance fields
.field private mFourthGuideHead:Landroid/widget/ImageView;

.field private mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

.field private mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mFourthGuideIndicatorView:Landroid/widget/ImageView;

.field private mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

.field private mFourthGuideTipsView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    const/16 v10, 0xc

    const/4 v9, 0x4

    const/4 v8, -0x1

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v6, 0x3f224dd3

    const v7, 0x3ea978d5

    invoke-static {v6, v7}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->getDeviation(FF)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v4

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaf1aa0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e52f1aa

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const v6, 0x3f4ac083

    const v7, 0x3e9cac08

    invoke-static {v6, v7}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->getDeviation(FF)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3cfdf3b6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3c8b4396

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearResource()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "IdPhotoFourthGuideView clearResource"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->restoreGuideView()V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

    :cond_26
    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

    :cond_31
    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

    :cond_3c
    return-void
.end method

.method public initGuideView()V
    .registers 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020432

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

    :cond_1a
    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020433

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

    :cond_2b
    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020275

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

    :cond_3c
    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHead:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public restoreGuideView()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startGuideViewAnimation()V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    if-eqz v3, :cond_28

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;->mFourthGuideTipsView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_28
    return-void
.end method
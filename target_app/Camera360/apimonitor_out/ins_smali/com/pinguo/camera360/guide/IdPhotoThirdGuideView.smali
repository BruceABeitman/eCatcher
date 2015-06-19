.class public Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;
.super Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;
.source "IdPhotoThirdGuideView.java"
.field private static final INDICATOR_VIEW_BOTTOM_RADIO:F = 0.6f
.field private static final INDICATOR_VIEW_HEIGHT_RADIO:F = 0.036f
.field private static final INDICATOR_VIEW_LEFT_RADIO:F = 0.1625f
.field private static final TIPS_VIEW_BOTTOM_RADIO:F = 0.648f
.field private static final TIPS_VIEW_HEIGHT_RADIO:F = 0.22f
.field private static final TIPS_VIEW_LEFT_RADIO:F = 0.106f
.field private static final TIPS_VIEW_WIDTH_RADIO:F = 0.37f
.field private static final _INDICATOR_VIEW_WIDTH_RADIO:F = 0.25f
.field private mThirdGuideHead:Landroid/widget/ImageView;
.field private mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
.field private mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
.field private mThirdGuideIndicatorView:Landroid/widget/ImageView;
.field private mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
.field private mThirdGuideTipsView:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 11
const/16 v8, 0xc
const/4 v7, 0x4
const/4 v6, -0x1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;-><init>(Landroid/content/Context;)V
new-instance v4, Landroid/widget/ImageView;
invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
new-instance v4, Landroid/widget/ImageView;
invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v4
int-to-float v4, v4
const v5, 0x3ebd70a4
mul-float/2addr v4, v5
float-to-int v4, v4
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
int-to-float v5, v5
const v6, 0x3e6147ae
mul-float/2addr v5, v6
float-to-int v5, v5
invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const v4, 0x3f25e354
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
int-to-float v5, v5
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
const v4, 0x3dd91687
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v5
int-to-float v5, v5
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v4, Landroid/widget/ImageView;
invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v4
int-to-float v4, v4
const/high16 v5, 0x3e80
mul-float/2addr v4, v5
float-to-int v4, v4
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
int-to-float v5, v5
const v6, 0x3d1374bc
mul-float/2addr v5, v6
float-to-int v5, v5
invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const v4, 0x3f19999a
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
int-to-float v5, v5
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
const v4, 0x3e266666
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v5
int-to-float v5, v5
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->addView(Landroid/view/View;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->addView(Landroid/view/View;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->addView(Landroid/view/View;)V
return-void
.end method
.method public clearResource()V
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->restoreGuideView()V
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;
const-string/jumbo v1, "IdPhotoThirdGuideView clearResource"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
:cond_26
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
:cond_31
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
:cond_3c
return-void
.end method
.method public initGuideView()V
.registers 4
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020407
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_2b
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020409
invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
:cond_2b
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
if-nez v1, :cond_3c
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020408
invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
:cond_3c
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHead:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideHeadBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public restoreGuideView()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
return-void
.end method
.method public startGuideViewAnimation()V
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
const/high16 v2, 0x3f80
const/high16 v6, 0x3f00
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideIndicatorView:Landroid/widget/ImageView;
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v3, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
if-eqz v3, :cond_28
new-instance v0, Landroid/view/animation/ScaleAnimation;
move v3, v1
move v4, v2
move v7, v5
move v8, v6
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
const-wide/16 v1, 0x258
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;->mThirdGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_28
return-void
.end method
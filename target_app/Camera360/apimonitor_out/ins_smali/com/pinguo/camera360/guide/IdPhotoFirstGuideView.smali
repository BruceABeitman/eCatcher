.class public Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;
.super Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;
.source "IdPhotoFirstGuideView.java"
.field private static final TIPS_VIEW_BOTTOM_RADIO:F = 0.193f
.field private static final TIPS_VIEW_HEIGHT_RADIO:F = 0.199f
.field private static final TIPS_VIEW_LEFT_RADIO:F
.field private mBitmap:Landroid/graphics/Bitmap;
.field private mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
.field  mFirstGuideTipsView:Landroid/widget/ImageView;
.field  mFirstGuideViewHead:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 10
const/4 v7, 0x0
const/4 v6, -0x1
invoke-direct {p0, p1}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;-><init>(Landroid/content/Context;)V
new-instance v4, Landroid/widget/ImageView;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
const/4 v4, 0x0
const v5, 0x3e45a1cb
invoke-static {v4, v5}, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->getDeviation(FF)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v2
new-instance v4, Landroid/widget/ImageView;
invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
int-to-float v4, v4
const v5, 0x3e4bc6a8
mul-float/2addr v4, v5
float-to-int v4, v4
invoke-direct {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v4, 0xc
invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->addView(Landroid/view/View;)V
iget-object v4, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->addView(Landroid/view/View;)V
return-void
.end method
.method public clearResource()V
.registers 4
const/4 v2, 0x0
sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;
const-string/jumbo v1, "IdPhotoFirstGuideView clearResource"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_12
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
:cond_26
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v2, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
:cond_31
return-void
.end method
.method public initGuideView()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_11
:try_start_4
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0204df
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
:cond_11
:try_end_11
.catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_11} :catch_3d
:goto_11
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_22
invoke-virtual {p0}, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0204e0
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_2d
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsView:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideTipsBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
:cond_35
iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;->mFirstGuideViewHead:Landroid/widget/ImageView;
const/16 v1, -0x1ee9
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V
goto :goto_2d
:catch_3d
move-exception v0
goto :goto_11
.end method
.method public restoreGuideView()V
.registers 1
return-void
.end method
.method public startGuideViewAnimation()V
.registers 1
return-void
.end method
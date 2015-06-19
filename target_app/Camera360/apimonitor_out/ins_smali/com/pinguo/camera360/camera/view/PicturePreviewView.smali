.class public Lcom/pinguo/camera360/camera/view/PicturePreviewView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "PicturePreviewView.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/pinguo/share/ui/ShareListView$ShareClickListener;
.field private isActivityFromCamera:Z
.field private mAdjustPictureOri:Landroid/widget/ImageView;
.field private mDiscardBtn:Landroid/widget/Button;
.field private mEffectImageView:Landroid/widget/ImageView;
.field private mEffectPicBitmap:Landroid/graphics/Bitmap;
.field private mEffectReplaceBtn:Landroid/widget/Button;
.field private mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
.field private mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
.field private mIsNeedDoAnimation:Z
.field private mIsPictureAdjustmentEnabled:Z
.field private mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
.field private mOrgPicBitmap:Landroid/graphics/Bitmap;
.field private mOrgPictureTv:Landroid/widget/TextView;
.field private mOriginalImageView:Landroid/widget/ImageView;
.field private mProgressLayer:Landroid/view/View;
.field private mProgressLayerWithBackground:Landroid/view/View;
.field private mSaveBtn:Landroid/widget/Button;
.field private mShareBtn:Landroid/widget/Button;
.field private mShareListView:Lcom/pinguo/share/ui/ShareListView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mDiscardBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPictureTv:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsPictureAdjustmentEnabled:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsNeedDoAnimation:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mDiscardBtn:Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPictureTv:Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsPictureAdjustmentEnabled:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsNeedDoAnimation:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method private isSonyCameraMode()Z
.registers 5
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "7b3b6b04486f12d95690f533f5253a74"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_13
const/4 v1, 0x1
:cond_13
return v1
.end method
.method private updateAdjustPictureIcon()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isClickPictureAdjustIcon()Z
move-result v0
if-nez v0, :cond_14
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsPictureAdjustmentEnabled:Z
if-eqz v0, :cond_14
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isSonyCameraMode()Z
move-result v0
if-eqz v0, :cond_22
:cond_14
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_21
return-void
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_21
.end method
.method private updateViewByShowType()V
.registers 1
return-void
.end method
.method public clearPreviewImage()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_19
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
:cond_19
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1f
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
:cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->clearBitmapData()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideShareList()V
return-void
.end method
.method public enableEffectReplace(Z)V
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isSonyCameraMode()Z
move-result v1
if-eqz v1, :cond_7
:goto_6
return-void
:cond_7
if-eqz p1, :cond_1a
const/4 v0, 0x0
:goto_a
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V
if-eqz p1, :cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
const v2, 0x7f0200a2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
goto :goto_6
:cond_1a
const/16 v0, 0x8
goto :goto_a
:cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
const v2, 0x7f02009f
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
goto :goto_6
.end method
.method public enablePictureAdjustment(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsPictureAdjustmentEnabled:Z
return-void
.end method
.method public enableSharing(Z)V
.registers 5
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isSonyCameraMode()Z
move-result v1
if-eqz v1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-eqz p1, :cond_22
const/4 v0, 0x0
:goto_a
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I
move-result v1
if-eqz v1, :cond_6
if-eqz p1, :cond_25
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
const v2, 0x7f0200a2
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
goto :goto_6
:cond_22
const/16 v0, 0x8
goto :goto_a
:cond_25
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
const v2, 0x7f02009f
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V
goto :goto_6
.end method
.method public getSaveButton()Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
return-object v0
.end method
.method public hideProgressLayer()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1b
return-void
.end method
.method public hideShareList()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->hide()V
:cond_11
return-void
.end method
.method public hideSubPreviewImage()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setVisibility(I)V
:cond_b
return-void
.end method
.method public isProgressLayerShowing()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
const/4 v0, 0x1
goto :goto_11
.end method
.method public isShowingShareList()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->isShowing()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isShowingSubEffect()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getVisibility()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public onClick(Landroid/view/View;)V
.registers 16
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/PicturePreviewView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v8, 0x0
const v7, 0x7f0a03ba
const v6, 0x7f0a03bc
const v5, 0x7f0a03bb
const v2, 0x7f0a00c4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isProgressLayerShowing()Z
move-result v1
if-eqz v1, :cond_27
new-instance v13, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
check-cast v1, Landroid/app/Activity;
const v2, 0x7f08032b
invoke-direct {v13, v1, v2, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
const/16 v1, 0x5dc
invoke-virtual {v13, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
:goto_26
:cond_26
const-string v1, " - Lcom/pinguo/camera360/camera/view/PicturePreviewView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_27
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-ne v1, v2, :cond_65
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v1, :cond_4e
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I
move-result v1
if-nez v1, :cond_4a
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraEffectPreviewLayBtnClick(I)V
:goto_40
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isShowingShareList()Z
move-result v1
if-eqz v1, :cond_52
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideShareList()V
goto :goto_26
:cond_4a
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraPreviewLayBtnClick(I)V
goto :goto_40
:cond_4e
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryPhotoEditLayBtnClick(I)V
goto :goto_40
:cond_52
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v1, :cond_5b
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->onShareBtnClick()V
:cond_5b
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
check-cast v1, Landroid/app/Activity;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showShareList(Landroid/app/Activity;)V
goto :goto_26
:cond_65
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-ne v1, v5, :cond_94
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v1, :cond_26
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v1, :cond_90
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
if-eqz v1, :cond_8c
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I
move-result v1
if-nez v1, :cond_8c
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraEffectPreviewLayBtnClick(I)V
:goto_82
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-interface {v1, v2, v5}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->save(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
goto :goto_26
:cond_8c
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraPreviewLayBtnClick(I)V
goto :goto_82
:cond_90
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryPhotoEditLayBtnClick(I)V
goto :goto_82
:cond_94
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
const v2, 0x7f0a03c1
if-ne v1, v2, :cond_f8
invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setClickPictureAdjustIcon(Z)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->commitAllChange()V
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0802bf
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v12
const-string/jumbo v1, "("
invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
const-string/jumbo v1, ")"
invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
add-int/lit8 v4, v1, 0x1
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;
const v1, 0x666666
const/16 v2, 0xb
move v5, v3
move v6, v4
invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;-><init>(IIIIII)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->getContext()Landroid/content/Context;
move-result-object v5
const v6, 0x7f0802bf
const v7, 0x7f0802c1
const v8, 0x7f0802c2
new-instance v9, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;
invoke-direct {v9, p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;-><init>(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)V
new-instance v10, Lcom/pinguo/camera360/camera/view/PicturePreviewView$2;
invoke-direct {v10, p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$2;-><init>(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)V
move-object v11, v0
invoke-static/range {v5 .. v11}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto/16 :goto_26
:cond_f8
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-ne v1, v7, :cond_114
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v1, :cond_26
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v1, :cond_110
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraEffectPreviewLayBtnClick(I)V
:goto_109
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->replaceEffect()V
goto/16 :goto_26
:cond_110
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryPhotoEditLayBtnClick(I)V
goto :goto_109
:cond_114
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-ne v1, v6, :cond_26
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v1, :cond_26
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v1, :cond_13c
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
if-eqz v1, :cond_138
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I
move-result v1
if-nez v1, :cond_138
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraEffectPreviewLayBtnClick(I)V
:goto_131
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->discard()V
goto/16 :goto_26
:cond_138
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraPreviewLayBtnClick(I)V
goto :goto_131
:cond_13c
invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryPhotoEditLayBtnClick(I)V
goto :goto_131
.end method
.method public onEffectItemClick(ILandroid/view/View;)V
.registers 8
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isProgressLayerShowing()Z
move-result v2
if-eqz v2, :cond_1b
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->getContext()Landroid/content/Context;
move-result-object v2
check-cast v2, Landroid/app/Activity;
const v3, 0x7f08032b
const/4 v4, 0x0
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
const/16 v2, 0x5dc
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
:goto_1a
:cond_1a
return-void
:cond_1b
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v2, :cond_1a
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->deselectAll()V
const/4 v2, 0x1
invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showProgressLayer()V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
iget-object v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-interface {v2, v3}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->changeSubEffect(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v2, :cond_44
iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectChildSelectWithPicturePreview(Ljava/lang/String;)V
goto :goto_1a
:cond_44
iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectSelectPhotoEdit(Ljava/lang/String;)V
goto :goto_1a
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
const v0, 0x7f0a00c4
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a03bb
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a03ba
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a03bc
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mDiscardBtn:Landroid/widget/Button;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mDiscardBtn:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a03c0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a03bf
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
const v0, 0x7f0a018b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
const v0, 0x7f0a018a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
const v0, 0x7f0a03bd
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
const v0, 0x7f0a03c1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0296
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPictureTv:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->updateViewForSony()V
goto/16 :goto_9
.end method
.method public onShareItemClick(I)V
.registers 3
packed-switch p1, :pswitch_data_ae
:pswitch_3
:goto_3
:cond_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_15
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_f
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto :goto_3
:cond_15
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_f
:pswitch_19
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_2a
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_24
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto :goto_3
:cond_2a
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_24
:pswitch_2e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_3f
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_39
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto :goto_3
:cond_3f
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_39
:pswitch_43
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_54
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_4e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto :goto_3
:cond_54
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_4e
:pswitch_58
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_69
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_63
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto :goto_3
:cond_69
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_63
:pswitch_6d
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_7e
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_78
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto :goto_3
:cond_7e
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_78
:pswitch_82
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_94
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_8d
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto/16 :goto_3
:cond_94
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_8d
:pswitch_98
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
if-eqz v0, :cond_3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isActivityFromCamera:Z
if-eqz v0, :cond_aa
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterTakePicture(I)V
:goto_a3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->share(I)V
goto/16 :goto_3
:cond_aa
invoke-static {p1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteSelectAfterPhotoEdit(I)V
goto :goto_a3
:pswitch_data_ae
.packed-switch 0x0
:pswitch_4
:pswitch_19
:pswitch_2e
:pswitch_58
:pswitch_82
:pswitch_98
:pswitch_3
:pswitch_43
:pswitch_6d
.end packed-switch
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 12
const-wide/16 v7, 0xc8
const/high16 v6, 0x3f80
const/4 v5, 0x0
const/4 v4, 0x1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
const v3, 0x7f0a03c0
if-ne v2, v3, :cond_1c
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isSonyCameraMode()Z
move-result v2
if-nez v2, :cond_1c
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
packed-switch v2, :pswitch_data_5e
:cond_1c
:goto_1c
return v4
:pswitch_1d
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_1c
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V
invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPictureTv:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_1c
:pswitch_3b
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_1c
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
if-eqz v2, :cond_1c
new-instance v1, Landroid/view/animation/AlphaAnimation;
invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
invoke-virtual {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V
invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPictureTv:Landroid/widget/TextView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_1c
:pswitch_data_5e
.packed-switch 0x0
:pswitch_1d
:pswitch_3b
.end packed-switch
.end method
.method public setIsNeedDoAnimation(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsNeedDoAnimation:Z
return-void
.end method
.method public setListener(Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
return-void
.end method
.method public setOrientation(IZ)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;->setOrientation(IZ)V
return-void
.end method
.method public setPreviewImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 8
const/high16 v4, 0x3f80
const/4 v3, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->updateAdjustPictureIcon()V
if-eqz p2, :cond_b
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideProgressLayer()V
:cond_b
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->updateViewByShowType()V
if-eqz p2, :cond_12
iput-object p2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
:cond_12
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_40
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
if-eqz v1, :cond_40
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsNeedDoAnimation:Z
if-eqz v1, :cond_30
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x190
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mIsNeedDoAnimation:Z
:cond_30
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
if-eqz p1, :cond_40
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_40
if-nez p2, :cond_5c
if-eqz p1, :cond_5c
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOriginalImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_5c
return-void
.end method
.method public setSubPreviewImage(Ljava/util/List;Ljava/lang/String;)V
.registers 9
new-instance v2, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-direct {v2, p2}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;-><init>(Ljava/lang/String;)V
iput-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->setData(Ljava/util/List;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v2, p0}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->setOnEffectItemClickListener(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getCount()I
move-result v2
if-eqz v2, :cond_53
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getSelectedIndex()I
move-result v2
int-to-double v2, v2
const-wide/high16 v4, 0x3fe0
add-double/2addr v2, v4
double-to-float v2, v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getCount()I
move-result v3
int-to-float v3, v3
div-float v1, v2, v3
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getLinearContainer()Landroid/widget/LinearLayout;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I
move-result v2
int-to-float v2, v2
mul-float/2addr v2, v1
float-to-int v2, v2
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v3
div-int/lit8 v3, v3, 0x2
sub-int v0, v2, v3
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->smoothScrollTo(II)V
:cond_53
return-void
.end method
.method public showProgressLayer()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public showProgressLayerNoBg()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, v1, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayerWithBackground:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mProgressLayer:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1c
return-void
.end method
.method public showShareList(Landroid/app/Activity;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-nez v0, :cond_10
new-instance v0, Lcom/pinguo/share/ui/ShareListView;
invoke-direct {v0, p1}, Lcom/pinguo/share/ui/ShareListView;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0, p0}, Lcom/pinguo/share/ui/ShareListView;->setOnClickListener(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareListView;->initShowItems(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareListView;->show()V
return-void
.end method
.method public showSubPreviewImage()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setVisibility(I)V
:cond_a
return-void
.end method
.method public updateViewForSony()V
.registers 6
const v4, 0x7f02009f
const/16 v3, 0x8
const/4 v2, 0x0
const v1, 0x7f0200a2
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isSonyCameraMode()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mDiscardBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
:goto_28
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->invalidate()V
return-void
:cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectReplaceBtn:Landroid/widget/Button;
invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mShareBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mSaveBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mDiscardBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
goto :goto_28
.end method
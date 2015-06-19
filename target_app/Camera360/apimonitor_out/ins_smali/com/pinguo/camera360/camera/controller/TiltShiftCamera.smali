.class  Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "TiltShiftCamera.java"
.field private static final TAG:Ljava/lang/String;
.field private mModeFunctionBtn:Landroid/widget/ImageView;
.field private mTiltShiftTipsH:Landroid/view/View;
.field private mTiltShiftTipsHText:Landroid/widget/TextView;
.field private mTiltShiftTipsV:Landroid/view/View;
.field private mTiltShiftTipsVText:Landroid/widget/TextView;
.field private mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
return-object v0
.end method
.method private showTips()V
.registers 13
const v11, 0x7f080259
const v10, 0x7f080258
const/4 v9, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTilfShiftDirect()I
move-result v2
if-nez v2, :cond_87
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTiltShitTipsOn()Z
move-result v5
if-eqz v5, :cond_86
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTopMaskRect()Landroid/graphics/Rect;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getBottomMaskRect()Landroid/graphics/Rect;
move-result-object v0
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v4}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getWidth()I
move-result v7
div-int/lit8 v7, v7, 0x2
sub-int/2addr v6, v7
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTopMaskRect()Landroid/graphics/Rect;
move-result-object v7
iget v7, v7, Landroid/graphics/Rect;->bottom:I
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getHeight()I
move-result v8
sub-int/2addr v7, v8
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTop()I
move-result v8
add-int/2addr v7, v8
invoke-static {v5, v6, v7, v9, v9}, Lcom/pinguo/lib/util/Util;->setViewMargin(Landroid/view/View;IIII)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v6
div-int/lit8 v6, v6, 0x2
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getWidth()I
move-result v7
div-int/lit8 v7, v7, 0x2
sub-int/2addr v6, v7
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getBottomMaskRect()Landroid/graphics/Rect;
move-result-object v7
iget v7, v7, Landroid/graphics/Rect;->top:I
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTop()I
move-result v8
add-int/2addr v7, v8
invoke-static {v5, v6, v7, v9, v9}, Lcom/pinguo/lib/util/Util;->setViewMargin(Landroid/view/View;IIII)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsVText:Landroid/widget/TextView;
invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsHText:Landroid/widget/TextView;
invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V
:goto_86
:cond_86
return-void
:cond_87
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTiltShitTipsOn()Z
move-result v5
if-eqz v5, :cond_e8
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getLeftMaskRect()Landroid/graphics/Rect;
move-result-object v1
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getRightMaskRect()Landroid/graphics/Rect;
move-result-object v3
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
iget v6, v1, Landroid/graphics/Rect;->right:I
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getWidth()I
move-result v7
sub-int/2addr v6, v7
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v7
div-int/lit8 v7, v7, 0x2
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getHeight()I
move-result v8
div-int/lit8 v8, v8, 0x2
sub-int/2addr v7, v8
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTop()I
move-result v8
add-int/2addr v7, v8
invoke-static {v5, v6, v7, v9, v9}, Lcom/pinguo/lib/util/Util;->setViewMargin(Landroid/view/View;IIII)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
iget v6, v3, Landroid/graphics/Rect;->left:I
invoke-virtual {v3}, Landroid/graphics/Rect;->height()I
move-result v7
div-int/lit8 v7, v7, 0x2
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getHeight()I
move-result v8
div-int/lit8 v8, v8, 0x2
sub-int/2addr v7, v8
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTop()I
move-result v8
add-int/2addr v7, v8
invoke-static {v5, v6, v7, v9, v9}, Lcom/pinguo/lib/util/Util;->setViewMargin(Landroid/view/View;IIII)V
:cond_e8
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsVText:Landroid/widget/TextView;
invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsHText:Landroid/widget/TextView;
invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V
goto :goto_86
.end method
.method public onEffectTypeChange(Ljava/lang/String;Z)V
.registers 3
return-void
.end method
.method public onModeFunctionClick()V
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->refreshTilfShiftUI()I
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getTilfShiftDirect()I
move-result v0
if-nez v0, :cond_14
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->showTiltShiftHBtn()V
:goto_10
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->showTips()V
return-void
:cond_14
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->showTiltShiftVBtn()V
goto :goto_10
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/TiltShiftCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/TiltShiftCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onShutter()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getEffectAppend()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setEffectAppend(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
return-void
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 4
const/4 v1, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTiltShitTipsOn(Z)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onSingleTapUp(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/camera/controller/TiltShiftCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
const v1, 0x7f0a03eb
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/TiltShiftView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
sget-object v0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "mTiltShiftView width = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " height = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
const v1, 0x7f0a03ec
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
const v1, 0x7f0a03ee
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
const v1, 0x7f0a03ed
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsVText:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
const v1, 0x7f0a03ef
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsHText:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mModeFunctionBtn:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
iget-object v1, p1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->show()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->showTiltShiftHBtn()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->showTips()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
new-instance v1, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera$1;-><init>(Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->updateTiltShiftView()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/TiltShiftCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartPreview()V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->TAG:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, " onStartPreview"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->updateTiltShiftView()V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/TiltShiftCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v1, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->hide()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsH:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftTipsV:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->resetTilfShiftDirect()V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/TiltShiftCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSwitchCamera(Z)V
.registers 2
return-void
.end method
.method public showTiltShiftHBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mModeFunctionBtn:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mModeFunctionBtn:Landroid/widget/ImageView;
const v1, 0x7f020106
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method
.method public showTiltShiftVBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mModeFunctionBtn:Landroid/widget/ImageView;
const v1, 0x7f020107
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method
.method public updateTiltShiftView()V
.registers 9
sget-object v5, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->TAG:Ljava/lang/String;
const-string/jumbo v6, "updateTiltShiftView"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v0
if-nez v0, :cond_13
:goto_12
return-void
:cond_13
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v6
invoke-direct {v2, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v4
invoke-static {v2, v4}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeToBound(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v5
iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v5
iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I
sget-object v5, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "New mTiltShiftView width = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getWidth()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " new height = "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->getHeight()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->mTiltShiftView:Lcom/pinguo/camera360/camera/view/TiltShiftView;
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/camera/view/TiltShiftView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;->showTips()V
goto :goto_12
.end method
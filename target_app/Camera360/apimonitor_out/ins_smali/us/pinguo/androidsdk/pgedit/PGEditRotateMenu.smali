.class public Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.source "PGEditRotateMenu.java"
.field private mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.field private mOldBitmap:Landroid/graphics/Bitmap;
.field private mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
return-void
.end method
.method public getEditRendererMethod()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.registers 7
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
if-nez v2, :cond_1c
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditNormalRendererMethod;
sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I
move-result v2
sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I
move-result v3
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v4
invoke-direct {v0, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditNormalRendererMethod;-><init>(IILandroid/graphics/Bitmap;)V
:goto_1b
return-object v0
:cond_1c
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffectValue()Ljava/lang/String;
move-result-object v2
sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I
move-result v3
sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I
move-result v4
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v5
invoke-direct {v1, v2, v3, v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->getRamib()Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->isMirrorX()Z
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->setMirrorX(Z)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->getRamib()Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->isMirrorY()Z
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->setMirrorY(Z)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->getRamib()Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
move-result-object v2
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->getRotate()I
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRotateRendererMethod;->setRotate(I)V
move-object v0, v1
goto :goto_1b
.end method
.method public getItems()[Ljava/lang/String;
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
goto :goto_5
.end method
.method public getShowButtomSecondMenusList()Ljava/util/List;
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mContext:Landroid/content/Context;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;
move-result-object v2
invoke-static {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createViewsForRotate(Landroid/util/DisplayMetrics;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public hideViewForGotoSecondMenu()V
.registers 6
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I
move-result v1
sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I
move-result v2
sget v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForVertical:I
sget v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForHorizontal:I
invoke-virtual {v0, v1, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->init(IIII)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideViewForGotoSecondMenu()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->hideForAlpha()V
return-void
.end method
.method public isNeedMakePhoto()Z
.registers 3
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->getRamib()Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
move-result-object v0
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->isMirrorX()Z
move-result v1
if-nez v1, :cond_1a
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->isMirrorY()Z
move-result v1
if-nez v1, :cond_1a
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->getRotate()I
move-result v1
if-nez v1, :cond_1a
const/4 v1, 0x0
:goto_19
return v1
:cond_1a
const/4 v1, 0x1
goto :goto_19
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v0
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateLeft:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
if-ne v0, v1, :cond_23
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateLeft()V
:goto_17
:cond_17
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countRotateItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v0
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateRight:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
if-ne v0, v1, :cond_33
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateRight()V
goto :goto_17
:cond_33
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v0
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateX:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
if-ne v0, v1, :cond_43
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateX()V
goto :goto_17
:cond_43
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v0
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->rotateY:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
if-ne v0, v1, :cond_17
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateY()V
goto :goto_17
.end method
.method public refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mOldBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method public showViewForBackFirstMenu()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mRotateView:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mOldBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_16
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;->mOldBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_16
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showViewForBackFirstMenu()V
return-void
.end method
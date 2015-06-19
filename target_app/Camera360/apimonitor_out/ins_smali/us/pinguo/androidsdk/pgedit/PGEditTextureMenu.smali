.class public Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.source "PGEditTextureMenu.java"
.field private mBackgroundImageView:Landroid/widget/ImageView;
.field private mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
return-void
.end method
.method public getItems()[Ljava/lang/String;
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
goto :goto_5
.end method
.method public getShowButtomSecondMenusList()Ljava/util/List;
.registers 4
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;
move-result-object v2
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithFrameRotateAndShowLastViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->onClick(Landroid/view/View;)V
return-object v0
.end method
.method public hideViewForGotoSecondMenu()V
.registers 4
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideViewForGotoSecondMenu()V
new-instance v0, Landroid/widget/ImageView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mBackgroundImageView:Landroid/widget/ImageView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mBackgroundImageView:Landroid/widget/ImageView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mBackgroundImageView:Landroid/widget/ImageView;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mBackgroundImageView:Landroid/widget/ImageView;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
if-nez v2, :cond_2b
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->getEffectValue()Ljava/lang/String;
move-result-object v3
sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I
move-result v4
sget-object v5, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I
move-result v5
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;
move-result-object v6
invoke-direct {v2, v3, v4, v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V
iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
:cond_2b
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->getTexturePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->setTexturePath(Ljava/lang/String;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->getTextureDegree()I
move-result v2
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->setTextureDegree(I)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->setContext(Landroid/content/Context;)V
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->selectedView(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v2
check-cast v2, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countTextureItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mBackgroundImageView:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
return-void
.end method
.method public selectedView(Landroid/view/View;)V
.registers 10
const/4 v7, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mLastSelectedView:Landroid/view/View;
if-ne v4, p1, :cond_2f
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->rotateTextureDegree()V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
const-string/jumbo v5, "pg_sdk_edit_rotate_icon"
invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v4
invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateRightNoWithAnimation()V
:goto_20
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
check-cast v3, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->getTextureDegree()I
move-result v4
invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditTextureRendererMethod;->setTextureDegree(I)V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->changeEffect()V
return-void
:cond_2f
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mLastSelectedView:Landroid/view/View;
if-eqz v4, :cond_4c
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mLastSelectedView:Landroid/view/View;
invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mLastSelectedView:Landroid/view/View;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
const-string/jumbo v6, "pg_sdk_edit_rotate_icon"
invoke-static {v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
:cond_4c
const/4 v4, 0x1
invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
const-string/jumbo v5, "pg_sdk_edit_rotate_icon"
invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I
move-result v4
invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v4
if-nez v4, :cond_7b
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mContext:Landroid/content/Context;
const-string/jumbo v6, "pg_sdk_edit_texture_rotate"
invoke-static {v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_7b
invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mLastSelectedView:Landroid/view/View;
goto :goto_20
.end method
.method public showViewForBackFirstMenu()V
.registers 3
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->showViewForBackFirstMenu()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;->mBackgroundImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
return-void
.end method
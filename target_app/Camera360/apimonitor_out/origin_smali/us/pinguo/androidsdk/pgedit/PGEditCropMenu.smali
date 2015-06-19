.class public Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenu;
.source "PGEditCropMenu.java"


# instance fields
.field private mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

.field private mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Lus/pinguo/androidsdk/pgedit/PGEditSDK;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V

    return-void
.end method


# virtual methods
.method public getEditRendererMethod()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
    .registers 7

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffectValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v1, 0x0

    :goto_26
    return-object v1

    :cond_27
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditCropRendererMethod;->setPGRect(FFFF)V

    goto :goto_26
.end method

.method public getItems()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_5
.end method

.method public getShowButtomSecondMenusList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->createWithIconNameViews(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->onClick(Landroid/view/View;)V

    return-object v0
.end method

.method public hideButtomFirstMenuAnimation()V
    .registers 7

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sget-object v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->setWidthHeight(IIIILandroid/util/DisplayMetrics;)V

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomFirstMenuAnimation()V

    return-void
.end method

.method public hideViewForGotoSecondMenu()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->selectedView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countCropItemClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;)V

    return-void
.end method

.method public refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public selectedView(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    iput-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    if-ne v3, p1, :cond_7e

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isNeedFlip()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->flip()V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pg_sdk_edit_icon"

    invoke-static {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pg_sdk_edit_name"

    invoke-static {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getFlipIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getFlipName()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_55
    :goto_55
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->cropFree:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v3, v4, :cond_c9

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCropFree()V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_55

    :cond_7e
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isNeedFlip()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_icon"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_name"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c2
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mLastSelectedView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_55

    :cond_c9
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop11:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v3, v4, :cond_d9

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop11()V

    goto :goto_6a

    :cond_d9
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop23:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v3, v4, :cond_ff

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop32()V

    goto/16 :goto_6a

    :cond_f8
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop23()V

    goto/16 :goto_6a

    :cond_ff
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop34:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v3, v4, :cond_125

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_11e

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_11e

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop43()V

    goto/16 :goto_6a

    :cond_11e
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop34()V

    goto/16 :goto_6a

    :cond_125
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v3

    sget-object v4, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->crop916:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v3, v4, :cond_6a

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditCropMenusBean;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_144

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop169()V

    goto/16 :goto_6a

    :cond_144
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->showCrop916()V

    goto/16 :goto_6a
.end method

.method public showViewForBackFirstMenu()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;->hideForAlpha()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;->mCropView:Lus/pinguo/androidsdk/pgedit/PGEditCropView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

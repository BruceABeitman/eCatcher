.class public Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "EffectRenderGridAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/pinguo/camera360/lib/ui/Rotatable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mParentEffect:Ljava/lang/String;

.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mParentEffect:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPreferredEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    const/4 v1, 0x0

    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iput v1, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    goto :goto_23

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public getSelectEffectIndex()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const-string/jumbo v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "position:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1c

    sget-boolean v6, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB_MR2:Z

    if-nez v6, :cond_2f

    :cond_1c
    iget-object v6, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f030075

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2f
    const v6, 0x7f0a0292

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v6, 0x7f0a0295

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;

    move-result-object v0

    const v6, 0x7f020251

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    iget-object v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f0a0291

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    if-ne v6, p1, :cond_82

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v6, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_81
    return-object p2

    :cond_82
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v6, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_81
.end method

.method public setOrientation(IZ)V
    .registers 3

    iput p1, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mOrientation:I

    return-void
.end method

.method public setSelectEffect(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    return-void
.end method

.method public setSelectEffect(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mParentEffect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mParentEffect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPreferredEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iput v1, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    goto :goto_1d

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public setViewBackgroud(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 8

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    const v2, 0x7f0a0295

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0291

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mSelected:I

    if-ne v2, p1, :cond_2c

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

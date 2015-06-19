.class public Lcom/pinguo/camera360/camera/controller/EffectCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "EffectCamera.java"
.field private static final BIG_HEAD_EFFECT_KEY:Ljava/lang/String; = "C360_BigHead"
.field private static final TAG:Ljava/lang/String;
.field private mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
.field private mIsNeedInitPreviewFrame:Z
.field private previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/controller/EffectCamera;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
return-void
.end method
.method private showBigHeadIfNeeded()V
.registers 6
const/4 v4, -0x1
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v0
if-eqz v0, :cond_4f
iget-object v2, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
const-string/jumbo v3, "C360_BigHead"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4f
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
if-nez v2, :cond_49
new-instance v2, Lcom/pinguo/camera360/camera/view/BigHeadView;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Lcom/pinguo/camera360/camera/view/BigHeadView;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/view/BigHeadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/BigHeadView;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->addView(Landroid/view/View;)V
:cond_49
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/BigHeadView;->enableDatou()V
:cond_4e
:goto_4e
return-void
:cond_4f
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
if-eqz v2, :cond_4e
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/BigHeadView;->disableDatou()V
goto :goto_4e
.end method
.method private updateSubEffectSelection()V
.registers 13
const/4 v11, 0x1
const/4 v10, 0x0
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v8
invoke-virtual {v2, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v5
if-nez v5, :cond_3b
sget-object v8, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v2, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v7
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v8
if-lez v8, :cond_3b
invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-virtual {v2, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffects(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v8
if-lez v8, :cond_3b
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v8, v8, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v9, v8}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setSubEffect(Ljava/lang/String;)V
:cond_3b
if-eqz v5, :cond_b2
iget-object v8, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
sget-object v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v9, v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_b3
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v8
invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v8
const v9, 0x7f080338
invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v8
:goto_5c
iput-object v8, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
iget-object v9, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V
iget-object v8, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v2, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v6
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v8
if-le v8, v11, :cond_c3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z
move-result v8
if-eqz v8, :cond_c3
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v8, v11}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showDownEffectIndicatorIcon()V
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v8
new-array v1, v8, [Ljava/lang/String;
const/4 v4, 0x0
:goto_92
array-length v8, v1
if-lt v4, v8, :cond_b6
new-instance v0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getContext()Landroid/content/Context;
move-result-object v8
iget-object v9, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-direct {v0, v8, v9}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v8
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->addAll(Ljava/util/Collection;)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v8, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;)V
:goto_b2
:cond_b2
return-void
:cond_b3
iget-object v8, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
goto :goto_5c
:cond_b6
invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v8, v8, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
aput-object v8, v1, v4
add-int/lit8 v4, v4, 0x1
goto :goto_92
:cond_c3
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v8, v10}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
goto :goto_b2
.end method
.method public onEffectTypeChange(Ljava/lang/String;Z)V
.registers 13
const/4 v9, 0x1
const/4 v8, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
check-cast v6, Lcom/pinguo/camera360/camera/model/EffectCameraModel;
invoke-virtual {v6, p1}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;->changeParentEffect(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v5
sget-object v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v6, v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_a1
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f080338
invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
:goto_2e
iput-object v6, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
iget-object v7, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-virtual {v5}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->getRequirementType()Lcom/pinguo/camera360/effect/model/entity/RequirementType;
move-result-object v7
iget-object v7, v7, Lcom/pinguo/camera360/effect/model/entity/RequirementType;->frame:Ljava/lang/String;
invoke-virtual {v6, p1, v7}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onEffectTypeChangeEvent(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
new-array v1, v6, [Ljava/lang/String;
const/4 v4, 0x0
:goto_4f
array-length v6, v1
if-lt v4, v6, :cond_a4
array-length v6, v1
if-le v6, v9, :cond_c0
sget-object v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v6, v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_c0
new-instance v0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getContext()Landroid/content/Context;
move-result-object v6
iget-object v7, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-direct {v0, v6, v7}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v6
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->addAll(Ljava/util/Collection;)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6, v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderRealEnable()Z
move-result v6
if-eqz v6, :cond_b1
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6, v9}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showDownEffectIndicatorIcon()V
if-eqz p2, :cond_9d
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animShowChildEffectView()V
:goto_9d
:cond_9d
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectCamera;->showBigHeadIfNeeded()V
return-void
:cond_a1
iget-object v6, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
goto :goto_2e
:cond_a4
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v6, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
aput-object v6, v1, v4
add-int/lit8 v4, v4, 0x1
goto :goto_4f
:cond_b1
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6, v8}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
goto :goto_9d
:cond_c0
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6, v8}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V
goto :goto_9d
.end method
.method public onEffectTypeUnInstall(Ljava/lang/String;)V
.registers 9
const/4 v6, 0x0
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
if-nez v2, :cond_3f
sget-object v4, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_3f
invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffects(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_3f
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v4, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v5, v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setSubEffect(Ljava/lang/String;)V
iget-object v4, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {p0, v4, v6}, Lcom/pinguo/camera360/camera/controller/EffectCamera;->onEffectTypeChange(Ljava/lang/String;Z)V
:cond_3f
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;)V
.registers 4
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->getVisibility()I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V
goto :goto_12
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;)V
.registers 3
invoke-virtual {p1}, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;->isNew()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->showModeFunctionNewPoint()V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->hideModeFunctionNewPoint()V
goto :goto_d
.end method
.method public onModeFunctionClick()V
.registers 10
const/4 v4, 0x1
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateEachDay()V
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v5
invoke-virtual {v5, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v2
const-string/jumbo v3, ""
if-eqz v2, :cond_20
iget-object v3, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
:cond_20
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z
move-result v0
if-eqz v0, :cond_3c
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v6, v6, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->isShown()Z
move-result v6
if-eqz v6, :cond_39
const/4 v4, 0x0
:cond_39
invoke-virtual {v5, v4}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V
:cond_3c
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v7, v7, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
iget-object v8, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v8, v8, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v8
invoke-direct {v5, v6, v3, v7, v8}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v4, v4, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EffectCamera; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPause()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setEffectForEffectMode(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EffectCamera; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
.registers 11
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3, p1, p4, p5}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V
invoke-static {}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame()I
move-result v2
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraFrameUse(I)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicFrame(I)V
new-instance v0, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->needShowPreview()Z
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->canReplaceEffectAfterTaken()Z
move-result v4
invoke-direct {v0, v1, p1, v3, v4}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[BZZ)V
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/pinguo/lib/eventbus/BaseEvent;->setFromTag(Ljava/lang/String;)V
sget-object v3, Lcom/pinguo/camera360/camera/controller/EffectCamera;->TAG:Ljava/lang/String;
const-string/jumbo v4, "start ShowPicturePreviewEvent"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EffectCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectCamera;->updateSubEffectSelection()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
if-eqz v1, :cond_30
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->loadPreviewRationFun()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setPreviewFrame(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->diaplayPreviewFrame(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setLiveEffectPreviewFrame(I)V
:cond_30
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EffectCamera; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onShutter()V
.registers 1
return-void
.end method
.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EffectCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectCamera;->updateSubEffectSelection()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v1
const v2, 0x7f0200fa
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isNewFlagInShop()Z
move-result v1
if-eqz v1, :cond_5c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->showModeFunctionNewPoint()V
:goto_31
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectCamera;->showBigHeadIfNeeded()V
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
if-eqz v1, :cond_5b
iput-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->loadPreviewRationFun()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setPreviewFrame(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->diaplayPreviewFrame(Z)V
invoke-virtual {p2, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setLiveEffectPreviewFrame(I)V
:cond_5b
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EffectCamera; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->hideModeFunctionNewPoint()V
goto :goto_31
.end method
.method public onStop()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EffectCamera; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mIsNeedInitPreviewFrame:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
invoke-direct {v1, v2, v2}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mBigHeadView:Lcom/pinguo/camera360/camera/view/BigHeadView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/BigHeadView;->disableDatou()V
:cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->hideModeFunctionNewPoint()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->dismissPreviewRationFun()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->removeView(Landroid/view/View;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;
:cond_50
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->diaplayPreviewFrame(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectCamera;->pgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setLiveEffectPreviewFrame(I)V
invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EffectCamera; onStop"
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
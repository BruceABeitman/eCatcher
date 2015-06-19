.class public Lcom/pinguo/camera360/camera/view/EffectSelectView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "EffectSelectView.java"
.field public static final ADD_MORE_EFFECT:Ljava/lang/String; = "\u6dfb\u52a0\u66f4\u591a"
.field private mAddMoreTipsEnabled:Z
.field private mBtnCancel:Landroid/widget/TextView;
.field private mCancelClickListener:Landroid/view/View$OnClickListener;
.field private mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
.field private mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.field private mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
.field private mTitleView:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mAddMoreTipsEnabled:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mAddMoreTipsEnabled:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mBtnCancel:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mCancelClickListener:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
return-object v0
.end method
.method public enableAddMoreTips(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mAddMoreTipsEnabled:Z
return-void
.end method
.method public getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
return-object v0
.end method
.method public hide(Z)V
.registers 3
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;->onHideEffectSelectView(Z)V
:cond_e
return-void
.end method
.method public hideNewPoint()V
.registers 3
const-string/jumbo v1, "NEW_POINT_TAG"
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public hideTitle()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mTitleView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, -0x4deeeded
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setBackgroundColor(I)V
return-void
.end method
.method public hideWithAnimation()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getVisibility()I
move-result v1
if-nez v1, :cond_16
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
if-eqz v1, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z
move-result v1
if-eqz v1, :cond_17
:goto_16
:cond_16
return-void
:cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->isEditMode()Z
move-result v1
if-eqz v1, :cond_2d
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->stopEditMode()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->updateOriData()V
:cond_2d
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z
move-result v1
if-eqz v1, :cond_4e
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f04000d
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/view/EffectSelectView$4;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView$4;-><init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_16
:cond_4e
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hide(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setVisibility(I)V
goto :goto_16
.end method
.method public hideWithAnimation(Landroid/view/animation/Animation$AnimationListener;Z)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getVisibility()I
move-result v1
if-nez v1, :cond_16
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
if-eqz v1, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z
move-result v1
if-eqz v1, :cond_17
:cond_16
:goto_16
return-void
:cond_17
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z
move-result v1
if-eqz v1, :cond_38
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f04000d
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;
invoke-direct {v1, p0, p2, p1}, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;-><init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;ZLandroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_16
:cond_38
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hide(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setVisibility(I)V
if-eqz p1, :cond_16
const/4 v1, 0x0
invoke-interface {p1, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
goto :goto_16
.end method
.method public isShowing()Z
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getVisibility()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method protected onFinishInflate()V
.registers 4
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V
const v1, 0x7f0a02a4
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
new-instance v2, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;-><init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setOnGridItemClickListener(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;)V
const v1, 0x7f0a0061
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mBtnCancel:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mBtnCancel:Landroid/widget/TextView;
new-instance v2, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;-><init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;)V
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v1, 0x7f0a02a2
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mTitleView:Landroid/view/View;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAddMoreEffectTipsVisibility()Z
move-result v1
if-eqz v1, :cond_4f
const v1, 0x7f0a02a5
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;
invoke-direct {v1, p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;-><init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_4f
return-void
.end method
.method public setAdapter(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setAdapter(Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;)V
return-void
.end method
.method public setCancelListener(Landroid/view/View$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mCancelClickListener:Landroid/view/View$OnClickListener;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mBtnCancel:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public setListener(Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
return-void
.end method
.method public show()V
.registers 13
const v11, 0x7f0a02a5
const/4 v9, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAnimationEnable()Z
move-result v8
if-eqz v8, :cond_1c
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getContext()Landroid/content/Context;
move-result-object v8
const v10, 0x7f04000c
invoke-static {v8, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1c
invoke-virtual {p0, v9}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setVisibility(I)V
iget-object v8, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAddMoreEffectTipsVisibility()Z
move-result v8
if-eqz v8, :cond_9f
iget-boolean v8, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mAddMoreTipsEnabled:Z
if-eqz v8, :cond_9f
iget-object v8, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
move-result v8
add-int/lit8 v3, v8, -0x2
invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {p0, v11}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v8
const/4 v10, 0x5
invoke-static {v10}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v10
sub-int v10, v8, v10
iget-object v8, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mTitleView:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getVisibility()I
move-result v8
if-nez v8, :cond_9d
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getResources()Landroid/content/res/Resources;
move-result-object v8
const v11, 0x7f0b006c
invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v8
:goto_66
add-int v7, v10, v8
invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getWidth()I
move-result v8
div-int/lit8 v8, v8, 0x2
invoke-virtual {v4}, Landroid/view/View;->getWidth()I
move-result v9
div-int/lit8 v9, v9, 0x2
add-int v5, v8, v9
iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
invoke-virtual {v6, v5, v7, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
const v8, 0x7f0a0212
invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
invoke-virtual {v8}, Landroid/view/View;->getHeight()I
move-result v8
iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
:goto_93
iget-object v8, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
if-eqz v8, :cond_9c
iget-object v8, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
invoke-interface {v8}, Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;->onShowEffectSelectView()V
:cond_9c
return-void
:cond_9d
move v8, v9
goto :goto_66
:cond_9f
invoke-virtual {p0, v11}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v2
const/16 v8, 0x8
invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V
goto :goto_93
.end method
.method public showNewPoint()V
.registers 3
const-string/jumbo v1, "NEW_POINT_TAG"
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public showTitle()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView;->mTitleView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, -0x6d8d7d7
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setBackgroundColor(I)V
return-void
.end method
.class public Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "EffectSelectFragment.java"
.implements Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
.field public static final ARGUMENTS_NAME_FROM_ACTIVITY:Ljava/lang/String; = "arguments_name_from_activity"
.field private static final TAG:Ljava/lang/String; = "EffectSelectFragment"
.field private mBottomMarginView:Landroid/view/View;
.field private mCancelOnClickListener:Landroid/view/View$OnClickListener;
.field private mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
.field private mFilterArray:[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;
.field private mFromActivityTag:Ljava/lang/String;
.field private mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.field private mIsNeedShowModeView:Z
.field private mShowEffectEvent:Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
.field private mTag:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsNeedShowModeView:Z
return-void
.end method
.method private initGridEffectAdapter()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->createGridEffectAdapter(Landroid/content/Context;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->setSupportedEffect()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setAdapter(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
:cond_1a
return-void
.end method
.method private setSupportedEffect()V
.registers 8
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->clear()V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mFilterArray:[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)Ljava/util/List;
move-result-object v3
new-instance v0, Ljava/util/ArrayList;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
const-string/jumbo v4, "EffectSelectFragment"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "setSupportedEffect size = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
:goto_35
if-lt v1, v2, :cond_45
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {v4, v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->addAll(Ljava/util/Collection;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
const-string/jumbo v5, "\u6dfb\u52a0\u66f4\u591a"
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->add(Ljava/lang/Object;)V
return-void
:cond_45
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v4, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_35
.end method
.method public addEffect()V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
const-class v2, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_48
const-class v1, Lcom/pinguo/camera360/camera/controller/EffectCamera;
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mTag:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_34
const/4 v1, 0x0
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectEnterStore(I)V
const/4 v0, 0x0
:cond_2c
:goto_2c
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startEffectStroeActivity(Landroid/content/Context;I)V
return-void
:cond_34
const-class v1, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mTag:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
const/4 v1, 0x1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectEnterStore(I)V
const/4 v0, 0x1
goto :goto_2c
:cond_48
const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
const/4 v1, 0x2
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectEnterStore(I)V
const/4 v0, 0x2
goto :goto_2c
.end method
.method public couldSelectEffect(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method protected createGridEffectAdapter(Landroid/content/Context;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.registers 4
new-instance v0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;)V
return-object v0
.end method
.method protected getEffectSelectView()Lcom/pinguo/camera360/camera/view/EffectSelectView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
return-object v0
.end method
.method public handleHardKeyEvent(I)Z
.registers 4
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsPausing:Z
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getVisibility()I
move-result v1
if-nez v1, :cond_5
const/4 v1, 0x4
if-ne p1, v1, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->isEditMode()Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->stopEditMode()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->updateOriData()V
:goto_2b
const/4 v0, 0x1
goto :goto_5
:cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideWithAnimation()V
goto :goto_2b
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EffectSelectFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
const-string/jumbo v0, "EffectSelectFragment"
const-string/jumbo v1, "onCreate"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v1, "arguments_name_from_activity"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mFromActivityTag:Ljava/lang/String;
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EffectSelectFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const-string/jumbo v0, "EffectSelectFragment"
const-string/jumbo v1, "onCreateView"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0a02d7
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mBottomMarginView:Landroid/view/View;
const v0, 0x7f030079
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/EffectSelectView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setListener(Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mCancelOnClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->setCancelListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->initGridEffectAdapter()V
const-string/jumbo v0, "EffectSelectFragment"
const-string/jumbo v1, "onCreateView end"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
return-object v0
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;)V
.registers 4
const-class v0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onEvent:ChangeParentEffectEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;->getEffect()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->selectEffect(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hide(Z)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;)V
.registers 4
const-string/jumbo v0, "EffectSelectFragment"
const-string/jumbo v1, "onEvent HideEffectSelectEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->isShowing()Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->needAnimation()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideWithAnimation()V
:cond_20
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->isFromCancel()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hide(Z)V
goto :goto_20
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;)V
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->setSupportedEffect()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->notifyDataSetChanged()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;)V
.registers 3
invoke-virtual {p1}, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;->isNew()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->showNewPoint()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideNewPoint()V
goto :goto_b
.end method
.method public onHideEffectSelectView(Z)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;
const/16 v1, 0x8
invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;-><init>(IZ)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/EffectSelectFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
const-string/jumbo v0, "EffectSelectFragment"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "mIsNeedShowModeView = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsNeedShowModeView:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "mShowEffectEvent = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mShowEffectEvent:Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsNeedShowModeView:Z
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mShowEffectEvent:Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
if-eqz v0, :cond_3b
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsNeedShowModeView:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mShowEffectEvent:Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->showEffectFragment(Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mShowEffectEvent:Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
:cond_3b
const-string v1, " - Lcom/pinguo/camera360/camera/controller/EffectSelectFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onShowEffectSelectView()V
.registers 3
const/4 v1, 0x0
new-instance v0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;
invoke-direct {v0, v1, v1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;-><init>(IZ)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public selectEffect(Ljava/lang/String;)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->clearEffectTypeNewFlag(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->notifyDataSetChanged()V
new-instance v1, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mFromActivityTag:Ljava/lang/String;
invoke-direct {v1, p1, v2}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->setFromTag(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mTag:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->setTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public setBottomMarginView(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mBottomMarginView:Landroid/view/View;
return-void
.end method
.method public setCancelListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mCancelOnClickListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setFilterArray([Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mFilterArray:[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;
return-void
.end method
.method public showEffectFragment(Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;)V
.registers 6
const-string/jumbo v1, "EffectSelectFragment"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "mIsPausing = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsPausing:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsPausing:Z
if-eqz v1, :cond_22
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mIsNeedShowModeView:Z
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mShowEffectEvent:Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
:goto_21
return-void
:cond_22
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
if-eqz v1, :cond_83
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->isTarget(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_83
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->initGridEffectAdapter()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->isShowing()Z
move-result v1
if-eqz v1, :cond_49
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideWithAnimation()V
goto :goto_21
:cond_49
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->getTag()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mTag:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->getLastEffect()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->setCurrentEffect(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->getParent()Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_8d
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mBottomMarginView:Landroid/view/View;
if-eqz v1, :cond_75
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mBottomMarginView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b001a
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_75
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideTitle()V
:goto_7a
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getView()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->show()V
:cond_83
const-string/jumbo v1, "EffectSelectFragment"
const-string/jumbo v2, "ShowEffectSelectEvent end"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_21
:cond_8d
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mBottomMarginView:Landroid/view/View;
if-eqz v1, :cond_9a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mBottomMarginView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
const/4 v2, 0x0
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_9a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->mEffectSelectView:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->showTitle()V
goto :goto_7a
.end method
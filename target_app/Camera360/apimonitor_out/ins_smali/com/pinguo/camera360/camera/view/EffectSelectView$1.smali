.class  Lcom/pinguo/camera360/camera/view/EffectSelectView$1;
.super Ljava/lang/Object;
.source "EffectSelectView.java"
.implements Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/DragDropGrid$OnGridItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;)Lcom/pinguo/camera360/camera/view/EffectSelectView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
return-object v0
.end method
.method public onGridItemClick(IIILandroid/view/View;)V
.registers 13
const/4 v7, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->columnCount()I
move-result v5
mul-int/2addr v5, p2
add-int v4, v5, p3
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v5
invoke-virtual {v5, v4}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
move-result-object v5
if-eqz v5, :cond_2f
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
move-result-object v5
invoke-interface {v5, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;->couldSelectEffect(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2f
:goto_2e
:cond_2e
return-void
:cond_2f
const-string/jumbo v5, "\u6dfb\u52a0\u66f4\u591a"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_49
invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
const/4 v3, 0x0
:goto_3f
invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
move-result v5
if-lt v3, v5, :cond_a5
const/4 v5, 0x1
invoke-virtual {p4, v5}, Landroid/view/View;->setSelected(Z)V
:cond_49
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffectAdapter:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$0(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getCount()I
move-result v5
add-int/lit8 v5, v5, -0x1
if-ne v5, v4, :cond_af
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
move-result-object v5
if-eqz v5, :cond_2e
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mListener:Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
invoke-static {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;
move-result-object v5
invoke-interface {v5}, Lcom/pinguo/camera360/camera/view/EffectSelectView$IEffectSelectView;->addEffect()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getAddMoreEffectTipsVisibility()Z
move-result v5
if-eqz v5, :cond_87
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
const v6, 0x7f0a02a5
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->findViewById(I)Landroid/view/View;
move-result-object v2
const/16 v5, 0x8
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAddMoreEffectTipsVisibility(Z)V
:cond_87
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isNewFlagInShop()Z
move-result v5
if-eqz v5, :cond_2e
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v5
new-instance v6, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;
invoke-direct {v6, v7}, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;-><init>(Z)V
invoke-virtual {v5, v6}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v5
invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNewFlagInShop(Z)V
goto :goto_2e
:cond_a5
invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V
add-int/lit8 v3, v3, 0x1
goto :goto_3f
:cond_af
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
new-instance v6, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;
invoke-direct {v6, p0, v4, p4}, Lcom/pinguo/camera360/camera/view/EffectSelectView$1$1;-><init>(Lcom/pinguo/camera360/camera/view/EffectSelectView$1;ILandroid/view/View;)V
invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideWithAnimation(Landroid/view/animation/Animation$AnimationListener;Z)V
goto/16 :goto_2e
.end method
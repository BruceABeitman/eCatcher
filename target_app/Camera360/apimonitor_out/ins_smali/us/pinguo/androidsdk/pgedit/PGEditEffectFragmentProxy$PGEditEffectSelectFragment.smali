.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;
.super Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;
.source "PGEditEffectFragmentProxy.java"
.field private mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;-><init>()V
return-void
.end method
.method public couldSelectEffect(Ljava/lang/String;)Z
.registers 9
const/16 v6, 0xbb8
const/4 v3, 0x0
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_5b
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_5b
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/Effect;
if-eqz v2, :cond_3a
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveCpuCmd()Z
move-result v4
if-eqz v4, :cond_3a
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z
move-result v4
if-nez v4, :cond_3a
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const-string/jumbo v5, "effect_support_edit_disable"
invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v4
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v4, v5, v6, v3}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V
:goto_39
return v3
:cond_3a
if-eqz v2, :cond_5b
iget-object v4, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
sget-object v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v5, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5b
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const-string/jumbo v5, "effect_support_edit_disable"
invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v4
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v4, v5, v6, v3}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V
goto :goto_39
:cond_5b
const/4 v3, 0x1
goto :goto_39
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getEffectSelectView()Lcom/pinguo/camera360/camera/view/EffectSelectView;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->enableAddMoreTips(Z)V
return-object v0
.end method
.method public selectEffect(Ljava/lang/String;)V
.registers 10
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->selectEffect(Ljava/lang/String;)V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v6
#calls: Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->saveSelectedEffect(Ljava/lang/String;Landroid/content/Context;)V
invoke-static {p1, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->access$0(Ljava/lang/String;Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v3
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_1f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_2b
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
invoke-interface {v6, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->onSelect(Ljava/util/List;)V
return-void
:cond_2b
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/effect/model/entity/Effect;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v7
invoke-direct {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;-><init>(Landroid/content/Context;)V
iget-object v7, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setIcon(Ljava/lang/String;)V
iget-object v7, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setName(Ljava/lang/String;)V
iget-object v7, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setKey(Ljava/lang/String;)V
invoke-static {v2}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getGpuCmdForEdit(Lcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setEffectValue(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getTexture()Lcom/pinguo/camera360/effect/model/entity/Texture;
move-result-object v5
if-eqz v5, :cond_66
iget v7, v5, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I
invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setTextureIndex(I)V
invoke-static {v5}, Lcom/pinguo/camera360/photoedit/TextureManager;->getTexturePath(Lcom/pinguo/camera360/effect/model/entity/Texture;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->setTexturePath(Ljava/lang/String;)V
:cond_66
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1f
.end method
.method public setPGEditEffectFragmentActionListener(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
return-void
.end method
.class public Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.super Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;
.source "DndEffectSelectAdapter.java"
.field public static final NEW_POINT_TAG:Ljava/lang/String; = "NEW_POINT_TAG"
.field private mContext:Landroid/content/Context;
.field private mCurrentEffect:Ljava/lang/String;
.field private mDeleteList:Ljava/util/List;
.field private mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
.field  mLayoutInflater:Landroid/view/LayoutInflater;
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mDeleteList:Ljava/util/List;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mDeleteList:Ljava/util/List;
return-object v0
.end method
.method public columnCount()I
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0c0005
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
const/4 v1, 0x3
if-ge v0, v1, :cond_11
const/4 v0, 0x3
:cond_11
return v0
.end method
.method public couldItemDelete(I)Z
.registers 5
const/4 v1, 0x0
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-eq p1, v0, :cond_23
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_23
const/4 v0, 0x1
goto :goto_8
:cond_23
move v0, v1
goto :goto_8
.end method
.method public couldItemMove(I)Z
.registers 5
const/4 v1, 0x0
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-eq p1, v0, :cond_23
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v2, v2, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_23
const/4 v0, 0x1
goto :goto_8
:cond_23
move v0, v1
goto :goto_8
.end method
.method public getPageWidth(I)I
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
return v0
.end method
.method public isEnable(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public onGridStopEditMode()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->updateOriData()V
return-void
.end method
.method public rowCount()I
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getCount()I
move-result v0
add-int/lit8 v1, v0, -0x1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->columnCount()I
move-result v2
div-int/2addr v1, v2
add-int/lit8 v1, v1, 0x1
return v1
.end method
.method public setCurrentEffect(Ljava/lang/String;)V
.registers 7
const/4 v4, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mGridView:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
invoke-virtual {v2, v4}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const/4 v1, 0x0
:goto_a
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-lt v1, v2, :cond_15
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mCurrentEffect:Ljava/lang/String;
return-void
:cond_15
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2c
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V
:goto_29
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_2c
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V
goto :goto_29
.end method
.method public updateOriData()V
.registers 7
const/4 v1, 0x0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
:goto_7
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-lt v2, v4, :cond_45
if-nez v1, :cond_20
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v5, v5, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_20
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mDeleteList:Ljava/util/List;
invoke-virtual {v4, v3, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->updateEffectTypeList(Ljava/util/List;Ljava/util/List;)Z
move-result v4
if-eqz v4, :cond_33
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->loadProductList()Ljava/util/List;
:cond_33
iget-object v4, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mDeleteList:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->clear()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
new-instance v5, Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;
invoke-direct {v5}, Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;-><init>()V
invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
:cond_45
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v4, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_56
const/4 v1, 0x1
:cond_56
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_7
.end method
.method public view(II)Landroid/view/View;
.registers 17
move/from16 v7, p2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getCount()I
move-result v11
add-int/lit8 v11, v11, -0x1
if-ne v7, v11, :cond_3f
iget-object v11, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
const v12, 0x7f030060
const/4 v13, 0x0
invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v11, 0x7f0a0213
invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
const-string/jumbo v11, "NEW_POINT_TAG"
invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isNewFlagInShop()Z
move-result v11
if-eqz v11, :cond_39
const/4 v11, 0x0
invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V
:goto_2f
new-instance v11, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$1;
invoke-direct {v11, p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$1;-><init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v11, v2
:goto_38
return-object v11
:cond_39
const/16 v11, 0x8
invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V
goto :goto_2f
:cond_3f
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
sget-object v11, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v11, v11, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_63
iget-object v11, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
const v12, 0x7f03007a
const/4 v13, 0x0
invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
new-instance v11, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$2;
invoke-direct {v11, p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$2;-><init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v11, v2
goto :goto_38
:cond_63
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v11
invoke-virtual {v11, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v9
iget-object v11, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
const v12, 0x7f030077
const/4 v13, 0x0
invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const/4 v11, 0x1
invoke-virtual {v2, v11}, Landroid/view/View;->setClickable(Z)V
new-instance v11, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;
invoke-direct {v11, p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$3;-><init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
invoke-virtual {v2, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
const v11, 0x7f0a029b
invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v11, 0x1
invoke-virtual {v0, v11}, Landroid/view/View;->setClickable(Z)V
new-instance v11, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
invoke-direct {v11, p0, v9}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;-><init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;Lcom/pinguo/camera360/effect/model/entity/EffectType;)V
invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v11, 0x7f0a0292
invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
const v11, 0x7f0a0291
invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
const v11, 0x7f0a0295
invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/widget/TextView;
const v11, 0x7f0a029a
invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/ImageView;
new-instance v11, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;
invoke-direct {v11, p0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$5;-><init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)V
invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-nez v9, :cond_c3
const/4 v11, 0x0
goto/16 :goto_38
:cond_c3
iget-object v11, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mCurrentEffect:Ljava/lang/String;
invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_f3
const/4 v11, 0x1
invoke-virtual {v2, v11}, Landroid/view/View;->setSelected(Z)V
:goto_cf
const v11, 0x7f020165
invoke-virtual {v4, v11}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V
iget-object v11, v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;->icon:Ljava/lang/String;
invoke-virtual {v4, v11}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V
iget-object v11, v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget v11, v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
const/4 v12, 0x1
if-ne v11, v12, :cond_f8
const/4 v10, 0x0
:goto_e5
invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V
const/4 v11, 0x0
invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V
const/4 v11, 0x0
invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V
move-object v11, v2
goto/16 :goto_38
:cond_f3
const/4 v11, 0x0
invoke-virtual {v2, v11}, Landroid/view/View;->setSelected(Z)V
goto :goto_cf
:cond_f8
const/16 v10, 0x8
goto :goto_e5
.end method
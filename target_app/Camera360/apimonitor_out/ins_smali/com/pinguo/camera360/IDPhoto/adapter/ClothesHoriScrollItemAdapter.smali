.class public Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;
.super Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;
.source "ClothesHoriScrollItemAdapter.java"
.field private mListener:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
.field private mSelectedIndex:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mSelectedIndex:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mSelectedIndex:I
return-void
.end method
.method public getSelectedIndex()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mSelectedIndex:I
return v0
.end method
.method public initView(Landroid/content/Context;I)Landroid/view/View;
.registers 8
const v3, 0x7f030083
const/4 v4, 0x0
invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v3, 0x7f0a02ef
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mSelectedIndex:I
if-ne v3, p2, :cond_1f
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V
:cond_1f
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->getThumbnailResId()I
move-result v3
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageResource(I)V
new-instance v3, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;
invoke-direct {v3, p0, p2}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$1;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;I)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v2
.end method
.method public setOnClothesItemClickListener(Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mListener:Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter$OnClothesItemClickListener;
return-void
.end method
.method public setSelectedIndex(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mSelectedIndex:I
return-void
.end method
.method public setSelectedIndexByResId(I)V
.registers 6
const/4 v3, -0x1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mList:Ljava/util/List;
if-nez v2, :cond_9
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
:goto_8
return-void
:cond_9
const/4 v0, 0x0
:goto_a
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-lt v0, v2, :cond_16
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
goto :goto_8
:cond_16
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->mList:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/IDPhoto/model/ClothesTexture;->isResIdOfMine(I)Z
move-result v2
if-eqz v2, :cond_28
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/ClothesHoriScrollItemAdapter;->setSelectedIndex(I)V
goto :goto_8
:cond_28
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
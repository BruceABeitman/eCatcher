.class public abstract Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;
.super Ljava/lang/Object;
.source "BaseHoriScrollItemAdapter.java"
.field private mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
.field protected mList:Ljava/util/List;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_5
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
if-eqz v0, :cond_17
if-ltz p1, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-gt p1, v0, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public abstract initView(Landroid/content/Context;I)Landroid/view/View;
.end method
.method public notifyDataSetChange()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
invoke-interface {v0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;->onInvalidated()V
:cond_9
return-void
.end method
.method public registerDataSetObserver(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
return-void
.end method
.method public remove(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;->onRemove(I)V
:cond_12
return-void
.end method
.method public setData(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mList:Ljava/util/List;
return-void
.end method
.method public unregisterDataSetObserver(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->mDataSetObserver:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;
return-void
.end method
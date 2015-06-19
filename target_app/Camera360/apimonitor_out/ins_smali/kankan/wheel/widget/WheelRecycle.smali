.class public Lkankan/wheel/widget/WheelRecycle;
.super Ljava/lang/Object;
.source "WheelRecycle.java"
.field private emptyItems:Ljava/util/List;
.field private items:Ljava/util/List;
.field private wheel:Lkankan/wheel/widget/WheelView;
.method public constructor <init>(Lkankan/wheel/widget/WheelView;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lkankan/wheel/widget/WheelRecycle;->wheel:Lkankan/wheel/widget/WheelView;
return-void
.end method
.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
.registers 3
if-nez p2, :cond_7
new-instance p2, Ljava/util/LinkedList;
invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V
:cond_7
invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p2
.end method
.method private getCachedView(Ljava/util/List;)Landroid/view/View;
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_13
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_13
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method private recycleView(Landroid/view/View;I)V
.registers 5
iget-object v1, p0, Lkankan/wheel/widget/WheelRecycle;->wheel:Lkankan/wheel/widget/WheelView;
invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getViewAdapter()Lkankan/wheel/widget/adapters/WheelViewAdapter;
move-result-object v1
invoke-interface {v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I
move-result v0
if-ltz p2, :cond_e
if-lt p2, v0, :cond_20
:cond_e
iget-object v1, p0, Lkankan/wheel/widget/WheelRecycle;->wheel:Lkankan/wheel/widget/WheelView;
invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->isCyclic()Z
move-result v1
if-nez v1, :cond_20
iget-object v1, p0, Lkankan/wheel/widget/WheelRecycle;->emptyItems:Ljava/util/List;
invoke-direct {p0, p1, v1}, Lkankan/wheel/widget/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lkankan/wheel/widget/WheelRecycle;->emptyItems:Ljava/util/List;
:goto_1e
return-void
:cond_1f
add-int/2addr p2, v0
:cond_20
if-ltz p2, :cond_1f
rem-int/2addr p2, v0
iget-object v1, p0, Lkankan/wheel/widget/WheelRecycle;->items:Ljava/util/List;
invoke-direct {p0, p1, v1}, Lkankan/wheel/widget/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lkankan/wheel/widget/WheelRecycle;->items:Ljava/util/List;
goto :goto_1e
.end method
.method public clearAll()V
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelRecycle;->items:Ljava/util/List;
if-eqz v0, :cond_9
iget-object v0, p0, Lkankan/wheel/widget/WheelRecycle;->items:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
:cond_9
iget-object v0, p0, Lkankan/wheel/widget/WheelRecycle;->emptyItems:Ljava/util/List;
if-eqz v0, :cond_12
iget-object v0, p0, Lkankan/wheel/widget/WheelRecycle;->emptyItems:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
:cond_12
return-void
.end method
.method public getEmptyItem()Landroid/view/View;
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelRecycle;->emptyItems:Ljava/util/List;
invoke-direct {p0, v0}, Lkankan/wheel/widget/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getItem()Landroid/view/View;
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelRecycle;->items:Ljava/util/List;
invoke-direct {p0, v0}, Lkankan/wheel/widget/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I
.registers 7
move v1, p2
const/4 v0, 0x0
:goto_2
invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v2
if-lt v0, v2, :cond_9
return p2
:cond_9
invoke-virtual {p3, v1}, Lkankan/wheel/widget/ItemsRange;->contains(I)Z
move-result v2
if-nez v2, :cond_20
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-direct {p0, v2, v1}, Lkankan/wheel/widget/WheelRecycle;->recycleView(Landroid/view/View;I)V
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V
if-nez v0, :cond_1d
add-int/lit8 p2, p2, 0x1
:goto_1d
:cond_1d
add-int/lit8 v1, v1, 0x1
goto :goto_2
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_1d
.end method
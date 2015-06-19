.class public Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;
.super Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.source "IntentDndEffectSelectAdapter.java"
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;)V
return-void
.end method
.method public isEnable(I)Z
.registers 4
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;->isIntentEnabled(I)Z
move-result v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return v1
:cond_8
invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->isEnable(I)Z
move-result v1
goto :goto_7
.end method
.method public isIntentEnabled(I)Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;->getCount()I
move-result v1
if-lt p1, v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-eq p1, v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method public view(II)Landroid/view/View;
.registers 5
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->view(II)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;->isIntentEnabled(I)Z
move-result v1
if-nez v1, :cond_14
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V
const v1, 0x3e3851ec
invoke-static {v0, v1}, Lcom/pinguo/lib/util/ViewUtils;->setViewAlpha(Landroid/view/View;F)V
:cond_14
return-object v0
.end method
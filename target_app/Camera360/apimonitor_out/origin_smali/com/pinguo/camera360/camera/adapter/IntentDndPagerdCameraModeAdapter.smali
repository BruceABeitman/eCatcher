.class public Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;
.super Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
.source "IntentDndPagerdCameraModeAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    return-void
.end method


# virtual methods
.method public isEnable(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;->isIntentEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-super {p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->isEnable(I)Z

    move-result v1

    goto :goto_7
.end method

.method public isIntentEnabled(I)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v2, "mode_addnew_item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v2, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v2, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v2, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v2, "mode_recomendation_item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    const-string/jumbo v2, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_48
    const/4 v1, 0x0

    :goto_49
    return v1

    :cond_4a
    const/4 v1, 0x1

    goto :goto_49
.end method

.method public view(II)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;->view(II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;->getRealIndex(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;->isIntentEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    const v1, 0x3e3851ec

    invoke-static {v0, v1}, Lcom/pinguo/lib/util/ViewUtils;->setViewAlpha(Landroid/view/View;F)V

    :cond_1b
    return-object v0
.end method

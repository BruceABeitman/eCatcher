.class public Lcom/pinguo/camera360/camera/controller/IntentModePickerFragment;
.super Lcom/pinguo/camera360/camera/controller/ModePickerFragment;
.source "IntentModePickerFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ModePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDndPagerdCameraModeAdapter()Lcom/pinguo/camera360/camera/adapter/DndPagerdCameraModeAdapter;
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentModePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/IntentModePickerFragment;->getModePickerView()Lcom/pinguo/camera360/camera/view/ModePickerView;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/adapter/IntentDndPagerdCameraModeAdapter;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;)V

    return-object v0
.end method

.method protected createInteractionFactory(Landroid/app/Activity;)Lcom/pinguo/camera360/shop/activity/InteractionFactory;
    .registers 3

    new-instance v0, Lcom/pinguo/camera360/shop/activity/IntentInteractionFactory;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/shop/activity/IntentInteractionFactory;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.class public Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "SceneSelectFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneSelectFragment"


# instance fields
.field private mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    return-void
.end method


# virtual methods
.method public handleHardKeyEvent(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mIsPausing:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->hide()V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->showSceneFragment()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const-string/jumbo v0, "SceneSelectFragment"

    const-string/jumbo v1, "onCreateView start "

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0300a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/SceneSelectView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->setListener(Lcom/pinguo/camera360/camera/view/SceneSelectView$ISceneSelectView;)V

    const-string/jumbo v0, "SceneSelectFragment"

    const-string/jumbo v1, "onCreateView end "

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    return-object v0
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/HideSceneSelectEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->hide()V

    :cond_d
    return-void
.end method

.method public onHideSceneSelectView()V
    .registers 4

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "SceneSelectFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    const-string/jumbo v0, "SceneSelectFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V

    const-string/jumbo v0, "SceneSelectFragment"

    const-string/jumbo v1, "onResume end"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowSceneSelectView()V
    .registers 4

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/camera/event/SceneSelectVisibilityEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public selectScene(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->hide()V

    :cond_9
    new-instance v0, Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/event/OnSceneSelectEvent;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseFragment;->setOrientation(IZ)V

    return-void
.end method

.method public showSceneFragment()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->show()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneSelectFragment;->mSceneSelectView:Lcom/pinguo/camera360/camera/view/SceneSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SceneSelectView;->hide()V

    goto :goto_17
.end method

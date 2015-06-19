.class public Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleAdapter;,
        Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V

    goto :goto_9
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V

    goto :goto_9
.end method

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V

    goto :goto_9
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;)V

    goto :goto_9
.end method

.method public removeLifeCycleListener(Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity$LifeCycleListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

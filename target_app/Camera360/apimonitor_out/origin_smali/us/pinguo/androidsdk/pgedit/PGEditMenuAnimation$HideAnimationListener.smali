.class public Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;
.super Ljava/lang/Object;
.source "PGEditMenuAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideAnimationListener"
.end annotation


# instance fields
.field private action:I

.field private baseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

.field private handler:Landroid/os/Handler;

.field private isLast:Z

.field private parentView:Landroid/view/ViewGroup;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseAnimationListener()Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->baseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->view:Landroid/view/View;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->baseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->isActioning()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->isLast:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->baseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->setViewGroup(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->handler:Landroid/os/Handler;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->action:I

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->baseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    :cond_22
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public setAction(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->action:I

    return-void
.end method

.method public setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->baseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setLast(Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->isLast:Z

    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->parentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->view:Landroid/view/View;

    return-void
.end method

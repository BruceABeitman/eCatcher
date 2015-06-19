.class public Lcom/pinguo/camera360/gallery/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/StateManager$StateEntry;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_MAIN:Ljava/lang/String; = "activity-state"

.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mContext:Lcom/pinguo/camera360/gallery/RootActivity;

.field private mIsResumed:Z

.field private mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/pinguo/camera360/gallery/StateManager$StateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/RootActivity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    const-string/jumbo v0, "StateManager"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V

    goto :goto_9
.end method

.method public destroyTop()V
    .registers 5

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "destroy"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    return-void

    :cond_18
    if-nez v0, :cond_2d

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v1, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2d
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V

    goto :goto_a
.end method

.method public finishState(Lcom/pinguo/camera360/gallery/ActivityState;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v5, :cond_3c

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iget v2, v2, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->resultCode:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iget-object v3, v3, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_20
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_33

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "finish is rejected, keep the last state"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void

    :cond_33
    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "no more state, finish activity"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const-string/jumbo v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "finishState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    if-eq p1, v2, :cond_a1

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ActivityState;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "StateManager"

    const-string/jumbo v3, "The state is already destroyed"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The stateview to be finished is not at the top of the stack: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a1
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_a6
    iput-boolean v5, p1, Lcom/pinguo/camera360/gallery/ActivityState;->mIsFinishing:Z

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_af

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    :cond_af
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v1, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ActivityState;->resume()V

    goto/16 :goto_32
.end method

.method public getStateCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getTopState()Lcom/pinguo/camera360/gallery/ActivityState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public notifyActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/StateManager;->getTopState()Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    :cond_f
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/StateManager;->getTopState()Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ActivityState;->onBackPressed()V

    :cond_f
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v2, v0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/gallery/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_6
.end method

.method public pause()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/StateManager;->getTopState()Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    goto :goto_4
.end method

.method public restoreFromState(Landroid/os/Bundle;)V
    .registers 15

    const-string/jumbo v8, "StateManager"

    const-string/jumbo v9, "restoreFromState"

    invoke-static {v8, v9}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "activity-state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v9, v5

    const/4 v8, 0x0

    :goto_12
    if-lt v8, v9, :cond_15

    return-void

    :cond_15
    aget-object v6, v5, v8

    move-object v1, v6

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v10, "class"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string/jumbo v10, "data"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v10, "bundle"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :try_start_31
    const-string/jumbo v10, "StateManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "restoreFromState "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ActivityState;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4d} :catch_62

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0, v10, v2}, Lcom/pinguo/camera360/gallery/ActivityState;->initialize(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v7}, Lcom/pinguo/camera360/gallery/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    new-instance v11, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    invoke-direct {v11, v2, v0}, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pinguo/camera360/gallery/ActivityState;)V

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :catch_62
    move-exception v3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method public resume()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/StateManager;->getTopState()Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ActivityState;->resume()V

    goto :goto_4
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 12

    const-string/jumbo v6, "StateManager"

    const-string/jumbo v7, "saveState"

    invoke-static {v6, v7}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    new-array v4, v6, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_25

    const-string/jumbo v6, "activity-state"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_25
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "class"

    iget-object v8, v1, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v7, "data"

    iget-object v8, v1, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v1, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v7, v5}, Lcom/pinguo/camera360/gallery/ActivityState;->onSaveState(Landroid/os/Bundle;)V

    const-string/jumbo v7, "bundle"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v7, "StateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "saveState "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v2, 0x1

    aput-object v0, v4, v2

    move v2, v3

    goto :goto_18
.end method

.method public startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pinguo/camera360/gallery/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string/jumbo v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startState "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/ActivityState;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_4b

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/StateManager;->getTopState()Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_30

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    :cond_30
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1, v3, p2}, Lcom/pinguo/camera360/gallery/ActivityState;->initialize(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    invoke-direct {v4, p2, v1}, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pinguo/camera360/gallery/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lcom/pinguo/camera360/gallery/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_4a

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ActivityState;->resume()V

    :cond_4a
    return-void

    :catch_4b
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pinguo/camera360/gallery/ActivityState;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string/jumbo v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startStateForResult "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/ActivityState;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_65

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v2, v3, p3}, Lcom/pinguo/camera360/gallery/ActivityState;->initialize(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;)V

    new-instance v3, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    invoke-direct {v3}, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;-><init>()V

    iput-object v3, v2, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iget-object v3, v2, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iput p2, v3, Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;->requestCode:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/StateManager;->getTopState()Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v0

    iget-object v3, v2, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iput-object v3, v0, Lcom/pinguo/camera360/gallery/ActivityState;->mReceivedResults:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_4f

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    :cond_4f
    :goto_4f
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    new-instance v4, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    invoke-direct {v4, p3, v2}, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pinguo/camera360/gallery/ActivityState;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/pinguo/camera360/gallery/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v3, :cond_64

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ActivityState;->resume()V

    :cond_64
    return-void

    :catch_65
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_6c
    iget-object v3, v2, Lcom/pinguo/camera360/gallery/ActivityState;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    iput-object v3, p0, Lcom/pinguo/camera360/gallery/StateManager;->mResult:Lcom/pinguo/camera360/gallery/ActivityState$ResultEntry;

    goto :goto_4f
.end method

.method public switchState(Lcom/pinguo/camera360/gallery/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/gallery/ActivityState;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/pinguo/camera360/gallery/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string/jumbo v2, "StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "switchState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    if-eq p1, v2, :cond_60

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The stateview to be finished is not at the top of the stack: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    iget-object v2, v2, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_60
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_6c

    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    :cond_6c
    invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V

    const/4 v1, 0x0

    :try_start_70
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/ActivityState;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_76} :catch_91

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mContext:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1, v2, p3}, Lcom/pinguo/camera360/gallery/ActivityState;->initialize(Lcom/pinguo/camera360/gallery/RootActivity;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mStack:Ljava/util/Stack;

    new-instance v3, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;

    invoke-direct {v3, p3, v1}, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;-><init>(Landroid/os/Bundle;Lcom/pinguo/camera360/gallery/ActivityState;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/pinguo/camera360/gallery/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/StateManager;->mIsResumed:Z

    if-eqz v2, :cond_90

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ActivityState;->resume()V

    :cond_90
    return-void

    :catch_91
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

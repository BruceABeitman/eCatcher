.class Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

.field final synthetic this$0:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet;)V
    .registers 3

    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .registers 6

    iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-boolean v2, v2, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v2, v2, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v2, v2, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_21
    if-lt v0, v1, :cond_24

    :cond_23
    return-void

    :cond_24
    iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v2, v2, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v2, v3}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .registers 11

    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/Animator;->removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-boolean v7, v7, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v7, :cond_4e

    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    #getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->access$4(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_2d
    if-lt v2, v4, :cond_4f

    :goto_2f
    if-eqz v0, :cond_4e

    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v7, v7, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_48

    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v7, v7, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_46
    if-lt v2, v3, :cond_5e

    :cond_48
    iget-object v7, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v8, 0x0

    #setter for: Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
    invoke-static {v7, v8}, Lcom/nineoldandroids/animation/AnimatorSet;->access$5(Lcom/nineoldandroids/animation/AnimatorSet;Z)V

    :cond_4e
    return-void

    :cond_4f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v7, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    if-nez v7, :cond_5b

    const/4 v0, 0x0

    goto :goto_2f

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_5e
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v8, p0, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v7, v8}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_46
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

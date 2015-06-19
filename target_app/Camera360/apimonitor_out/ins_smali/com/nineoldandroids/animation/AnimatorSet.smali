.class public final Lcom/nineoldandroids/animation/AnimatorSet;
.super Lcom/nineoldandroids/animation/Animator;
.source "AnimatorSet.java"
.field private mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
.field private mDuration:J
.field private mNeedsSort:Z
.field private mNodeMap:Ljava/util/HashMap;
.field private mNodes:Ljava/util/ArrayList;
.field private mPlayingSet:Ljava/util/ArrayList;
.field private mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.field private mSortedNodes:Ljava/util/ArrayList;
.field private mStartDelay:J
.field private mStarted:Z
.field  mTerminated:Z
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/nineoldandroids/animation/Animator;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
iput-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
iput-boolean v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z
iput-boolean v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStartDelay:J
iput-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDuration:J
return-void
.end method
.method static synthetic access$2(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic access$4(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$5(Lcom/nineoldandroids/animation/AnimatorSet;Z)V
.registers 2
iput-boolean p1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
return-void
.end method
.method static synthetic access$6(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
return-object v0
.end method
.method private sortNodes()V
.registers 15
const/4 v13, 0x0
iget-boolean v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
if-eqz v11, :cond_9d
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v6
const/4 v1, 0x0
:goto_16
if-lt v1, v6, :cond_3c
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
:goto_1d
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v11
if-gtz v11, :cond_56
iput-boolean v13, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v11
iget-object v12, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v12
if-eq v11, v12, :cond_a6
new-instance v11, Ljava/lang/IllegalStateException;
const-string/jumbo v12, "Circular dependencies cannot exist in AnimatorSet"
invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v11
:cond_3c
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
if-eqz v11, :cond_50
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v11
if-nez v11, :cond_53
:cond_50
invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_53
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_56
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v7
const/4 v1, 0x0
:goto_5b
if-lt v1, v7, :cond_67
invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
goto :goto_1d
:cond_67
invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v11, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
if-eqz v11, :cond_7f
iget-object v11, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v5
const/4 v2, 0x0
:goto_7d
if-lt v2, v5, :cond_82
:cond_7f
add-int/lit8 v1, v1, 0x1
goto :goto_5b
:cond_82
iget-object v11, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v11
if-nez v11, :cond_9a
invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_9a
add-int/lit8 v2, v2, 0x1
goto :goto_7d
:cond_9d
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v6
const/4 v1, 0x0
:goto_a4
if-lt v1, v6, :cond_a7
:cond_a6
return-void
:cond_a7
iget-object v11, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
if-eqz v11, :cond_c4
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v11
if-lez v11, :cond_c4
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v4
const/4 v2, 0x0
:goto_c2
if-lt v2, v4, :cond_c9
:cond_c4
iput-boolean v13, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->done:Z
add-int/lit8 v1, v1, 0x1
goto :goto_a4
:cond_c9
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
if-nez v11, :cond_dc
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
iput-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
:cond_dc
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
iget-object v12, v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v11
if-nez v11, :cond_ed
iget-object v11, v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
iget-object v12, v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_ed
add-int/lit8 v2, v2, 0x1
goto :goto_c2
.end method
.method public cancel()V
.registers 6
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z
invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->isStarted()Z
move-result v3
if-eqz v3, :cond_40
const/4 v2, 0x0
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
if-eqz v3, :cond_20
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_41
:cond_20
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
if-eqz v3, :cond_4b
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z
move-result v3
if-eqz v3, :cond_4b
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V
:cond_31
if-eqz v2, :cond_3d
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_37
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_6b
:cond_3d
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
:cond_40
return-void
:cond_41
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-interface {v0, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
goto :goto_1a
:cond_4b
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-lez v3, :cond_31
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_59
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_31
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Animator;->cancel()V
goto :goto_59
:cond_6b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-interface {v0, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
goto :goto_37
.end method
.method public bridge synthetic clone()Lcom/nineoldandroids/animation/Animator;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->clone()Lcom/nineoldandroids/animation/AnimatorSet;
move-result-object v0
return-object v0
.end method
.method public clone()Lcom/nineoldandroids/animation/AnimatorSet;
.registers 15
const/4 v11, 0x0
const/4 v13, 0x0
invoke-super {p0}, Lcom/nineoldandroids/animation/Animator;->clone()Lcom/nineoldandroids/animation/Animator;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;
const/4 v10, 0x1
iput-boolean v10, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
iput-boolean v11, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z
iput-boolean v11, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
iput-object v10, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
new-instance v10, Ljava/util/HashMap;
invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
iput-object v10, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
iput-object v10, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
iput-object v10, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
new-instance v9, Ljava/util/HashMap;
invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
iget-object v10, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_36
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_49
iget-object v10, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_42
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_a8
return-object v0
:cond_49
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v7}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->clone()Lcom/nineoldandroids/animation/AnimatorSet$Node;
move-result-object v8
invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v11, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v11, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
iget-object v12, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object v13, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
iput-object v13, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
iput-object v13, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
iput-object v13, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
iget-object v11, v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v11}, Lcom/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;
move-result-object v2
if-eqz v2, :cond_36
const/4 v6, 0x0
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v11
:cond_77
:goto_77
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_93
if-eqz v6, :cond_36
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_83
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_36
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_83
:cond_93
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
instance-of v12, v5, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
if-eqz v12, :cond_77
if-nez v6, :cond_a4
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
:cond_a4
invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_77
:cond_a8
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v11, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
if-eqz v11, :cond_42
iget-object v11, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_be
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_42
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget-object v12, v4, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/AnimatorSet$Node;
new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget v12, v4, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I
invoke-direct {v1, v3, v12}, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
invoke-virtual {v8, v1}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V
goto :goto_be
.end method
.method public end()V
.registers 7
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z
invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->isStarted()Z
move-result v3
if-eqz v3, :cond_5c
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-eq v3, v4, :cond_26
invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorSet;->sortNodes()V
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_20
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_5d
:cond_26
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
if-eqz v3, :cond_2f
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
invoke-virtual {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V
:cond_2f
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-lez v3, :cond_43
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_76
:cond_43
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
if-eqz v3, :cond_59
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_53
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_82
:cond_59
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
:cond_5c
return-void
:cond_5d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
if-nez v4, :cond_6e
new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
invoke-direct {v4, p0, p0}, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet;)V
iput-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
:cond_6e
iget-object v4, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
iget-object v5, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
goto :goto_20
:cond_76
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Animator;->end()V
goto :goto_3d
:cond_82
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-interface {v0, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
goto :goto_53
.end method
.method public getChildAnimations()Ljava/util/ArrayList;
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_12
return-object v0
:cond_12
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v3, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
.end method
.method public getDuration()J
.registers 3
iget-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDuration:J
return-wide v0
.end method
.method public getStartDelay()J
.registers 3
iget-wide v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStartDelay:J
return-wide v0
.end method
.method public isRunning()Z
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_e
const/4 v1, 0x0
:goto_d
return v1
:cond_e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v2, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->isRunning()Z
move-result v2
if-eqz v2, :cond_6
const/4 v1, 0x1
goto :goto_d
.end method
.method public isStarted()Z
.registers 2
iget-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
return v0
.end method
.method public play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
.registers 3
if-eqz p1, :cond_b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;
invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/Animator;)V
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public playSequentially(Ljava/util/List;)V
.registers 5
const/4 v2, 0x1
if-eqz p1, :cond_1b
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_1b
iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-ne v1, v2, :cond_1c
const/4 v1, 0x0
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/Animator;
invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
:cond_1b
return-void
:cond_1c
const/4 v0, 0x0
:goto_1d
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_1b
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/Animator;
invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
move-result-object v2
add-int/lit8 v1, v0, 0x1
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2, v1}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->before(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
add-int/lit8 v0, v0, 0x1
goto :goto_1d
.end method
.method public varargs playSequentially([Lcom/nineoldandroids/animation/Animator;)V
.registers 5
const/4 v2, 0x1
if-eqz p1, :cond_e
iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
array-length v1, p1
if-ne v1, v2, :cond_f
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
:cond_e
return-void
:cond_f
const/4 v0, 0x0
:goto_10
array-length v1, p1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_e
aget-object v1, p1, v0
invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
move-result-object v1
add-int/lit8 v2, v0, 0x1
aget-object v2, p1, v2
invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->before(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
add-int/lit8 v0, v0, 0x1
goto :goto_10
.end method
.method public playTogether(Ljava/util/Collection;)V
.registers 6
if-eqz p1, :cond_16
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v2
if-lez v2, :cond_16
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
const/4 v1, 0x0
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_17
:cond_16
return-void
:cond_17
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Animator;
if-nez v1, :cond_24
invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
move-result-object v1
goto :goto_10
:cond_24
invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
goto :goto_10
.end method
.method public varargs playTogether([Lcom/nineoldandroids/animation/Animator;)V
.registers 5
if-eqz p1, :cond_10
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-virtual {p0, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
move-result-object v0
const/4 v1, 0x1
:goto_d
array-length v2, p1
if-lt v1, v2, :cond_11
:cond_10
return-void
:cond_11
aget-object v2, p1, v1
invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
add-int/lit8 v1, v1, 0x1
goto :goto_d
.end method
.method public bridge synthetic setDuration(J)Lcom/nineoldandroids/animation/Animator;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;
move-result-object v0
return-object v0
.end method
.method public setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;
.registers 6
const-wide/16 v1, 0x0
cmp-long v1, p1, v1
if-gez v1, :cond_f
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "duration must be a value of zero or greater"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_15
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_1e
iput-wide p1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mDuration:J
return-object p0
:cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v2, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2, p1, p2}, Lcom/nineoldandroids/animation/Animator;->setDuration(J)Lcom/nineoldandroids/animation/Animator;
goto :goto_15
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)V
.registers 5
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v2, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2, p1}, Lcom/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V
goto :goto_6
.end method
.method public setStartDelay(J)V
.registers 3
iput-wide p1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mStartDelay:J
return-void
.end method
.method public setTarget(Ljava/lang/Object;)V
.registers 6
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_d
return-void
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v0, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
instance-of v3, v0, Lcom/nineoldandroids/animation/AnimatorSet;
if-eqz v3, :cond_1f
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet;
invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V
goto :goto_6
:cond_1f
instance-of v3, v0, Lcom/nineoldandroids/animation/ObjectAnimator;
if-eqz v3, :cond_6
check-cast v0, Lcom/nineoldandroids/animation/ObjectAnimator;
invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V
goto :goto_6
.end method
.method public setupEndValues()V
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v2, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->setupEndValues()V
goto :goto_6
.end method
.method public setupStartValues()V
.registers 4
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v2, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->setupStartValues()V
goto :goto_6
.end method
.method public start()V
.registers 19
const/4 v14, 0x0
move-object/from16 v0, p0
iput-boolean v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z
const/4 v14, 0x1
move-object/from16 v0, p0
iput-boolean v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
invoke-direct/range {p0 .. p0}, Lcom/nineoldandroids/animation/AnimatorSet;->sortNodes()V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
move-result v11
const/4 v4, 0x0
:goto_16
if-lt v4, v11, :cond_7c
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
const/4 v4, 0x0
:goto_1e
if-lt v4, v11, :cond_bb
move-object/from16 v0, p0
iget-wide v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mStartDelay:J
const-wide/16 v16, 0x0
cmp-long v14, v14, v16
if-gtz v14, :cond_13f
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_2e
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v15
if-nez v15, :cond_127
:goto_34
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
if-eqz v14, :cond_4b
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v10
const/4 v4, 0x0
:goto_49
if-lt v4, v10, :cond_16f
:cond_4b
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
move-result v14
if-nez v14, :cond_7b
move-object/from16 v0, p0
iget-wide v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mStartDelay:J
const-wide/16 v16, 0x0
cmp-long v14, v14, v16
if-nez v14, :cond_7b
const/4 v14, 0x0
move-object/from16 v0, p0
iput-boolean v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mStarted:Z
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
if-eqz v14, :cond_7b
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v10
const/4 v4, 0x0
:goto_79
if-lt v4, v10, :cond_17e
:cond_7b
return-void
:cond_7c
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v14}, Lcom/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;
move-result-object v12
if-eqz v12, :cond_a3
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v14
if-lez v14, :cond_a3
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_9d
:cond_9d
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v15
if-nez v15, :cond_a7
:cond_a3
add-int/lit8 v4, v4, 0x1
goto/16 :goto_16
:cond_a7
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
instance-of v15, v6, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;
if-nez v15, :cond_b5
instance-of v15, v6, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
if-eqz v15, :cond_9d
:cond_b5
iget-object v15, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v15, v6}, Lcom/nineoldandroids/animation/Animator;->removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
goto :goto_9d
:cond_bb
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
if-nez v14, :cond_d8
new-instance v14, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
move-object/from16 v0, p0
move-object/from16 v1, p0
invoke-direct {v14, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet;)V
move-object/from16 v0, p0
iput-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
:cond_d8
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
if-eqz v14, :cond_e4
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
move-result v14
if-nez v14, :cond_f4
:cond_e4
invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_e7
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mSetListener:Lcom/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
invoke-virtual {v14, v15}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
add-int/lit8 v4, v4, 0x1
goto/16 :goto_1e
:cond_f4
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
move-result v9
const/4 v5, 0x0
:goto_fb
if-lt v5, v9, :cond_108
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/ArrayList;
iput-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
goto :goto_e7
:cond_108
iget-object v14, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget-object v14, v3, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v14, v14, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
new-instance v15, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;
iget v0, v3, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I
move/from16 v16, v0
move-object/from16 v0, p0
move/from16 v1, v16
invoke-direct {v15, v0, v7, v1}, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
invoke-virtual {v14, v15}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
add-int/lit8 v5, v5, 0x1
goto :goto_fb
:cond_127
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v15, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v15}, Lcom/nineoldandroids/animation/Animator;->start()V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
iget-object v0, v7, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
move-object/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_2e
:cond_13f
const/4 v14, 0x2
new-array v14, v14, [F
fill-array-data v14, :array_18e
invoke-static {v14}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;
move-result-object v14
move-object/from16 v0, p0
iput-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
move-object/from16 v0, p0
iget-wide v15, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mStartDelay:J
invoke-virtual/range {v14 .. v16}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
new-instance v15, Lcom/nineoldandroids/animation/AnimatorSet$1;
move-object/from16 v0, p0
invoke-direct {v15, v0, v8}, Lcom/nineoldandroids/animation/AnimatorSet$1;-><init>(Lcom/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
invoke-virtual {v14, v15}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lcom/nineoldandroids/animation/ValueAnimator;
invoke-virtual {v14}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V
goto/16 :goto_34
:cond_16f
invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-object/from16 v0, p0
invoke-interface {v14, v0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
add-int/lit8 v4, v4, 0x1
goto/16 :goto_49
:cond_17e
invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-object/from16 v0, p0
invoke-interface {v14, v0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
add-int/lit8 v4, v4, 0x1
goto/16 :goto_79
nop
:array_18e
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
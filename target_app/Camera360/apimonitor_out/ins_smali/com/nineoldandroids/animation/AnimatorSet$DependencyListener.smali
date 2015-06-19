.class  Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.field private mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
.field private mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
.field private mRule:I
.method public constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iput p3, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I
return-void
.end method
.method private startIfReady(Lcom/nineoldandroids/animation/Animator;)V
.registers 8
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
iget-boolean v4, v4, Lcom/nineoldandroids/animation/AnimatorSet;->mTerminated:Z
if-eqz v4, :cond_7
:goto_6
:cond_6
return-void
:cond_7
const/4 v1, 0x0
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v2, 0x0
:goto_11
if-lt v2, v3, :cond_39
:goto_13
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-nez v4, :cond_6
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Animator;->start()V
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
invoke-static {v4}, Lcom/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
move-result-object v4
iget-object v5, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v5, v5, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_6
:cond_39
iget-object v4, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget v4, v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I
iget v5, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I
if-ne v4, v5, :cond_54
iget-object v4, v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v4, v4, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
if-ne v4, p1, :cond_54
move-object v1, v0
invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/Animator;->removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
goto :goto_13
:cond_54
add-int/lit8 v2, v2, 0x1
goto :goto_11
.end method
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
.registers 2
return-void
.end method
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
.registers 4
iget v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I
const/4 v1, 0x1
if-ne v0, v1, :cond_8
invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lcom/nineoldandroids/animation/Animator;)V
:cond_8
return-void
.end method
.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
.registers 3
iget v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I
if-nez v0, :cond_7
invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lcom/nineoldandroids/animation/Animator;)V
:cond_7
return-void
.end method
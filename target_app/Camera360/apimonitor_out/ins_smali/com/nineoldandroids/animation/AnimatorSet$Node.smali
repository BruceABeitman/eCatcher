.class  Lcom/nineoldandroids/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"
.implements Ljava/lang/Cloneable;
.field public animation:Lcom/nineoldandroids/animation/Animator;
.field public dependencies:Ljava/util/ArrayList;
.field public done:Z
.field public nodeDependencies:Ljava/util/ArrayList;
.field public nodeDependents:Ljava/util/ArrayList;
.field public tmpDependencies:Ljava/util/ArrayList;
.method public constructor <init>(Lcom/nineoldandroids/animation/Animator;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->done:Z
iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
return-void
.end method
.method public addDependency(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V
.registers 5
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
if-nez v1, :cond_12
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
:cond_12
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
iget-object v2, p1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_28
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;
iget-object v2, p1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_28
iget-object v0, p1, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
if-nez v1, :cond_35
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
:cond_35
iget-object v1, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;
invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public clone()Lcom/nineoldandroids/animation/AnimatorSet$Node;
.registers 4
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->clone()Lcom/nineoldandroids/animation/Animator;
move-result-object v2
iput-object v2, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
:try_end_e
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_e} :catch_f
return-object v1
:catch_f
move-exception v0
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->clone()Lcom/nineoldandroids/animation/AnimatorSet$Node;
move-result-object v0
return-object v0
.end method
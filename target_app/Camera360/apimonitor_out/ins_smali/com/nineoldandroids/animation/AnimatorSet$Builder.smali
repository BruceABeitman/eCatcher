.class public Lcom/nineoldandroids/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"
.field private mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
.field final synthetic this$0:Lcom/nineoldandroids/animation/AnimatorSet;
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Lcom/nineoldandroids/animation/Animator;)V
.registers 5
iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
if-nez v0, :cond_2e
new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-direct {v0, p2}, Lcom/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/nineoldandroids/animation/Animator;)V
iput-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v0
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-static {p1}, Lcom/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2e
return-void
.end method
.method public after(J)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
.registers 5
const/4 v1, 0x2
new-array v1, v1, [F
fill-array-data v1, :array_12
invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;
invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->after(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
return-object p0
nop
:array_12
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method
.method public after(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
.registers 5
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
if-nez v1, :cond_25
new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-direct {v1, p1}, Lcom/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/nineoldandroids/animation/Animator;)V
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_25
new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-virtual {v2, v0}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V
return-object p0
.end method
.method public before(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
.registers 6
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
if-nez v1, :cond_25
new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-direct {v1, p1}, Lcom/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/nineoldandroids/animation/Animator;)V
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_25
new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
const/4 v3, 0x1
invoke-direct {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V
return-object p0
.end method
.method public with(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;
.registers 6
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
if-nez v1, :cond_25
new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
invoke-direct {v1, p1}, Lcom/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lcom/nineoldandroids/animation/Animator;)V
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$3(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
move-result-object v2
invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
invoke-static {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->access$6(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_25
new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;
iget-object v2, p0, Lcom/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/nineoldandroids/animation/AnimatorSet$Node;
const/4 v3, 0x0
invoke-direct {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lcom/nineoldandroids/animation/AnimatorSet$Node;I)V
invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lcom/nineoldandroids/animation/AnimatorSet$Dependency;)V
return-object p0
.end method
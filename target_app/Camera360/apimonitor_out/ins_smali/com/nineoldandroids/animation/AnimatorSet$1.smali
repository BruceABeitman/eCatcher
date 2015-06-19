.class  Lcom/nineoldandroids/animation/AnimatorSet$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"
.field  canceled:Z
.field final synthetic this$0:Lcom/nineoldandroids/animation/AnimatorSet;
.field private final synthetic val$nodesToStart:Ljava/util/ArrayList;
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
.registers 4
iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;
invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->canceled:Z
return-void
.end method
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->canceled:Z
return-void
.end method
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
.registers 7
iget-boolean v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->canceled:Z
if-nez v3, :cond_d
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v0, 0x0
:goto_b
if-lt v0, v2, :cond_e
:cond_d
return-void
:cond_e
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;
iget-object v3, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Animator;->start()V
iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->this$0:Lcom/nineoldandroids/animation/AnimatorSet;
#getter for: Lcom/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
invoke-static {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->access$2(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
move-result-object v3
iget-object v4, v1, Lcom/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_b
.end method
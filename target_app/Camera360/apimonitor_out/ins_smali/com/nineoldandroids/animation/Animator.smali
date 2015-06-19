.class public abstract Lcom/nineoldandroids/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"
.implements Ljava/lang/Cloneable;
.field  mListeners:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
return-void
.end method
.method public addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public cancel()V
.registers 1
return-void
.end method
.method public clone()Lcom/nineoldandroids/animation/Animator;
.registers 8
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Animator;
iget-object v5, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
if-eqz v5, :cond_1a
iget-object v4, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iput-object v5, v0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v2, 0x0
:goto_18
if-lt v2, v3, :cond_1b
:cond_1a
return-object v0
:cond_1b
iget-object v6, v0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_26
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_26} :catch_29
add-int/lit8 v2, v2, 0x1
goto :goto_18
:catch_29
move-exception v1
new-instance v5, Ljava/lang/AssertionError;
invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V
throw v5
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Animator;->clone()Lcom/nineoldandroids/animation/Animator;
move-result-object v0
return-object v0
.end method
.method public end()V
.registers 1
return-void
.end method
.method public abstract getDuration()J
.end method
.method public getListeners()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
return-object v0
.end method
.method public abstract getStartDelay()J
.end method
.method public abstract isRunning()Z
.end method
.method public isStarted()Z
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Animator;->isRunning()Z
move-result v0
return v0
.end method
.method public removeAllListeners()V
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
:cond_c
return-void
.end method
.method public removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_4
const/4 v0, 0x0
iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;
goto :goto_4
.end method
.method public abstract setDuration(J)Lcom/nineoldandroids/animation/Animator;
.end method
.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method
.method public abstract setStartDelay(J)V
.end method
.method public setTarget(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public setupEndValues()V
.registers 1
return-void
.end method
.method public setupStartValues()V
.registers 1
return-void
.end method
.method public start()V
.registers 1
return-void
.end method
.class  Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
.field final synthetic this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
.method private constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
return-void
.end method
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
:cond_11
return-void
.end method
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
.registers 4
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
:cond_11
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$2(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$2(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
const/4 v1, 0x0
#setter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$3(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
:cond_2c
return-void
.end method
.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
:cond_11
return-void
.end method
.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
invoke-static {v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
move-result-object v0
invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
:cond_11
return-void
.end method
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
.registers 13
invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F
move-result v1
iget-object v9, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-static {v9}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$2(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;
move-result-object v9
invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
iget v4, v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->mPropertyMask:I
and-int/lit16 v9, v4, 0x1ff
if-eqz v9, :cond_27
iget-object v9, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Ljava/lang/ref/WeakReference;
invoke-static {v9}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$4(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/lang/ref/WeakReference;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
if-eqz v5, :cond_27
invoke-virtual {v5}, Landroid/view/View;->invalidate()V
:cond_27
iget-object v7, v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;
if-eqz v7, :cond_32
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
:goto_30
if-lt v2, v0, :cond_44
:cond_32
iget-object v9, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
#getter for: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Ljava/lang/ref/WeakReference;
invoke-static {v9}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$4(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/lang/ref/WeakReference;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
if-eqz v5, :cond_43
invoke-virtual {v5}, Landroid/view/View;->invalidate()V
:cond_43
return-void
:cond_44
invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
iget v9, v8, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mFromValue:F
iget v10, v8, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mDeltaValue:F
mul-float/2addr v10, v1
add-float v6, v9, v10
iget-object v9, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
iget v10, v8, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mNameConstant:I
#calls: Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->setValue(IF)V
invoke-static {v9, v10, v6}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->access$5(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;IF)V
add-int/lit8 v2, v2, 0x1
goto :goto_30
.end method
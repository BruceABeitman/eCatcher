.class  Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;
.super Lcom/nineoldandroids/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorPreHC.java"
.field private static final ALPHA:I = 0x200
.field private static final NONE:I = 0x0
.field private static final ROTATION:I = 0x10
.field private static final ROTATION_X:I = 0x20
.field private static final ROTATION_Y:I = 0x40
.field private static final SCALE_X:I = 0x4
.field private static final SCALE_Y:I = 0x8
.field private static final TRANSFORM_MASK:I = 0x1ff
.field private static final TRANSLATION_X:I = 0x1
.field private static final TRANSLATION_Y:I = 0x2
.field private static final X:I = 0x80
.field private static final Y:I = 0x100
.field private mAnimationStarter:Ljava/lang/Runnable;
.field private mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
.field private mAnimatorMap:Ljava/util/HashMap;
.field private mDuration:J
.field private mDurationSet:Z
.field private mInterpolator:Landroid/view/animation/Interpolator;
.field private mInterpolatorSet:Z
.field private mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.field  mPendingAnimations:Ljava/util/ArrayList;
.field private final mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
.field private mStartDelay:J
.field private mStartDelaySet:Z
.field private final mView:Ljava/lang/ref/WeakReference;
.method constructor <init>(Landroid/view/View;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;-><init>()V
iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J
iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z
iput-boolean v2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolatorSet:Z
iput-object v3, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
invoke-direct {v0, p0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;)V
iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;
new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;
invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$1;-><init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Ljava/lang/ref/WeakReference;
invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
move-result-object v0
iput-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
return-void
.end method
.method static synthetic access$0(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)V
.registers 1
invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->startAnimation()V
return-void
.end method
.method static synthetic access$1(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
return-object v0
.end method
.method static synthetic access$2(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
return-object v0
.end method
.method static synthetic access$3(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
return-void
.end method
.method static synthetic access$4(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method static synthetic access$5(Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;IF)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->setValue(IF)V
return-void
.end method
.method private animateProperty(IF)V
.registers 5
invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->getValue(I)F
move-result v1
sub-float v0, p2, v1
invoke-direct {p0, p1, v1, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IFF)V
return-void
.end method
.method private animatePropertyBy(IF)V
.registers 4
invoke-direct {p0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->getValue(I)F
move-result v0
invoke-direct {p0, p1, v0, p2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IFF)V
return-void
.end method
.method private animatePropertyBy(IFF)V
.registers 12
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-virtual {v6}, Ljava/util/HashMap;->size()I
move-result v6
if-lez v6, :cond_1e
const/4 v1, 0x0
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_13
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_3d
:goto_19
if-eqz v1, :cond_1e
invoke-virtual {v1}, Lcom/nineoldandroids/animation/Animator;->cancel()V
:cond_1e
new-instance v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
invoke-direct {v3, p1, p2, p3}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;-><init>(IFF)V
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
if-eqz v5, :cond_3c
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;
invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;
invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
:cond_3c
return-void
:cond_3d
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/nineoldandroids/animation/Animator;
iget-object v7, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
invoke-virtual {v2, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->cancel(I)Z
move-result v7
if-eqz v7, :cond_13
iget v7, v2, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;->mPropertyMask:I
if-nez v7, :cond_13
move-object v1, v4
goto :goto_19
.end method
.method private getValue(I)F
.registers 3
sparse-switch p1, :sswitch_data_4c
const/4 v0, 0x0
:goto_4
return v0
:sswitch_5
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F
move-result v0
goto :goto_4
:sswitch_c
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getTranslationY()F
move-result v0
goto :goto_4
:sswitch_13
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getRotation()F
move-result v0
goto :goto_4
:sswitch_1a
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getRotationX()F
move-result v0
goto :goto_4
:sswitch_21
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getRotationY()F
move-result v0
goto :goto_4
:sswitch_28
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getScaleX()F
move-result v0
goto :goto_4
:sswitch_2f
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getScaleY()F
move-result v0
goto :goto_4
:sswitch_36
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getX()F
move-result v0
goto :goto_4
:sswitch_3d
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getY()F
move-result v0
goto :goto_4
:sswitch_44
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F
move-result v0
goto :goto_4
nop
:sswitch_data_4c
.sparse-switch
0x1 -> :sswitch_5
0x2 -> :sswitch_c
0x4 -> :sswitch_28
0x8 -> :sswitch_2f
0x10 -> :sswitch_13
0x20 -> :sswitch_1a
0x40 -> :sswitch_21
0x80 -> :sswitch_36
0x100 -> :sswitch_3d
0x200 -> :sswitch_44
.end sparse-switch
.end method
.method private setValue(IF)V
.registers 4
sparse-switch p1, :sswitch_data_40
:goto_3
return-void
:sswitch_4
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V
goto :goto_3
:sswitch_a
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V
goto :goto_3
:sswitch_10
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setRotation(F)V
goto :goto_3
:sswitch_16
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setRotationX(F)V
goto :goto_3
:sswitch_1c
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setRotationY(F)V
goto :goto_3
:sswitch_22
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setScaleX(F)V
goto :goto_3
:sswitch_28
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setScaleY(F)V
goto :goto_3
:sswitch_2e
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setX(F)V
goto :goto_3
:sswitch_34
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setY(F)V
goto :goto_3
:sswitch_3a
iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mProxy:Lcom/nineoldandroids/view/animation/AnimatorProxy;
invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V
goto :goto_3
:sswitch_data_40
.sparse-switch
0x1 -> :sswitch_4
0x2 -> :sswitch_a
0x4 -> :sswitch_22
0x8 -> :sswitch_28
0x10 -> :sswitch_10
0x20 -> :sswitch_16
0x40 -> :sswitch_1c
0x80 -> :sswitch_2e
0x100 -> :sswitch_34
0x200 -> :sswitch_3a
.end sparse-switch
.end method
.method private startAnimation()V
.registers 10
const/4 v6, 0x1
new-array v6, v6, [F
const/4 v7, 0x0
const/high16 v8, 0x3f80
aput v8, v6, v7
invoke-static {v6}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;
move-result-object v0
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ArrayList;
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
const/4 v5, 0x0
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v4
const/4 v1, 0x0
:goto_1f
if-lt v1, v4, :cond_54
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
new-instance v7, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;
invoke-direct {v7, v5, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V
invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorEventListener:Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
iget-boolean v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z
if-eqz v6, :cond_3e
iget-wide v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J
invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V
:cond_3e
iget-boolean v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z
if-eqz v6, :cond_47
iget-wide v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDuration:J
invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;
:cond_47
iget-boolean v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolatorSet:Z
if-eqz v6, :cond_50
iget-object v6, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolator:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V
:cond_50
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V
return-void
:cond_54
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;
iget v6, v3, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->mNameConstant:I
or-int/2addr v5, v6
add-int/lit8 v1, v1, 0x1
goto :goto_1f
.end method
.method public alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x200
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public alphaBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x200
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public cancel()V
.registers 7
iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-virtual {v4}, Ljava/util/HashMap;->size()I
move-result v4
if-lez v4, :cond_1e
iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimatorMap:Ljava/util/HashMap;
invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_18
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_33
:cond_1e
iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mPendingAnimations:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
if-eqz v3, :cond_32
iget-object v4, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mAnimationStarter:Ljava/lang/Runnable;
invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_32
return-void
:cond_33
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/nineoldandroids/animation/Animator;
invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->cancel()V
goto :goto_18
.end method
.method public getDuration()J
.registers 3
iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z
if-eqz v0, :cond_7
iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDuration:J
:goto_6
return-wide v0
:cond_7
new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;
invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->getDuration()J
move-result-wide v0
goto :goto_6
.end method
.method public getStartDelay()J
.registers 3
iget-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z
if-eqz v0, :cond_7
iget-wide v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J
:goto_6
return-wide v0
:cond_7
const-wide/16 v0, 0x0
goto :goto_6
.end method
.method public rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x10
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public rotationBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x10
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public rotationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x20
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public rotationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x20
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public rotationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x40
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public rotationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x40
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x4
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public scaleXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x4
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x8
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public scaleYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x8
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 6
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_1c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Animators cannot have negative duration: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDurationSet:Z
iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mDuration:J
return-object p0
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolatorSet:Z
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mInterpolator:Landroid/view/animation/Interpolator;
return-object p0
.end method
.method public setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;
return-object p0
.end method
.method public setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 6
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_1c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Animators cannot have negative duration: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelaySet:Z
iput-wide p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->mStartDelay:J
return-object p0
.end method
.method public start()V
.registers 1
invoke-direct {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->startAnimation()V
return-void
.end method
.method public translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public translationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x2
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public translationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/4 v0, 0x2
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public x(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x80
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public xBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x80
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
.method public y(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x100
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animateProperty(IF)V
return-object p0
.end method
.method public yBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.registers 3
const/16 v0, 0x100
invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;->animatePropertyBy(IF)V
return-object p0
.end method
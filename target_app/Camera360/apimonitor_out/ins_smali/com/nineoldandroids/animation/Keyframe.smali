.class public abstract Lcom/nineoldandroids/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"
.implements Ljava/lang/Cloneable;
.field  mFraction:F
.field  mHasValue:Z
.field private mInterpolator:Landroid/view/animation/Interpolator;
.field  mValueType:Ljava/lang/Class;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mHasValue:Z
return-void
.end method
.method public static ofFloat(F)Lcom/nineoldandroids/animation/Keyframe;
.registers 2
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(F)V
return-object v0
.end method
.method public static ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;
.registers 3
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V
return-object v0
.end method
.method public static ofInt(F)Lcom/nineoldandroids/animation/Keyframe;
.registers 2
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(F)V
return-object v0
.end method
.method public static ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;
.registers 3
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V
return-object v0
.end method
.method public static ofObject(F)Lcom/nineoldandroids/animation/Keyframe;
.registers 3
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V
return-object v0
.end method
.method public static ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;
.registers 3
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V
return-object v0
.end method
.method public abstract clone()Lcom/nineoldandroids/animation/Keyframe;
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;
move-result-object v0
return-object v0
.end method
.method public getFraction()F
.registers 2
iget v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F
return v0
.end method
.method public getInterpolator()Landroid/view/animation/Interpolator;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;
return-object v0
.end method
.method public getType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mValueType:Ljava/lang/Class;
return-object v0
.end method
.method public abstract getValue()Ljava/lang/Object;
.end method
.method public hasValue()Z
.registers 2
iget-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mHasValue:Z
return v0
.end method
.method public setFraction(F)V
.registers 2
iput p1, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F
return-void
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)V
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public abstract setValue(Ljava/lang/Object;)V
.end method
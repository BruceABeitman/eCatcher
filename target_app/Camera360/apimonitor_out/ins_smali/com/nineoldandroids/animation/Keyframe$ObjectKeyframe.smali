.class  Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"
.field  mValue:Ljava/lang/Object;
.method constructor <init>(FLjava/lang/Object;)V
.registers 4
invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V
iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mFraction:F
iput-object p2, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;
if-eqz p2, :cond_17
const/4 v0, 0x1
:goto_a
iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mHasValue:Z
iget-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mHasValue:Z
if-eqz v0, :cond_19
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
:goto_14
iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValueType:Ljava/lang/Class;
return-void
:cond_17
const/4 v0, 0x0
goto :goto_a
:cond_19
const-class v0, Ljava/lang/Object;
goto :goto_14
.end method
.method public clone()Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
.registers 4
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->getFraction()F
move-result v1
iget-object v2, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;
invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-object v0
.end method
.method public bridge synthetic clone()Lcom/nineoldandroids/animation/Keyframe;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->clone()Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
move-result-object v0
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;
return-object v0
.end method
.method public setValue(Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;
if-eqz p1, :cond_8
const/4 v0, 0x1
:goto_5
iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;->mHasValue:Z
return-void
:cond_8
const/4 v0, 0x0
goto :goto_5
.end method
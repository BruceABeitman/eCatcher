.class  Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"
.field  mValue:I
.method constructor <init>(F)V
.registers 3
invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V
iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;
return-void
.end method
.method constructor <init>(FI)V
.registers 4
invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V
iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F
iput p2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z
return-void
.end method
.method public clone()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
.registers 4
new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F
move-result v1
iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I
invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-object v0
.end method
.method public bridge synthetic clone()Lcom/nineoldandroids/animation/Keyframe;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->clone()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
move-result-object v0
return-object v0
.end method
.method public getIntValue()I
.registers 2
iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I
return v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public setValue(Ljava/lang/Object;)V
.registers 4
if-eqz p1, :cond_15
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/Integer;
if-ne v0, v1, :cond_15
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z
:cond_15
return-void
.end method
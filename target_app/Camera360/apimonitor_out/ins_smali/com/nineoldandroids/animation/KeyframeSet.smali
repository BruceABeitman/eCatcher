.class  Lcom/nineoldandroids/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"
.field  mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
.field  mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;
.field  mInterpolator:Landroid/view/animation/Interpolator;
.field  mKeyframes:Ljava/util/ArrayList;
.field  mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
.field  mNumKeyframes:I
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/Keyframe;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
array-length v0, p1
iput v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Keyframe;
iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;
iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/Keyframe;
iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v0
iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public static varargs ofFloat([F)Lcom/nineoldandroids/animation/KeyframeSet;
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
array-length v2, p0
const/4 v3, 0x2
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v3
new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
if-ne v2, v6, :cond_27
invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(F)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
aput-object v3, v1, v4
const/high16 v3, 0x3f80
aget v4, p0, v4
invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
aput-object v3, v1, v6
:cond_21
new-instance v3, Lcom/nineoldandroids/animation/FloatKeyframeSet;
invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V
return-object v3
:cond_27
aget v3, p0, v4
invoke-static {v5, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
aput-object v3, v1, v4
const/4 v0, 0x1
:goto_32
if-ge v0, v2, :cond_21
int-to-float v3, v0
add-int/lit8 v4, v2, -0x1
int-to-float v4, v4
div-float/2addr v3, v4
aget v4, p0, v0
invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
aput-object v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_32
.end method
.method public static varargs ofInt([I)Lcom/nineoldandroids/animation/KeyframeSet;
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
array-length v2, p0
const/4 v3, 0x2
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v3
new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
if-ne v2, v6, :cond_27
invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(F)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
aput-object v3, v1, v4
const/high16 v3, 0x3f80
aget v4, p0, v4
invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
aput-object v3, v1, v6
:cond_21
new-instance v3, Lcom/nineoldandroids/animation/IntKeyframeSet;
invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V
return-object v3
:cond_27
aget v3, p0, v4
invoke-static {v5, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
aput-object v3, v1, v4
const/4 v0, 0x1
:goto_32
if-ge v0, v2, :cond_21
int-to-float v3, v0
add-int/lit8 v4, v2, -0x1
int-to-float v4, v4
div-float/2addr v3, v4
aget v4, p0, v0
invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
aput-object v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_32
.end method
.method public static varargs ofKeyframe([Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/KeyframeSet;
.registers 9
array-length v6, p0
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
:goto_5
if-lt v4, v6, :cond_18
if-eqz v1, :cond_35
if-nez v2, :cond_35
if-nez v3, :cond_35
new-array v0, v6, [Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
const/4 v4, 0x0
:goto_10
if-lt v4, v6, :cond_2c
new-instance v7, Lcom/nineoldandroids/animation/FloatKeyframeSet;
invoke-direct {v7, v0}, Lcom/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V
:goto_17
return-object v7
:cond_18
aget-object v7, p0, v4
instance-of v7, v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
if-eqz v7, :cond_22
const/4 v1, 0x1
:goto_1f
add-int/lit8 v4, v4, 0x1
goto :goto_5
:cond_22
aget-object v7, p0, v4
instance-of v7, v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
if-eqz v7, :cond_2a
const/4 v2, 0x1
goto :goto_1f
:cond_2a
const/4 v3, 0x1
goto :goto_1f
:cond_2c
aget-object v7, p0, v4
check-cast v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
aput-object v7, v0, v4
add-int/lit8 v4, v4, 0x1
goto :goto_10
:cond_35
if-eqz v2, :cond_4f
if-nez v1, :cond_4f
if-nez v3, :cond_4f
new-array v5, v6, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
const/4 v4, 0x0
:goto_3e
if-lt v4, v6, :cond_46
new-instance v7, Lcom/nineoldandroids/animation/IntKeyframeSet;
invoke-direct {v7, v5}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V
goto :goto_17
:cond_46
aget-object v7, p0, v4
check-cast v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
aput-object v7, v5, v4
add-int/lit8 v4, v4, 0x1
goto :goto_3e
:cond_4f
new-instance v7, Lcom/nineoldandroids/animation/KeyframeSet;
invoke-direct {v7, p0}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V
goto :goto_17
.end method
.method public static varargs ofObject([Ljava/lang/Object;)Lcom/nineoldandroids/animation/KeyframeSet;
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
array-length v2, p0
const/4 v3, 0x2
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v3
new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
if-ne v2, v6, :cond_27
invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(F)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
aput-object v3, v1, v4
const/high16 v3, 0x3f80
aget-object v4, p0, v4
invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
aput-object v3, v1, v6
:cond_21
new-instance v3, Lcom/nineoldandroids/animation/KeyframeSet;
invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V
return-object v3
:cond_27
aget-object v3, p0, v4
invoke-static {v5, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
aput-object v3, v1, v4
const/4 v0, 0x1
:goto_32
if-ge v0, v2, :cond_21
int-to-float v3, v0
add-int/lit8 v4, v2, -0x1
int-to-float v4, v4
div-float/2addr v3, v4
aget-object v4, p0, v0
invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
aput-object v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_32
.end method
.method public clone()Lcom/nineoldandroids/animation/KeyframeSet;
.registers 7
iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget-object v5, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v2, v4, [Lcom/nineoldandroids/animation/Keyframe;
const/4 v0, 0x0
:goto_b
if-lt v0, v4, :cond_13
new-instance v3, Lcom/nineoldandroids/animation/KeyframeSet;
invoke-direct {v3, v2}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V
return-object v3
:cond_13
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;
move-result-object v5
aput-object v5, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_b
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/KeyframeSet;->clone()Lcom/nineoldandroids/animation/KeyframeSet;
move-result-object v0
return-object v0
.end method
.method public getValue(F)Ljava/lang/Object;
.registers 11
iget v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I
const/4 v7, 0x2
if-ne v6, v7, :cond_22
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;
if-eqz v6, :cond_f
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;
invoke-interface {v6, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_f
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
iget-object v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v7
iget-object v8, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v8}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v8
invoke-interface {v6, p1, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
:goto_21
return-object v6
:cond_22
const/4 v6, 0x0
cmpg-float v6, p1, v6
if-gtz v6, :cond_5a
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
if-eqz v1, :cond_3a
invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_3a
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v6}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v4
sub-float v6, p1, v4
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v7
sub-float/2addr v7, v4
div-float v2, v6, v7
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
iget-object v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v7
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v8
invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
goto :goto_21
:cond_5a
const/high16 v6, 0x3f80
cmpl-float v6, p1, v6
if-ltz v6, :cond_98
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I
add-int/lit8 v7, v7, -0x2
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Keyframe;
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v6}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
if-eqz v1, :cond_78
invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_78
invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v4
sub-float v6, p1, v4
iget-object v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v7
sub-float/2addr v7, v4
div-float v2, v6, v7
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v7
iget-object v8, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v8}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v8
invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
goto :goto_21
:cond_98
iget-object v5, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;
const/4 v0, 0x1
:goto_9b
iget v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I
if-lt v0, v6, :cond_a7
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v6}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v6
goto/16 :goto_21
:cond_a7
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v6
cmpg-float v6, p1, v6
if-gez v6, :cond_de
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
if-eqz v1, :cond_c1
invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_c1
invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v4
sub-float v6, p1, v4
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F
move-result v7
sub-float/2addr v7, v4
div-float v2, v6, v7
iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v7
invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v8
invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
goto/16 :goto_21
:cond_de
move-object v5, v3
add-int/lit8 v0, v0, 0x1
goto :goto_9b
.end method
.method public setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V
.registers 2
iput-object p1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
const-string/jumbo v1, " "
const/4 v0, 0x0
:goto_4
iget v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I
if-lt v0, v2, :cond_9
return-object v1
:cond_9
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "  "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v0, 0x1
goto :goto_4
.end method
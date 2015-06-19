.class  Lcom/nineoldandroids/animation/FloatKeyframeSet;
.super Lcom/nineoldandroids/animation/KeyframeSet;
.source "FloatKeyframeSet.java"
.field private deltaValue:F
.field private firstTime:Z
.field private firstValue:F
.field private lastValue:F
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V
.registers 3
invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstTime:Z
return-void
.end method
.method public clone()Lcom/nineoldandroids/animation/FloatKeyframeSet;
.registers 7
iget-object v1, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget-object v5, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
new-array v2, v4, [Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
const/4 v0, 0x0
:goto_b
if-lt v0, v4, :cond_13
new-instance v3, Lcom/nineoldandroids/animation/FloatKeyframeSet;
invoke-direct {v3, v2}, Lcom/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V
return-object v3
:cond_13
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;
move-result-object v5
check-cast v5, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
aput-object v5, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_b
.end method
.method public bridge synthetic clone()Lcom/nineoldandroids/animation/KeyframeSet;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/FloatKeyframeSet;->clone()Lcom/nineoldandroids/animation/FloatKeyframeSet;
move-result-object v0
return-object v0
.end method
.method public getFloatValue(F)F
.registers 15
const/4 v12, 0x1
const/4 v11, 0x0
iget v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mNumKeyframes:I
const/4 v10, 0x2
if-ne v9, v10, :cond_5e
iget-boolean v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstTime:Z
if-eqz v9, :cond_30
iput-boolean v11, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstTime:Z
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-virtual {v9}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v9
iput v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-virtual {v9}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v9
iput v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->lastValue:F
iget v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->lastValue:F
iget v10, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F
sub-float/2addr v9, v10
iput v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->deltaValue:F
:cond_30
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;
if-eqz v9, :cond_3a
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;
invoke-interface {v9, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_3a
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
if-nez v9, :cond_45
iget v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F
iget v10, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->deltaValue:F
mul-float/2addr v10, p1
add-float/2addr v9, v10
:goto_44
return v9
:cond_45
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
iget v10, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F
invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v10
iget v11, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->lastValue:F
invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v11
invoke-interface {v9, p1, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Number;
invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F
move-result v9
goto :goto_44
:cond_5e
const/4 v9, 0x0
cmpg-float v9, p1, v9
if-gtz v9, :cond_b1
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v8
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v5
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v6
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v3
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
if-eqz v1, :cond_8d
invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_8d
sub-float v9, p1, v6
sub-float v10, v3, v6
div-float v2, v9, v10
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
if-nez v9, :cond_9c
sub-float v9, v5, v8
mul-float/2addr v9, v2
add-float/2addr v9, v8
goto :goto_44
:cond_9c
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v10
invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v11
invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Number;
invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F
move-result v9
goto :goto_44
:cond_b1
const/high16 v9, 0x3f80
cmpl-float v9, p1, v9
if-ltz v9, :cond_10f
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget v10, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mNumKeyframes:I
add-int/lit8 v10, v10, -0x2
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget v10, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mNumKeyframes:I
add-int/lit8 v10, v10, -0x1
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v8
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v5
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v6
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v3
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
if-eqz v1, :cond_e9
invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_e9
sub-float v9, p1, v6
sub-float v10, v3, v6
div-float v2, v9, v10
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
if-nez v9, :cond_f9
sub-float v9, v5, v8
mul-float/2addr v9, v2
add-float/2addr v9, v8
goto/16 :goto_44
:cond_f9
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v10
invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v11
invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Number;
invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F
move-result v9
goto/16 :goto_44
:cond_10f
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
const/4 v0, 0x1
:goto_118
iget v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mNumKeyframes:I
if-lt v0, v9, :cond_134
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
iget v10, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mNumKeyframes:I
add-int/lit8 v10, v10, -0x1
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/nineoldandroids/animation/Keyframe;
invoke-virtual {v9}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Number;
invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F
move-result v9
goto/16 :goto_44
:cond_134
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/ArrayList;
invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v9
cmpg-float v9, p1, v9
if-gez v9, :cond_187
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;
move-result-object v1
if-eqz v1, :cond_14e
invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result p1
:cond_14e
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v9
sub-float v9, p1, v9
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v10
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F
move-result v11
sub-float/2addr v10, v11
div-float v2, v9, v10
invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v8
invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F
move-result v5
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
if-nez v9, :cond_171
sub-float v9, v5, v8
mul-float/2addr v9, v2
add-float/2addr v9, v8
goto/16 :goto_44
:cond_171
iget-object v9, p0, Lcom/nineoldandroids/animation/FloatKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v10
invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v11
invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Number;
invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F
move-result v9
goto/16 :goto_44
:cond_187
move-object v7, v4
add-int/lit8 v0, v0, 0x1
goto :goto_118
.end method
.method public getValue(F)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/FloatKeyframeSet;->getFloatValue(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
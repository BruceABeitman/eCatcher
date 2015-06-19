.class  Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lcom/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"
.field  mFloatAnimatedValue:F
.field  mFloatKeyframeSet:Lcom/nineoldandroids/animation/FloatKeyframeSet;
.field private mFloatProperty:Lcom/nineoldandroids/util/FloatProperty;
.method public constructor <init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/FloatKeyframeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;
iput-object p2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/nineoldandroids/animation/FloatKeyframeSet;
instance-of v0, p1, Lcom/nineoldandroids/util/FloatProperty;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
check-cast v0, Lcom/nineoldandroids/util/FloatProperty;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/nineoldandroids/util/FloatProperty;
:cond_1a
return-void
.end method
.method public varargs constructor <init>(Lcom/nineoldandroids/util/Property;[F)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V
instance-of v0, p1, Lcom/nineoldandroids/util/FloatProperty;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
check-cast v0, Lcom/nineoldandroids/util/FloatProperty;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/nineoldandroids/util/FloatProperty;
:cond_11
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/FloatKeyframeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;
iput-object p2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/nineoldandroids/animation/FloatKeyframeSet;
return-void
.end method
.method public varargs constructor <init>(Ljava/lang/String;[F)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V
return-void
.end method
.method  calculateValue(F)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/nineoldandroids/animation/FloatKeyframeSet;
invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/FloatKeyframeSet;->getFloatValue(F)F
move-result v0
iput v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F
return-void
.end method
.method public clone()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.registers 3
invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
iget-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v1, Lcom/nineoldandroids/animation/FloatKeyframeSet;
iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/nineoldandroids/animation/FloatKeyframeSet;
return-object v0
.end method
.method public bridge synthetic clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
move-result-object v0
return-object v0
.end method
.method  getAnimatedValue()Ljava/lang/Object;
.registers 2
iget v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
.method  setAnimatedValue(Ljava/lang/Object;)V
.registers 6
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/nineoldandroids/util/FloatProperty;
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lcom/nineoldandroids/util/FloatProperty;
iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F
invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/FloatProperty;->setValue(Ljava/lang/Object;F)V
:goto_b
:cond_b
return-void
:cond_c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_b
:cond_1c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;
if-eqz v1, :cond_b
:try_start_20
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F
invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v3
aput-object v3, v1, v2
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;
iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;
invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_32
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_32} :catch_33
.catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_32} :catch_3f
goto :goto_b
:catch_33
move-exception v0
const-string/jumbo v1, "PropertyValuesHolder"
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
:catch_3f
move-exception v0
const-string/jumbo v1, "PropertyValuesHolder"
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
.end method
.method public varargs setFloatValues([F)V
.registers 3
invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lcom/nineoldandroids/animation/FloatKeyframeSet;
return-void
.end method
.method  setupSetter(Ljava/lang/Class;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V
goto :goto_4
.end method
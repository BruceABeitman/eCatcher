.class  Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Lcom/nineoldandroids/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"
.field  mIntAnimatedValue:I
.field  mIntKeyframeSet:Lcom/nineoldandroids/animation/IntKeyframeSet;
.field private mIntProperty:Lcom/nineoldandroids/util/IntProperty;
.method public constructor <init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/IntKeyframeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;
iput-object p2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v0, Lcom/nineoldandroids/animation/IntKeyframeSet;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/nineoldandroids/animation/IntKeyframeSet;
instance-of v0, p1, Lcom/nineoldandroids/util/IntProperty;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
check-cast v0, Lcom/nineoldandroids/util/IntProperty;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/nineoldandroids/util/IntProperty;
:cond_1a
return-void
.end method
.method public varargs constructor <init>(Lcom/nineoldandroids/util/Property;[I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V
instance-of v0, p1, Lcom/nineoldandroids/util/IntProperty;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
check-cast v0, Lcom/nineoldandroids/util/IntProperty;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/nineoldandroids/util/IntProperty;
:cond_11
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/IntKeyframeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;
iput-object p2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v0, Lcom/nineoldandroids/animation/IntKeyframeSet;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/nineoldandroids/animation/IntKeyframeSet;
return-void
.end method
.method public varargs constructor <init>(Ljava/lang/String;[I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V
return-void
.end method
.method  calculateValue(F)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/nineoldandroids/animation/IntKeyframeSet;
invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/IntKeyframeSet;->getIntValue(F)I
move-result v0
iput v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I
return-void
.end method
.method public clone()Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.registers 3
invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
move-result-object v0
check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
iget-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v1, Lcom/nineoldandroids/animation/IntKeyframeSet;
iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/nineoldandroids/animation/IntKeyframeSet;
return-object v0
.end method
.method public bridge synthetic clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
.registers 2
invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
move-result-object v0
return-object v0
.end method
.method  getAnimatedValue()Ljava/lang/Object;
.registers 2
iget v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method  setAnimatedValue(Ljava/lang/Object;)V
.registers 6
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/nineoldandroids/util/IntProperty;
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Lcom/nineoldandroids/util/IntProperty;
iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I
invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/IntProperty;->setValue(Ljava/lang/Object;I)V
:goto_b
:cond_b
return-void
:cond_c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
iget v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_b
:cond_1c
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;
if-eqz v1, :cond_b
:try_start_20
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;
iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;
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
.method public varargs setIntValues([I)V
.registers 3
invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;
check-cast v0, Lcom/nineoldandroids/animation/IntKeyframeSet;
iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Lcom/nineoldandroids/animation/IntKeyframeSet;
return-void
.end method
.method  setupSetter(Ljava/lang/Class;)V
.registers 3
iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V
goto :goto_4
.end method
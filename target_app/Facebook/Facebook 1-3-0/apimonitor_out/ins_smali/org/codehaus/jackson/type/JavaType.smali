.class public abstract Lorg/codehaus/jackson/type/JavaType;
.super Ljava/lang/Object;
.field protected final _class:Ljava/lang/Class;
.field protected _hashCode:I
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
iput v0, p0, Lorg/codehaus/jackson/type/JavaType;->_hashCode:I
return-void
.end method
.method protected _assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
.registers 6
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_35
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not assignable to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_35
return-void
.end method
.method protected abstract _narrow(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
.end method
.method protected _widen(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
move-result-object v0
return-object v0
.end method
.method public abstract equals(Ljava/lang/Object;)Z
.end method
.method public findVariableType(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final getRawClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public final hasRawClass(Ljava/lang/Class;)Z
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
if-ne v0, p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/type/JavaType;->_hashCode:I
return v0
.end method
.method public final isAbstract()Z
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
move-result v0
return v0
.end method
.method public final isArrayType()Z
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z
move-result v0
return v0
.end method
.method public abstract isContainerType()Z
.end method
.method public final isEnumType()Z
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z
move-result v0
return v0
.end method
.method public abstract isFullyTyped()Z
.end method
.method public final isInterface()Z
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z
move-result v0
return v0
.end method
.method public final isPrimitive()Z
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
move-result v0
return v0
.end method
.method public final narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
if-ne p1, v0, :cond_6
move-object v0, p0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/type/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->_narrow(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
move-result-object v0
goto :goto_5
.end method
.method public abstract narrowContentsBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
.end method
.method public abstract toString()Ljava/lang/String;
.end method
.method public final widenBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
if-ne p1, v0, :cond_6
move-object v0, p0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/type/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/type/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/type/JavaType;->_widen(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
move-result-object v0
goto :goto_5
.end method
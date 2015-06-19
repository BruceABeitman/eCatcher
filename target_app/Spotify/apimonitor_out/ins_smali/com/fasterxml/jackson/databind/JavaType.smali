.class public abstract Lcom/fasterxml/jackson/databind/JavaType;
.super Lcom/fasterxml/jackson/core/type/ResolvedType;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x49db2d595c634a16L
.field protected final _class:Ljava/lang/Class;
.field protected final _hashCode:I
.field protected final _typeHandler:Ljava/lang/Object;
.field protected final _valueHandler:Ljava/lang/Object;
.method protected constructor <init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V
.registers 6
invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/ResolvedType;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
add-int/2addr v0, p2
iput v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_hashCode:I
iput-object p3, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;
return-void
.end method
.method protected _assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_31
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not assignable to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
return-void
.end method
.method protected abstract _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method protected _widen(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->_narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public containedTypeCount()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public containedTypeName(I)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public abstract equals(Ljava/lang/Object;)Z
.end method
.method public forcedNarrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->_narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v2
if-eq v1, v2, :cond_17
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_17
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v2
if-eq v1, v2, :cond_25
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_25
move-object p0, v0
goto :goto_4
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getRawClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public getTypeHandler()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;
return-object v0
.end method
.method public getValueHandler()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;
return-object v0
.end method
.method public hasGenericTypes()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I
move-result v0
if-lez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_hashCode:I
return v0
.end method
.method public isAbstract()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
move-result v0
return v0
.end method
.method public isArrayType()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isCollectionLikeType()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isConcrete()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I
move-result v1
and-int/lit16 v1, v1, 0x600
if-nez v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z
move-result v1
if-nez v1, :cond_b
const/4 v0, 0x0
goto :goto_b
.end method
.method public abstract isContainerType()Z
.end method
.method public final isEnumType()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z
move-result v0
return v0
.end method
.method public final isFinal()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z
move-result v0
return v0
.end method
.method public final isInterface()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z
move-result v0
return v0
.end method
.method public isMapLikeType()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isPrimitive()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
move-result v0
return v0
.end method
.method public isThrowable()Z
.registers 3
const-class v0, Ljava/lang/Throwable;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
return v0
.end method
.method public narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->_narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v2
if-eq v1, v2, :cond_1c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_1c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v2
if-eq v1, v2, :cond_2a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_2a
move-object p0, v0
goto :goto_4
.end method
.method public abstract narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method public abstract toString()Ljava/lang/String;
.end method
.method public widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->_assertSubclass(Ljava/lang/Class;Ljava/lang/Class;)V
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->_widen(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p0
goto :goto_4
.end method
.method public abstract widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method public abstract withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method public abstract withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method public abstract withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method public abstract withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.end method
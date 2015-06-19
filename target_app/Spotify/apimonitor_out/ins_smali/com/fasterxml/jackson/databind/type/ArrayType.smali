.class public final Lcom/fasterxml/jackson/databind/type/ArrayType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x5f4b2a84e7a10df9L
.field protected final _componentType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _emptyArray:Ljava/lang/Object;
.method private constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 7
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I
move-result v1
invoke-direct {p0, v0, v1, p3, p4}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;
return-void
.end method
.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
.registers 6
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
new-instance v1, Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-direct {v1, p0, v0, v2, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v1
.end method
.method protected final _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z
move-result v0
if-nez v0, :cond_2d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Incompatible narrowing operation: trying to narrow "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " to class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object v0
return-object v0
.end method
.method protected final buildCanonicalName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
if-nez p1, :cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
:goto_4
return-object v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method public final containedTypeCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final containedTypeName(I)Ljava/lang/String;
.registers 3
if-nez p1, :cond_5
const-string v0, "E"
:goto_4
return-object v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-ne p1, p0, :cond_5
const/4 v0, 0x1
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
if-ne v1, v2, :cond_4
check-cast p1, Lcom/fasterxml/jackson/databind/type/ArrayType;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public final hasGenericTypes()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z
move-result v0
return v0
.end method
.method public final isAbstract()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isArrayType()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isConcrete()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isContainerType()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object p0
goto :goto_8
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[array type, component type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object p0
goto :goto_8
.end method
.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object v0
return-object v0
.end method
.method public final withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_8
.end method
.method public final bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object v0
return-object v0
.end method
.method public final withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_8
.end method
.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object v0
return-object v0
.end method
.method public final withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_4
.end method
.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
move-result-object v0
return-object v0
.end method
.method public final withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;
invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_4
.end method
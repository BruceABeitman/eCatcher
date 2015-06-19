.class public Lcom/fasterxml/jackson/databind/type/MapLikeType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "SourceFile"
.field private static final serialVersionUID:J = -0x41831362d828d399L
.field protected final _keyType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 8
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I
move-result v0
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I
move-result v1
xor-int/2addr v0, v1
invoke-direct {p0, p1, v0, p4, p5}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
.method protected buildCanonicalName()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v1, :cond_33
const/16 v1, 0x3c
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v1, 0x2c
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v1, 0x3e
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_33
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
if-nez p1, :cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
:goto_4
return-object v0
:cond_5
const/4 v0, 0x1
if-ne p1, v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
goto :goto_4
:cond_b
const/4 v0, 0x0
goto :goto_4
.end method
.method public containedTypeCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public containedTypeName(I)Ljava/lang/String;
.registers 3
if-nez p1, :cond_5
const-string v0, "K"
:goto_4
return-object v0
:cond_5
const/4 v0, 0x1
if-ne p1, v0, :cond_b
const-string v0, "V"
goto :goto_4
:cond_b
const/4 v0, 0x0
goto :goto_4
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v3, p1, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
if-ne v2, v3, :cond_31
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p1, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_31
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p1, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_31
move v0, v1
goto :goto_4
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public isContainerType()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isMapLikeType()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isTrueMapType()Z
.registers 3
const-class v0, Ljava/util/Map;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
return v0
.end method
.method public narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_8
.end method
.method public narrowKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_8
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[map-like type; class "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " -> "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_8
.end method
.method public widenKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v0
goto :goto_8
.end method
.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object v0
return-object v0
.end method
.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object v0
return-object v0
.end method
.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
.method public withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object v0
return-object v0
.end method
.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueHandler:Ljava/lang/Object;
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object v0
return-object v0
.end method
.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_typeHandler:Ljava/lang/Object;
move-object v4, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
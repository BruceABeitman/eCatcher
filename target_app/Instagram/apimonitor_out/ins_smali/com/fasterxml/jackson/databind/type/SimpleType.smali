.class public final Lcom/fasterxml/jackson/databind/type/SimpleType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "SimpleType.java"
.field private static final serialVersionUID:J = -0xb1b80aa96a43468L
.field protected final _typeNames:[Ljava/lang/String;
.field protected final _typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 9
const/4 v2, 0x0
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
.registers 14
const/4 v6, 0x0
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, p4
move-object v4, p5
move v5, p6
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V
if-eqz p2, :cond_f
array-length v0, p2
if-nez v0, :cond_14
:cond_f
iput-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
iput-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
:goto_13
return-void
:cond_14
iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
goto :goto_13
.end method
.method public static construct(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
.registers 4
const-class v0, Ljava/util/Map;
invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_27
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not construct SimpleType for a Map (class: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
const-class v0, Ljava/util/Collection;
invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_4e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not construct SimpleType for a Collection (class: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4e
invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-eqz v0, :cond_73
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not construct SimpleType for an array (class: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V
return-object v0
.end method
.method public static constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
.registers 8
const/4 v2, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
const/4 v6, 0x0
move-object v1, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method protected final _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 9
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z
move-object v1, p1
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method protected final buildCanonicalName()Ljava/lang/String;
.registers 9
const/4 v1, 0x0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
array-length v0, v0
if-lez v0, :cond_3e
const/16 v0, 0x3c
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x1
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
array-length v5, v4
move v2, v1
:goto_22
if-ge v2, v5, :cond_39
aget-object v6, v4, v2
if-eqz v0, :cond_33
move v0, v1
:goto_29
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_22
:cond_33
const/16 v7, 0x2c
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_29
:cond_39
const/16 v0, 0x3e
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_3e
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic containedType(I)Lcom/fasterxml/jackson/a/f/a;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public final containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
if-ltz p1, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
array-length v0, v0
if-lt p1, v0, :cond_d
:cond_b
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
aget-object v0, v0, p1
goto :goto_c
.end method
.method public final containedTypeCount()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
array-length v0, v0
goto :goto_5
.end method
.method public final containedTypeName(I)Ljava/lang/String;
.registers 3
if-ltz p1, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
array-length v0, v0
if-lt p1, v0, :cond_d
:cond_b
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
aget-object v0, v0, p1
goto :goto_c
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 10
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
check-cast p1, Lcom/fasterxml/jackson/databind/type/SimpleType;
iget-object v2, p1, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p1, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
if-nez v3, :cond_2c
if-eqz v4, :cond_4
array-length v2, v4
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_2c
if-nez v4, :cond_30
move v0, v1
goto :goto_4
:cond_30
array-length v2, v3
array-length v5, v4
if-eq v2, v5, :cond_36
move v0, v1
goto :goto_4
:cond_36
array-length v5, v3
move v2, v1
:goto_38
if-ge v2, v5, :cond_4
aget-object v6, v3, v2
aget-object v7, v4, v2
invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_46
move v0, v1
goto :goto_4
:cond_46
add-int/lit8 v2, v2, 0x1
goto :goto_38
.end method
.method public final getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
const/4 v1, 0x1
invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
move-result-object v0
return-object v0
.end method
.method public final getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
invoke-static {v1, p1, v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v1, :cond_22
const/16 v1, 0x3c
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
array-length v2, v1
:goto_12
if-ge v0, v2, :cond_1d
aget-object v3, v1, v0
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
move-result-object p1
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_1d
const/16 v0, 0x3e
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_22
const/16 v0, 0x3b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-object p1
.end method
.method public final isContainerType()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Internal error: SimpleType.narrowContentsBy() should never be called"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x28
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "[simple type, class "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->buildCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x5d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Internal error: SimpleType.widenContentsBy() should never be called"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Simple types have no content types; can not call withContenTypeHandler()"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
move-result-object v0
return-object v0
.end method
.method public final withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
.registers 4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Simple types have no content types; can not call withContenValueHandler()"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;
move-result-object v0
return-object v0
.end method
.method public final withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;
.registers 8
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z
if-eqz v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
move-object p0, v0
goto :goto_4
.end method
.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
move-result-object v0
return-object v0
.end method
.method public final withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
.registers 9
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z
move-object v5, p1
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
return-object v0
.end method
.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
move-result-object v0
return-object v0
.end method
.method public final withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z
move-object v4, p1
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
move-object p0, v0
goto :goto_4
.end method